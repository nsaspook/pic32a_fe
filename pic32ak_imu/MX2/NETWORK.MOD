
(*              Copyright 1987 fred brooks LogicTek             *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(*                                                              *)

IMPLEMENTATION MODULE NETWORK ;

(* --------------------------------------------------------------------------

               NETWORK : MIDI PORT TWO CPU NETWORK FOR TDI Modula-2/ST

   --------------------------------------------------------------------------*)

(*$T-,$S-,$A+ *)

FROM SYSTEM IMPORT ADDRESS, ADR, SETREG, CODE, REGISTER ,BYTE ,TSIZE;
FROM BIOS   IMPORT BPB ,BConStat ,BConIn, BCosStat, BConOut, Device,
                   MediaChange,MCState,GetBPB,RWAbs,RW,DriveSet,DriveMap;
FROM XBIOS  IMPORT SuperExec,IORec,IORECPTR,IOREC,SerialDevice;
FROM GEMDOS IMPORT TermRes,Open,Close ;
IMPORT             GEMDOS;
FROM ASCII  IMPORT SYN,STX,SOH,BEL;

CONST
  MaxSeq          = 1;
  recsize         = 511;
  USER            = 324159265;
  retry           = 10;
  debug           = FALSE;
  trace           = FALSE;

  (* Because we dont know what registers the BIOS is using we must use
     the following opcodes to save the registers *)
  MOVEMDEC = 48E7H ;    (* 68000 opcode for MOVEM <regs>,-(A7) *)
  MOVEMINC = 4CDFH ;    (* 68000 opcode for MOVEM (A7)+,<regs> *)
  SAVEREGS = 07FFCH ;   (* Registers D1..A5 for DEC *)
  RESTREGS = 03FFEH ;   (* Registers D1..A5 for INC *)
  RTS = 04E75H ;        (* 68000 return from subroutine opcode *)

TYPE
  (* Procedure types to mimic correct sequence for "C" BIOS routines *)

  CBPBProc     = PROCEDURE ( CARDINAL ) ;
  CMediaChProc = PROCEDURE ( CARDINAL ) ;
  CRWAbsProc   = PROCEDURE ( CARDINAL, CARDINAL, CARDINAL, ADDRESS, CARDINAL );
  MIDIbuffer   = ARRAY [0..512] OF CARDINAL;
  SequenceNr   = [0..MaxSeq];
  message      = ARRAY [0..recsize] OF BYTE;
  message1     = ARRAY [0..17] OF BYTE;
  FrameKind    = (ack,data,callreq,callaccp,clearreq,clearconf,
                 resetreq,resetconf,diag);
  DataKind     = (rdmediareq,rdmediaconf,rdbpbreq,rdbpbconf,
                 rdrwabsreq,rdrwabsconf);
  evtype       = (framearrival,cksumerr,timeout,hostready,reset,nothing);

  frame        = RECORD
                 syn    :       CHAR; (* these are sync chars *)
                 stx    :       CHAR; (* for the frames       *)
                 kind   :       FrameKind;
                 seq    :       SequenceNr;
                 ack    :       SequenceNr;
                 cmd    :       DataKind;
                 rw     :       CARDINAL; (* read or write data *)
                 recno  :       CARDINAL; (* sector for data*)
                 d0     :       LONGCARD; (* data return variable *)
                 info   :       message;
                 user   :       LONGCARD;
                 cksum  :       CARDINAL;
               END;

  framecptr    = POINTER TO framecmd;
  framecmd     = RECORD
                 syn    :       CHAR; (* these are sync chars *)
                 stx    :       CHAR; (* for the frames       *)
                 kind   :       FrameKind;
                 seq    :       SequenceNr;
                 ack    :       SequenceNr;
                 cmd    :       DataKind;
                 rw     :       CARDINAL; (* read or write data *)
                 recno  :       CARDINAL; (* sector for data*)
                 d0     :       LONGCARD; (* data return variable *)
                 info   :       message1;
                 user   :       LONGCARD;
                 cksum  :       CARDINAL;
               END;

  control     = RECORD
                 magic          :       LONGCARD;
                 reset          :       BOOLEAN;
                 networkactive  :       BOOLEAN;
                 remotedrive    :       CARDINAL;
                 drivemap       :       DriveSet;
                nextframetosend :      SequenceNr;
                frameexpected   :      SequenceNr;
                sendreset       :      BOOLEAN;
               END;

  consave     = RECORD
                 magic          :       LONGCARD;
                 reset          :       BOOLEAN;
                 networkactive  :       BOOLEAN;
                END;

  frameptr      =       POINTER TO ARRAY [0..1024] OF BYTE;

VAR


  (* BIOS variables : These can only be accessed with the 68000 in supervisor
     mode. The Modula-2 language allows you to fix the location of variables *)

  HDBPB     [0472H] : ADDRESS ;       (* hard disk get Bios Parameter Block *)
  HDRWAbs   [0476H] : ADDRESS ;       (* hard disk read/write abs   *)
  HDMediaCh [047EH] : ADDRESS ;       (* hard disk media change     *)
  DriveBits [04C2H] : SET OF [0..31]; (* disk drives present map    *)
  flock     [043EH] : LONGCARD;       (* disk access in progress    *)
  hz200     [04baH] : LONGCARD;       (* 200hz clock counter        *)
  clock             : LONGCARD;
  Dptr              : DriveSet;       (* save original drive map    *)
  Mptr              : LONGCARD;
  charcount,j,framesize,cksum,recframesize,sndframesize,
  SIZEframe,SIZEframecmd                                : CARDINAL;

  networkconnect          :   BOOLEAN; (* DCD = 1 TRUE  *)
  gotframe                :   BOOLEAN;
  framebufferfull         :   BOOLEAN;
  cleartosend             :   BOOLEAN;
  readytosend             :   BOOLEAN;
  requesttosend           :   BOOLEAN;
  framewaiting            :   BOOLEAN;
  timer,OK,installed      :   BOOLEAN;
  gotmediach              :   ARRAY [0..5] OF BOOLEAN;
  gotbpb                  :   ARRAY [0..5] OF BOOLEAN;
  networkerror            :   BOOLEAN;
  shortframe              :   BOOLEAN;
  sendlong                :   BOOLEAN;

  sframe,rframe,SFRAME,RFRAME,
  nframe1,nframe2                  :   frame;
  rframeptr,sframeptr,
  bpbptr,nbpbptr                   :   frameptr;
  framecmdptr,framecmdptr1         :   framecptr;
  event                            :   evtype;
  C                                :   control;
  recchar,timestart,timefortimeout,timeouttime :   LONGCARD;
  timestart1,timefortimeout1,timeouttime1      :   LONGCARD;
  result,r,i,i1,i2,i3,mediacount,handle        :   INTEGER;
  D0ptr                                        :   POINTER TO LONGCARD;
  wsector,drvnr,DriveA,DriveF,devicestart,d,R  :   CARDINAL;
  rbuffer                                      :   MIDIbuffer;
  rbptr                                        :   IORECPTR;
  numBytes,sec,min,hour,time,count             :   LONGCARD ;
  status                                       :   LONGINT ;

  (* The following are saved copies of the BIOS variables so that the real
     hard disk routines can be called if a hard disk access is requested. *)

  SaveHDBPB      : CBPBProc ;     (* hard disk get Bios Parameter Block *)
  SaveHDRWAbs    : CRWAbsProc ;   (* hard disk read/write abs *)
  SaveHDMediaCh  : CMediaChProc ; (* hard disk media change *)

  (* NETWORK control *)

  NetworkBPB  : ARRAY [0..5] OF BPB ; (* BIOS Parameter block for NETWORK *)

PROCEDURE MoveMemory ( From, To : ADDRESS ; Bytes : LONGCARD ) ;
(* This routine shows how time critical portions of code can be optimised to
   run faster. It relys on the code generation rules of the compiler which 
   can be checked by dis-assembling the link file with DecLnk.*)

CONST
  MOVEB = 12D8H ;       (*      MOVE.B  (A0)+,(A1)+     *)
  MOVEL = 22D8H ;       (*      MOVE.L  (A0)+,(A1)+     *)
  A0    = 0+8 ;         (* register A0 *)
  A1    = 1+8 ;         (* register A1 *)

BEGIN
  SETREG(A0,From) ;             (* load From pointer into A0 *)
  SETREG(A1,To) ;               (* load To pointer into A1 *)
  
  IF ( ODD(From) OR ODD(To) ) THEN      (* must do bytes *)
    WHILE ( Bytes <> 0 ) DO
      CODE(MOVEB) ;
      DEC(Bytes) ;
    END ;
  ELSE (* even addresses so can do long moves *)
    WHILE ( Bytes > 3 ) DO
      CODE(MOVEL) ;
      DEC(Bytes,4) ;
    END ;
    WHILE ( Bytes <> 0 ) DO
      CODE(MOVEB) ;             (* clean up remainder *)
      DEC(Bytes) ;
    END ;
  END ;
END MoveMemory ;


PROCEDURE inc(VAR k: SequenceNr);   (* increment k circulary *)
BEGIN
        IF k<MaxSeq THEN k:=k+1 ELSE k:=0 END;
END     inc;


(* The following procedures mimic the disk handling routines called by the
   BIOS. Their procedure declarations have been written to mimic the "C"
   calling sequence. *)

PROCEDURE RDRWAbs ( device, RecordNum, SectorCount : CARDINAL ;
                    Buffer : ADDRESS ; Flag : CARDINAL ) ;
(* NB. It is assumed that GEMDOS wont call this routine with out of range
   parameters *)
CONST D0 = 0 ;
BEGIN
  CODE(MOVEMDEC,SAVEREGS) ;     (* save registers on stack *)
  status := 0;
  IF (device >= DriveA) AND (device <=DriveF) THEN (* is NETWORK channel *)
    IF ( Flag = 0 ) OR ( Flag = 2 ) (* read *)  THEN
       FOR wsector:=0 TO (SectorCount-1) DO
           C.remotedrive:=device-devicestart; 
           nframe1.d0:=LONGCARD(device-devicestart);
           nframe1.recno:=RecordNum+wsector;
           nframe1.rw:=Flag; (* read *)
           resetnewdisk;
           IF getfromremote(rdrwabsreq,rdrwabsconf,nframe1) THEN
              MoveMemory(ADR(nframe1.info),Buffer+ADDRESS(wsector)*512,
                         512);
              status:=0;
           ELSE
              status:=(-11);
           END; (* if *)
       END; (* for *)
    IF networkerror THEN C.sendreset:=TRUE END; (* send network reset to remote cpu *)
      SETREG(D0,status) ;
    ELSIF ( Flag = 1 ) OR ( Flag = 3 ) THEN (* write *)
       FOR wsector:=0 TO (SectorCount-1) DO
           C.remotedrive:=device-devicestart; 
           nframe1.d0:=LONGCARD(device-devicestart);
           nframe1.recno:=RecordNum+wsector;
           nframe1.rw:=Flag; (* write *)
           resetnewdisk;
           MoveMemory(Buffer+ADDRESS(wsector)*512,ADR(nframe1.info),512);
           IF getfromremote(rdrwabsreq,rdrwabsconf,nframe1) THEN
              status:=0;
           ELSE
              status:=(-10);
           END;
       END; (* for *)
    IF networkerror THEN C.sendreset:=TRUE END; (* send network reset to remote cpu *)
      SETREG(D0,status) ;
    ELSE
      SETREG(D0,LONGINT(-3)) ;
    END ;
  ELSE (* not NETWORK *)
    SaveHDRWAbs (device,RecordNum,SectorCount,Buffer,Flag) ;
  END ;
  CODE(MOVEMINC,RESTREGS) ;     (* Restore registers from stack *)
END RDRWAbs ;

PROCEDURE RDMediaCh ( device : CARDINAL ) ;
CONST D0 = 0 ;
BEGIN
  CODE(MOVEMDEC,SAVEREGS) ;     (* save registers on stack *)
  IF (device >= DriveA) AND (device <=DriveF) THEN (* is NETWORK channel *)
    C.remotedrive:=device-devicestart; 
    nframe1.d0:=LONGCARD(device-devicestart);
    IF newdisk() THEN
       gotmediach[device-devicestart]:=FALSE;
       gotbpb[device-devicestart]:=FALSE;
    END;
    IF (NOT gotmediach[device-devicestart]) THEN
     IF getfromremote(rdmediareq,rdmediaconf,nframe1) THEN 
        gotmediach[device-devicestart]:=TRUE;
        IF nframe1.d0=1 THEN nframe1.d0:=2 END;
        SETREG(D0,nframe1.d0) ;    (* "C" uses D0 as return location *)
     ELSE
        SETREG(D0,Changed);
     END;
    ELSE
       SETREG(D0,NoChange) ;    (* "C" uses D0 as return location *)
    END; 
  ELSE (* not NETWORK *)
    SaveHDMediaCh(device) ;
  END;
  CODE(MOVEMINC,RESTREGS) ;     (* Restore registers from stack *)
END RDMediaCh ;

PROCEDURE RDBPB ( device : CARDINAL ) ;
CONST D0 = 0 ;
BEGIN
  CODE(MOVEMDEC,SAVEREGS) ;     (* save registers on stack *)
  IF (device >= DriveA) AND (device <=DriveF) THEN (* is NETWORK channel *)
    C.remotedrive:=device-devicestart; 
    nframe1.d0:=LONGCARD(device-devicestart);
    IF newdisk() THEN gotbpb[device-devicestart]:=FALSE; gotmediach[device-devicestart]:=FALSE END;
(*       gotbpb[device-devicestart]:=FALSE;   (* test *) *)
    IF (NOT gotbpb[device-devicestart]) THEN
     IF getfromremote(rdbpbreq,rdbpbconf,nframe1) THEN 
       gotbpb[device-devicestart]:=TRUE;
       bpbptr:=ADR(nframe1.info);
       nbpbptr:=ADR(NetworkBPB[device-devicestart]);
       FOR i3:=0 TO TSIZE(BPB)-1 DO
           nbpbptr^[i3]:=bpbptr^[i3];    
       END;
       resetnewdisk;
       SETREG(D0,ADR(NetworkBPB[device-devicestart])); (* D0 returns address of the BPB *)
     ELSE
       SETREG(D0,0);
     END;
    ELSE
       SETREG(D0,ADR(NetworkBPB[device-devicestart])); (* D0 returns address of the BPB *)
    END; 
    IF networkerror THEN C.sendreset:=TRUE END; (* send network reset to remote cpu *)
  ELSE (* not NETWORK *)
    SaveHDBPB(device) ;
  END ;
  CODE(MOVEMINC,RESTREGS) ;     (* Restore registers from stack *)
END RDBPB ;
    
PROCEDURE resetnewdisk;
BEGIN
        SuperExec(gettime);
        timestart1:=clock;
        timefortimeout1:=timestart1;
        IncTime(timefortimeout1,2);
END     resetnewdisk;

PROCEDURE newdisk(): BOOLEAN;
BEGIN
        SuperExec(gettime);
        timeouttime1:=clock;
        SETREG(0,timeouttime1);
        CODE(0280H,0,0FFFFH);
        timeouttime1:=LONGCARD(REGISTER(0));
        IF timeouttime1>timefortimeout1 THEN
           resetnewdisk;
           RETURN TRUE;
        END;
        RETURN FALSE;
END     newdisk;

(* ----------------------------------------------------------------------- *)

PROCEDURE Initialise (port: Device) : BOOLEAN ;
(* returns TRUE if NETWORK is to be installed *)
BEGIN
  CODE(3f3cH,0017H,4e4eH,548fH);           (* gettime *)
  CODE(2f00H,3f3cH,0016H,4e4eH,5c8fH);     (* settime *)
  IF NOT installed THEN
    SuperExec(PROC(setcontrol));  (* set address of global control record *)
  END;
  IF port=HSS THEN
    rbptr:=IORec(MIDI);
  ELSE
    rbptr:=IORec(RS232);
  END;
  rbptr^.ibuf:=ADR(rbuffer);
  rbptr^.ibufsize:=1024;
  C.magic:=USER;
  C.remotedrive:=0;
  framesize:=TSIZE(frame);
  recframesize:=framesize;
  sndframesize:=framesize;
  sframe.user:=USER;
  R:=0;
  RETURN TRUE;
END Initialise ;

(*$P- *) (* set vector to control record *)
PROCEDURE setcontrol;
BEGIN
        IF Mptr#USER THEN
           C.drivemap:=DriveMap();
           Dptr:=C.drivemap;
        END;
        C.drivemap:=Dptr;
        Mptr:=USER;
        CODE(RTS);
END     setcontrol;

PROCEDURE nrecframe; 
BEGIN
        IF C.networkactive THEN
           WHILE (BConStat(netdevice)) AND (NOT framebufferfull) DO
                 recchar := BConIn(netdevice);
                 IF (CHAR(recchar)=SYN) AND (NOT gotframe) THEN
                    gotframe:=TRUE; (* got sync char from data *)
                    charcount:=0;
                 END;
                 IF (charcount=1) AND ((CHAR(recchar)#STX) AND (CHAR(recchar)#SOH)) THEN
                    gotframe:=FALSE; (* false start try again *)
                    charcount:=0;
                 END;
                 IF (charcount=1) AND (CHAR(recchar)=STX) THEN
                    recframesize:=SIZEframe;
                 END;
                 IF (charcount=1) AND (CHAR(recchar)=SOH) THEN
                    recframesize:=SIZEframecmd;
                 END;
                 IF gotframe THEN                  (* put data in buffer *)
                    rframeptr^[charcount]:=BYTE(recchar);
                    INC(charcount);
                    IF charcount=recframesize THEN (* got full frame *)
                       gotframe := FALSE;
        IF trace THEN BConOut(CON,"^") END;
                       IF recframesize=SIZEframecmd THEN
                          rframe.user:=framecmdptr^.user;
                          rframe.cksum:=framecmdptr^.cksum;
                       END;
                       framebufferfull := TRUE;
                    END;
                 END;
           END; (* WHILE *)
        END;
END     nrecframe;

(* The following compiler directive stops the compiler from generating the
   normal Modula-2 entry/exit code for the next procedure. This is needed as
   this routine is called in supervisor mode by the BIOS function to install
   the BIOS vectors. *)
(*$P- Stop entry/exit code for next procedure *)
PROCEDURE InstallVectors ;
BEGIN
  (* First save the current hard disk vectors *)
  SaveHDBPB := CBPBProc(HDBPB) ;
  SaveHDRWAbs := CRWAbsProc(HDRWAbs) ;
  SaveHDMediaCh := CMediaChProc(HDMediaCh) ;
  (* Now set the BIOS vectors to our routines *)
  HDBPB := ADDRESS(RDBPB) ;
  HDRWAbs := ADDRESS(RDRWAbs) ;
  HDMediaCh := ADDRESS(RDMediaCh) ;
  drvnr:=2;
  WHILE drvnr IN DriveBits DO
        INC(drvnr);
  END; (* while *)
  INC(drvnr);
  devicestart:=drvnr;
  DriveA:=drvnr;
  DriveF:=drvnr+5;
  INCL(DriveBits,drvnr) ;             (* set new drive A *)
  INCL(DriveBits,drvnr+1) ;           (* set new drive B *)
  INCL(DriveBits,drvnr+2) ;           (* set new drive C *)
  INCL(DriveBits,drvnr+3) ;           (* set new drive D *)
  INCL(DriveBits,drvnr+4) ;           (* set new drive E *)
  INCL(DriveBits,drvnr+5) ;           (* set new drive F *)
  networkconnect := FALSE;
  gotframe := FALSE;
  framebufferfull := FALSE;
  charcount:=0;
  SIZEframe:=TSIZE(frame);
  SIZEframecmd:=TSIZE(framecmd);

  rframeptr := ADR(rframe);
  framecmdptr:=ADR(rframe);
  sframeptr := ADR(sframe);
  CODE(RTS) ;                (* code to return to calling BIOS function *)
END InstallVectors ;

PROCEDURE waitcts(what: BOOLEAN); (* wait for cleartosend state *)
BEGIN
        IF what THEN
           REPEAT
           nrecframe;
           Nwait(event);
           HandleEvents(); 
           IF R>retry THEN
              networkerror:=TRUE;
              RETURN; (* trouble *)
           END;
           UNTIL cleartosend;
           RETURN;
        ELSE
           LOOP
           nrecframe;
           Nwait(event);
           IF (NOT cleartosend) THEN EXIT END;
           HandleEvents();
           IF R>retry THEN
              networkerror:=TRUE;
              RETURN; (* trouble *)
           END;
           END; (* loop *)
        IF trace THEN BConOut(CON,"N") END;
           HandleEvents(); 
        END;
END     waitcts;

(* request for data from remote hosts disk drives and system *)
(* what wanted in command, the correct reply in reply, data in f *)
PROCEDURE getfromremote(command, reply: DataKind; VAR f: frame): BOOLEAN;
BEGIN
        IF (NOT C.networkactive) THEN RETURN FALSE END; (* error *)
        networkerror:=FALSE;
        R:=0;
        StartTimer;
        IF trace THEN BConOut(CON,"A") END;
        f.kind:=data;
        f.cmd:=command;
        waitcts(TRUE);
        IF networkerror THEN RETURN FALSE END;
        IF trace THEN BConOut(CON,"B") END;
        SFRAME:=f;
        requesttosend:=TRUE;
        waitcts(FALSE); 
        IF networkerror THEN RETURN FALSE END;
        IF trace THEN BConOut(CON,"C") END;
        REPEAT  
        nrecframe;
        Nwait(event);
        HandleEvents(); 
        IF R>retry THEN networkerror:=TRUE END;
        IF networkerror THEN RETURN FALSE END;
        UNTIL framewaiting AND (RFRAME.cmd=reply);
        IF trace THEN BConOut(CON,"D") END;
        f:=RFRAME;
        f.rw:=5;
        framewaiting:=FALSE;
        sendtoremote(ack,reply,f); (* send ack for reply *)
        IF networkerror THEN RETURN FALSE END;
        IF trace THEN BConOut(CON,"Z") END;
        RETURN TRUE;
END     getfromremote;

PROCEDURE sendtoremote(type: FrameKind; command: DataKind;VAR f: frame);
BEGIN
        IF trace THEN BConOut(CON,"T") END;
        f.kind:=type;
        f.cmd:=command;
        IF debug THEN cleartosend:=TRUE END; (* so we can send in loop *)
        waitcts(TRUE);
        IF trace THEN BConOut(CON,"1") END;
        SFRAME:=f;
        requesttosend:=TRUE;
        waitcts(FALSE);
        IF trace THEN BConOut(CON,"2") END;
        IF SFRAME.kind=ack THEN cleartosend:=TRUE END;
END     sendtoremote;

PROCEDURE senddata;
BEGIN
    SFRAME.seq:=C.nextframetosend;
    SFRAME.ack:=1-C.frameexpected;
    sendf(SFRAME);
    IF (SFRAME.kind#ack) AND (SFRAME.kind#resetreq) THEN
       StartTimer; (* set timer to wait for frame ack from remote host *)
    END;
END     senddata;

(*$P+ *)
PROCEDURE sendf(VAR f: frame);
BEGIN
        sframe:=f;
        sframe.cksum:=0;
        IF ((sframe.cmd=rdrwabsconf) AND ((sframe.rw=0) OR (sframe.rw=2))) OR ((sframe.cmd=rdrwabsreq) AND ((sframe.rw=1) OR (sframe.rw=3))) THEN
           sndframesize:=SIZEframe;
           sframe.syn :=  SYN ;
           sframe.stx :=  STX ;
           sframe.user := USER ;
           shortframe:=FALSE;
        IF trace THEN BConOut(CON,":") END;
        ELSE
           sndframesize:=SIZEframecmd;
           sframe.syn := SYN ;
           sframe.stx := SOH ;
           framecmdptr1:=ADR(sframe);
           framecmdptr1^.user := USER ;
           shortframe:=TRUE;
        IF trace THEN BConOut(CON,".") END;
        END;
        FOR i1:=0 TO sndframesize-5 DO (* compute checksum *)
            sframe.cksum:=sframe.cksum+CARDINAL(sframeptr^[i1])
        END;
        IF shortframe THEN framecmdptr1^.cksum:=sframe.cksum END;
        FOR i1:=0 TO sndframesize-1 DO (* send frame *)
            REPEAT
                nrecframe;
            UNTIL BCosStat(netdevice); 
            BConOut(netdevice,CHAR(sframeptr^[i1]));
        END;
END     sendf;

(*$P- *)
PROCEDURE gettime;
BEGIN
        clock:=hz200 DIV 200;
        CODE(RTS);
END     gettime;
(*$P+ *)

PROCEDURE getf(VAR f: frame);
BEGIN
        f:=rframe;
        framebufferfull:=FALSE;
END     getf;

PROCEDURE StartTimer;
BEGIN
        SuperExec(gettime);
        timestart:=clock;  (* set to time in seconds *)
        timer:=TRUE;                      (* test *)
        timefortimeout:=timestart;
        IncTime(timefortimeout,2);
END     StartTimer;

PROCEDURE IncTime(VAR t : LONGCARD; c: CARDINAL);
BEGIN
        IF c<1 THEN RETURN END;
        t:=t+LONGCARD(c);
END     IncTime;

PROCEDURE TimeOut(): BOOLEAN;
BEGIN
        IF (NOT timer) THEN RETURN FALSE END;
        SuperExec(gettime);
        timeouttime:=clock;
        SETREG(0,timeouttime);
        CODE(0280H,0,0FFFFH);
        timeouttime:=LONGCARD(REGISTER(0));
        IF timeouttime>timefortimeout THEN
           StartTimer;
           RETURN TRUE;
        END;
        RETURN FALSE;
END     TimeOut;

PROCEDURE Nwait(VAR e: evtype);
BEGIN

         IF requesttosend AND cleartosend THEN
            e:=hostready;
            requesttosend:=FALSE;
            cleartosend:=FALSE;
            RETURN;
         END;

         IF C.sendreset THEN
            e:=reset;
         END;

         IF framebufferfull THEN
           cksum:=0;
           FOR i2:=0 TO recframesize-5 DO
              cksum:=cksum+CARDINAL(rframeptr^[i2])
           END;
           IF (cksum=rframe.cksum) THEN
              e:=framearrival;
              INC(R);
           ELSE
              e:=cksumerr;
              framebufferfull:=FALSE;
        IF trace THEN BConOut(CON,"U") END;
           END;
           RETURN;
         END;            
         nrecframe;
         IF TimeOut() THEN
            e:=timeout; 
            INC(R);
         END;     (* so sorry no frame ack *) 
END     Nwait;

PROCEDURE ToHost(VAR f: frame);
BEGIN
        IF trace THEN BConOut(CON,"H") END;
        IF f.kind=callreq THEN
           framewaiting:=FALSE;
           RETURN;
        END;
        IF f.kind=clearreq THEN
           framewaiting:=FALSE;
           RETURN;
        END;
        IF f.kind=diag THEN
           framewaiting:=FALSE;
           RETURN;
        END;
        IF f.kind=data THEN
           IF f.cmd=rdmediareq THEN
        IF trace THEN BConOut(CON,"M") END;
              framewaiting:=FALSE;
              nframe2.d0:=LONGCARD(MediaChange(CARDINAL(f.d0)));
              sendtoremote(data,rdmediaconf,nframe2);
              RETURN;
           END;
           IF f.cmd=rdbpbreq THEN
        IF trace THEN BConOut(CON,"P") END;
              framewaiting:=FALSE;
              nframe2.d0:=LONGCARD(GetBPB(CARDINAL(f.d0)));
              bpbptr:=ADDRESS(nframe2.d0);
              nbpbptr:=ADR(nframe2.info);
              FOR i:=0 TO TSIZE(BPB)-1 DO
                  nbpbptr^[i]:=bpbptr^[i];    
              END;
              sendtoremote(data,rdbpbconf,nframe2);
              RETURN;
           END;
           IF f.cmd=rdrwabsreq THEN
        IF trace THEN BConOut(CON,"W") END;
              framewaiting:=FALSE;
              nframe2.d0:=LONGCARD(RWAbs(RW(f.rw),ADR(f.info),1,f.recno,
                                   CARDINAL(f.d0)));
              IF (f.rw=0) OR (f.rw=2) THEN
                 nframe2.rw:=f.rw;
                 nframe2.info:=f.info; (* if rec get buffer to send *)
              END;
              sendtoremote(data,rdrwabsconf,nframe2);
              RETURN;
           END;
        END;
END     ToHost;

PROCEDURE HandleEvents();
BEGIN
            IF event=hostready THEN
               event:=nothing;
        IF trace THEN BConOut(CON,"S") END;
               senddata;
            END;

            IF event=reset THEN
        IF trace THEN BConOut(CON,"I") END;
               charcount:=0;
               R:=0;
               gotframe:=FALSE;
               framebufferfull:=FALSE;
               FOR d:=0 TO 5 DO
                   gotmediach[d]:=FALSE;
                   gotbpb[d]:=FALSE;
               END;
               C.nextframetosend:=0;
               C.frameexpected:=0;
               cleartosend:=TRUE;
               requesttosend:=FALSE;
               framewaiting:=FALSE;
               timer:=FALSE;
               C.sendreset:=FALSE;
               event:=nothing;
               SFRAME.kind:=resetreq;
               senddata;
            END;

            IF event=framearrival THEN
               event:=nothing;

               IF (rframe.kind=ack) OR (rframe.kind=resetreq) THEN
                  framewaiting:=FALSE
               END;
        IF trace AND (NOT framewaiting) THEN BConOut(CON,"F") END;

               IF (NOT framewaiting) THEN getf(RFRAME) END; 
               framebufferfull:=FALSE;

               IF (RFRAME.ack=C.nextframetosend) OR debug THEN
        IF trace THEN BConOut(CON,"K") END;
                  cleartosend:=TRUE;
                  StartTimer;
                  R:=0;
                  timer:=FALSE;
                  inc(C.nextframetosend);
               END;

               IF (RFRAME.seq=C.frameexpected) OR debug THEN
        IF trace THEN BConOut(CON,"E") END;
                  IF RFRAME.kind#ack THEN (* try to exec command *)
                     inc(C.frameexpected); 
                     framewaiting:=TRUE;
                     R:=0;
                     ToHost(RFRAME);
                  END;
               END;
               IF RFRAME.kind=resetreq THEN
        IF trace THEN BConOut(CON,"*") END;
                  charcount:=0;
                  gotframe:=FALSE;
                  framebufferfull:=FALSE;
                  C.nextframetosend:=0;
                  C.frameexpected:=0;
                  FOR d:=0 TO 5 DO
                      gotmediach[d]:=FALSE;
                      gotbpb[d]:=FALSE;
                  END;
                  cleartosend:=TRUE;
                  requesttosend:=FALSE;
                  framewaiting:=FALSE;
                  timer:=FALSE;
                  C.sendreset:=FALSE;
                  event:=nothing;
                  BConOut(CON,BEL);
                  BConOut(CON,BEL);
               END;
            END;

        SFRAME.seq:=C.nextframetosend;
        SFRAME.ack:=1-C.frameexpected;

        IF event=timeout THEN
           event:=nothing;
        IF trace THEN BConOut(CON,"R") END;
           sendf(SFRAME);
           framewaiting:=FALSE;
        END;
END     HandleEvents;

PROCEDURE       recframe;
BEGIN
        nrecframe;
        Nwait(event);
        HandleEvents();
END     recframe;

PROCEDURE       initnetwork(port: Device);
BEGIN
  netdevice:=port;
  IF Initialise(port) THEN

    charcount:=0;
    gotframe:=FALSE;
    framebufferfull:=FALSE;
    C.nextframetosend:=0;
    C.frameexpected:=0;
    FOR d:=0 TO 5 DO
        gotmediach[d]:=FALSE;
        gotbpb[d]:=FALSE;
    END;
    cleartosend:=TRUE;
    requesttosend:=FALSE;
    framewaiting:=FALSE;
    timer:=FALSE;
    C.sendreset:=FALSE;
    event:=nothing;
    C.networkactive:=TRUE;
    IF NOT installed THEN
      SuperExec(PROC(InstallVectors)) ; (* install the NETWORK *)
      installed:=TRUE;
    END;
  END ;
END   initnetwork;

PROCEDURE       networkoff;
BEGIN
    C.networkactive:=FALSE;
END     networkoff;

PROCEDURE       networkon;
BEGIN
    C.networkactive:=TRUE;
END     networkon;

BEGIN
END NETWORK.

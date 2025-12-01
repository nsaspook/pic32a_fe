(*$T-,$S-,$A+ *)
MODULE MX2;

(*              Copyright 1987,1988 fred brooks LogicTek        *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(* Corrected code to match changes in lib modules               *)
(*                                      1/9/88-FGB              *)
(* Bug in parser converted all text to UPPER case. Fixed        *)
(*                                      2/27/88-FGB             *)
(* Misc bug fixes.                                              *)
(*                                      4/3/88-FGB              *)
(* Remove NETWORK routines from kernel                          *)
(*                                      4/11/88-FGB             *)
(* Remove SP & XMODEM  routines from kernel                     *)
(*                                      4/11/88-FGB             *)
(* Remove TRAP15 interface routines     6/9/88-FGB              *)
(*                                                              *)

  FROM Terminal       IMPORT     ReadString,WriteString,WriteLn;
  FROM TextIO         IMPORT     REadString;
  FROM Conversions    IMPORT     ConvertFromString;
  FROM M2Conversions  IMPORT     ConvertToInteger,ConvertToAddr;
  FROM BitStuff       IMPORT     WAnd,WShr;
  FROM GEMDOS         IMPORT     ExecMode,Exec,Alloc,Free,OldTerm,
                                 GetPath,GetDrv,GetTime,
                                 SetPath,SetDrv;
  FROM XBIOS          IMPORT     SuperExec,IOREC,IORECPTR,SerialDevice,
                                 IORec,ScreenPhysicalBase;
  FROM BIOS           IMPORT     Device,BConStat,BConIn,BConOut,BCosStat,
                                 KBShifts,GetKBShift,KBShiftBits;
  FROM Streams        IMPORT     Stream,OpenStream,CloseStream,EOS,
                                 StreamKinds;
  FROM Storage        IMPORT     CreateHeap;
  FROM SYSTEM         IMPORT     ADR,ADDRESS,CODE,PROCESS,REGISTER,SETREG;

  FROM   ATOMIC   IMPORT  Initsked,MultiEnd,MultiBegin,CronActive,
                          InitProcesses,StartProcess,currentprocess,
                          TermProcess,SIGNAL,SwapProcess,request,MAGIC,
                          command,SleepProcess,WakeupProcess,
                          ChangeProcessPriority,CRON,DeviceTable,
                          spintenable,spintmask,spint,bpsave,GEMTYPE,
                          sysvariable,gemsaveGvec,ROMDATE,OLDDATE,NEWDATE,
                          NextPid,VERSION,sysmemsize,devicetype;

  FROM   SCANNER  IMPORT  scinit,nxparm,ltext,etext,bkparm,state;

  FROM   Strings  IMPORT  Compare,Pos,Length,Concat,CompareResults,String;


CONST   intnum          =       4;    (* interrupt number on MFP *)
TYPE    ctype   =
                  RECORD
                        stime            :       LONGCARD;
                        freq             :       LONGCARD;
                        btime            :       LONGCARD;
                        command          :       String;
                        active           :       BOOLEAN;
                  END;
          screen  =     ARRAY [0..7999] OF LONGCARD;
VAR
       result,pri,cli1,cli2,clipid,
       spawnpid                                 : INTEGER;
       proc                                     : PROC;
       Oportdevice,Iportdevice                  : devicetype;
       pc,returnadr,kpc,
       oldikbd,par                              : ADDRESS;
       gemsave,param                            : ARRAY [0..15] OF ADDRESS;
       paramstringptr                           : POINTER TO String;
       sizewsp,temphz200,cronslice,currenttime  : LONGCARD;
       cmd,dev,c,a7,SR,tbiosSave                : ADDRESS;
       gem   [88H]                              : ADDRESS;
       hz200  [4baH]                            : LONGCARD;
       termvec [408H]                           : ADDRESS;
       linea [28H]                              : ADDRESS;
       gemdos [84H]                             : ADDRESS;
       gsxgem [88H]                             : ADDRESS;
       tbios  [0b4H]                            : ADDRESS;
       xbios  [0b8H]                            : ADDRESS;
       linef  [2cH]                             : ADDRESS;
       level2 [68H]                             : ADDRESS;
       level4 [70H]                             : ADDRESS;
       shellp [04f6H]                           : ADDRESS;
       ikbdvec [118H]                           : PROC;
       OpenCLI,i,bprunning,function,
       time,defaultdrv,requestdrv,sr,drv,
       ksr                                      : CARDINAL;
       cmdstring,temp,name,tail,envstr,pname,
       defaultpath,requestpath,pstemp,initprg   : String;
       inuse,done,
       swloaded,caps,reservemem,swapcli,inok,
       outok                                    : BOOLEAN;
       periods,drivemap,HotKey,Hotreturn,kjunk,
       NorMouse,CurMouse,RebootKey,memreserve,
       SYSMEM,cin                               : LONGCARD;
       crontable                                : ARRAY [0..15] OF ctype;
       ticktime                                 : LONGINT;
       s0                                       : SIGNAL;
       sysvar                                   : sysvariable;
       sysvector [144H]                         : POINTER TO sysvariable;
       Kshift,Hotset,CapsL                      : KBShifts;
       physcreen                                : POINTER TO screen;
       screensave                               : POINTER TO ARRAY [1..2]
                                                  OF screen;
       kbdiorec                                 : IORECPTR;
       ibuf                                     : POINTER TO ARRAY [0..63]
                                                  OF LONGCARD;

CONST
  TDI   = "                Written in TDI MODULA-2 Version 3.01a ";
  TITLE1 = "       ";
  TITLE2 = " Copyright LogicTek 1987,1988 Fred Brooks ";
  CRONFILE = "CRONTAB";

(*$P- *)
PROCEDURE       keytrapstart; (* modify IKBD system vector *)
BEGIN
        CODE(48e7H,0fffeH);   (* save regs movem  *)
        CODE(206fH,62); (* move.l 62(a7),a0 get pc *)
        kpc:=REGISTER(8);
        CODE(306fH,60); (* move.w 60(a7),a0 get sr *)
        ksr:=CARDINAL(REGISTER(8));
        SETREG(8,ADDRESS(keytrapend));
        CODE(2f48H,62); (* move new pc to stack *)
        SETREG(8,2700H);
        CODE(3f48H,60); (* move new sr to stack *) 

        SETREG(8,oldikbd);  (* move IKBD trap adr *)
        CODE(43faH,10); (* lea 12(pc),a1 *)
        CODE(2288H); (* move.l a0,(a1) *)
        CODE(4cdfH,7fffH); (* restore regs movem *)
        CODE(4ef9H,0,0) (* jmp back to routine *)
END     keytrapstart;
(*$P+ *)

(*$P- *)
PROCEDURE       keytrapend; (* check for hotkeys *)
BEGIN
        CODE(5d8fH);    (* subq.l #6,sp *)
        CODE(48e7H,0fffeH);   (* save regs movem  *)

        Hotreturn:=ibuf^[kbdiorec^.ibuftl DIV 4];
        CODE(2f39H,0,4a2H); (* save BIOS pointers *)
        CODE(4b9H,0,2eH,0,4a2H);

        IF Hotreturn=RebootKey THEN
           CODE(46fcH,0300H); (* set user mode *)
           CODE(42a7H,3f3cH,20H,4e41H,42b9H,0H,420H,2079H,0H,4H,4ed0H);
        END;
        IF Hotreturn=NorMouse THEN
           gkey;
           BConOut(KDB,CHAR(08H)); (* send relative mouse *)
        END;
        IF Hotreturn=CurMouse THEN
           gkey;
           BConOut(KDB,CHAR(0aH)); (* send cursor mouse *)
        END;
        IF Hotreturn=HotKey THEN
           gkey;
           swapcli:=TRUE;
        END;

        CODE(23dfH,0,4a2H); (* restore BIOS pointers *)

        SETREG(8,ADDRESS(kpc));
        CODE(2f48H,62); (* move new pc to stack *)
        SETREG(8,ADDRESS(ksr));
        CODE(3f48H,60); (* move new sr to stack *) 
        CODE(4cdfH,7fffH); (* restore regs movem *)
        CODE(4e73H); (* rte *)
END     keytrapend;
(*$P- *)

(*$P- *)
PROCEDURE       gkey;
BEGIN
        IF BConStat(CON) THEN 
           kjunk:=BConIn(CON);
           ibuf^[kbdiorec^.ibuftl DIV 4]:=0;
        END;
        CODE(4e75H); (* rts *)
END             gkey;
(*$P+ *)

PROCEDURE       SetDrvPath(drive: CARDINAL; VAR path: ARRAY OF CHAR);
BEGIN
        SetDrv(drive,drivemap);
        IF path[0]=0c THEN
           path[0]:='\';
           path[1]:=0c;
           path[2]:=0c;
        END;
        done:=SetPath(path);
END             SetDrvPath;

(* this is for the BIOS devices *)
(*$P-,$S- *)
PROCEDURE       changedevbios;
BEGIN
        CODE(48e7H,07ffeH);     (* save regs *)
        CODE(306fH,56);         (* move.w 56(a7),a0  get SR *)
        SR:=REGISTER(8);
        IF SR<3ffH THEN        (* called from user mode *)
           CODE(204fH);            (* move.l a7,a0 *)
           a7:=REGISTER(8);        (* save ssp *)
           CODE(4e68H,2e48H);      (* move.l usp,a0  move.l a0,a7 *)
           CODE(306fH,2);  (* move.w 2(a7),a0 *)
           dev:=REGISTER(8);
           CODE(306fH,0);  (* move.w 0(a7),a0 *)
           cmd:=REGISTER(8);
           IF (cmd=1) OR (cmd=2) THEN (* check INPUT *)
              IF dev=2 THEN
                 IF currentprocess^.Iport=null THEN
                    SETREG(8,a7);
                    CODE(2e48H);            (* move.l a0,a7 *)
                    CODE(4cdfH,7ffeH);         (* restore regs movem *)
                    CODE(203CH,0FFFFH,0FFFFH); (* move.l -1,d0 *)
                    CODE(4E73H);  (* RTE return -1 on all calls *)
                 END;
                 IF ORD(currentprocess^.Iport)>ORD(null) THEN (* user *)
                     IF cmd=2 THEN
                 cin:=DeviceTable[ORD(currentprocess^.Oport)].bconin();
                       SETREG(8,a7);
                       CODE(2e48H);            (* move.l a0,a7 *)
                       SETREG(0,ADDRESS(cin));
                       CODE(4cdfH,7ffeH);         (* restore regs movem *)
                       CODE(4E73H);  (* RTE return -1 on all calls *)
                    ELSE
                 inok:=DeviceTable[ORD(currentprocess^.Oport)].bconstat();
                       IF inok THEN
                          SETREG(8,a7);
                          CODE(2e48H);            (* move.l a0,a7 *)
                          CODE(4cdfH,7ffeH);      (* restore regs movem *)
                          CODE(203CH,0FFFFH,0FFFFH); (* move.l -1,d0 *)
                          CODE(4E73H);  (* RTE return -1 *)
                       ELSE
                          SETREG(8,a7);
                          CODE(2e48H);            (* move.l a0,a7 *)
                          CODE(4cdfH,7ffeH);      (* restore regs movem *)
                          CODE(203CH,0H,0H); (* move.l 0,d0 *)
                          CODE(4E73H);  (* RTE return 0 *)
                       END;
                    END;
                END;
                 dev:=ADDRESS(currentprocess^.Iport); (* change to port *)
                 SETREG(8,dev);
                 CODE(3f48H,2); (* move.w a0,2(a7) set value in stack *)
              END;
           END;
           IF (cmd=3) OR (cmd=8) THEN (* check OUTPUT *)
              IF dev=2 THEN
                 IF currentprocess^.Oport=null THEN
                    SETREG(8,a7);
                    CODE(2e48H);            (* move.l a0,a7 *)
                    CODE(4cdfH,7ffeH);         (* restore regs movem *)
                    CODE(203CH,0FFFFH,0FFFFH); (* move.l -1,d0 *)
                    CODE(4E73H);  (* RTE return -1 on all calls *)
                 END;
                 IF ORD(currentprocess^.Oport)>ORD(null) THEN
                    IF cmd=3 THEN
                       CODE(306fH,4);  (* move.w 4(a7),a0 *)
                       c:=REGISTER(8);
                 DeviceTable[ORD(currentprocess^.Oport)].bconout(CHAR(c));
                       SETREG(8,a7);
                       CODE(2e48H);            (* move.l a0,a7 *)
                       CODE(4cdfH,7ffeH);         (* restore regs movem *)
                       CODE(203CH,0FFFFH,0FFFFH); (* move.l -1,d0 *)
                       CODE(4E73H);  (* RTE return -1 on all calls *)
                    ELSE
                 outok:=DeviceTable[ORD(currentprocess^.Oport)].bcostat();
                       IF outok THEN
                          SETREG(8,a7);
                          CODE(2e48H);            (* move.l a0,a7 *)
                          CODE(4cdfH,7ffeH);      (* restore regs movem *)
                          CODE(203CH,0FFFFH,0FFFFH); (* move.l -1,d0 *)
                          CODE(4E73H);  (* RTE return -1 *)
                       ELSE
                          SETREG(8,a7);
                          CODE(2e48H);            (* move.l a0,a7 *)
                          CODE(4cdfH,7ffeH);      (* restore regs movem *)
                          CODE(203CH,0H,0H); (* move.l 0,d0 *)
                          CODE(4E73H);  (* RTE return 0 *)
                       END;
                    END;
                 END;
                 dev:=ADDRESS(currentprocess^.Oport); (* change to port *)
                 SETREG(8,dev);
                 CODE(3f48H,2); (* move.w a0,2(a7) set value in stack *)
              END;
           END;
           SETREG(8,a7);
           CODE(2e48H);            (* move.l a0,a7 *)
        ELSE                       (* called from super mode *)
           CODE(306fH,64);  (* move.w 64(a7),a0 *)
           dev:=REGISTER(8);
           CODE(306fH,62);  (* move.w 62(a7),a0 *)
           cmd:=REGISTER(8);
           IF (cmd=1) OR (cmd=2) THEN (* check INPUT *)
              IF dev=2 THEN
                 IF currentprocess^.Iport=null THEN
                    CODE(4cdfH,7ffeH);         (* restore regs movem *)
                    CODE(203CH,0FFFFH,0FFFFH); (* move.l -1,d0 *)
                    CODE(4E73H); (* RTE return -1 on all calls *)
                 END;
                 IF ORD(currentprocess^.Iport)>ORD(null) THEN
                     IF cmd=2 THEN
                 cin:=DeviceTable[ORD(currentprocess^.Oport)].bconin();
                       SETREG(0,ADDRESS(cin));
                       CODE(4cdfH,7ffeH);         (* restore regs movem *)
                       CODE(4E73H);  (* RTE return cin *)
                    ELSE
                 inok:=DeviceTable[ORD(currentprocess^.Oport)].bconstat();
                       IF inok THEN
                          CODE(4cdfH,7ffeH);   (* restore regs movem *)
                          CODE(203CH,0FFFFH,0FFFFH); (* move.l -1,d0 *)
                          CODE(4E73H);  (* RTE return -1  *)
                       ELSE
                          CODE(4cdfH,7ffeH);   (* restore regs movem *)
                          CODE(203CH,0H,0H); (* move.l 0,d0 *)
                          CODE(4E73H);  (* RTE return 0 *)
                       END;
                    END;
                END;
                 dev:=ADDRESS(currentprocess^.Iport); (* change to port *)
                 SETREG(8,dev);
                 CODE(3f48H,64); (* move.w a0,64(a7) set value in stack *)
              END;
           END;
           IF (cmd=3) OR (cmd=8) THEN (* check OUTPUT *)
              IF dev=2 THEN
                 IF currentprocess^.Oport=null THEN
                    CODE(4cdfH,7ffeH);         (* restore regs movem *)
                    CODE(203CH,0FFFFH,0FFFFH); (* move.l -1,d0 *)
                    CODE(4E73H); (* RTE return -1 on all calls *)
                 END;
                 IF ORD(currentprocess^.Oport)>ORD(null) THEN
                    IF cmd=3 THEN
                       CODE(306fH,66);  (* move.w 66(a7),a0 *)
                       c:=REGISTER(8);
                 DeviceTable[ORD(currentprocess^.Oport)].bconout(CHAR(c));
                       CODE(4cdfH,7ffeH);         (* restore regs movem *)
                       CODE(203CH,0FFFFH,0FFFFH); (* move.l -1,d0 *)
                       CODE(4E73H);  (* RTE return -1 on all calls *)
                    ELSE
                 outok:=DeviceTable[ORD(currentprocess^.Oport)].bcostat();
                       IF outok THEN
                          CODE(4cdfH,7ffeH);   (* restore regs movem *)
                          CODE(203CH,0FFFFH,0FFFFH); (* move.l -1,d0 *)
                          CODE(4E73H);  (* RTE return -1  *)
                       ELSE
                          CODE(4cdfH,7ffeH);   (* restore regs movem *)
                          CODE(203CH,0H,0H); (* move.l 0,d0 *)
                          CODE(4E73H);  (* RTE return 0 *)
                       END;
                    END;
                 END;
                 dev:=ADDRESS(currentprocess^.Oport); (* change to port *)
                 SETREG(8,dev);
                 CODE(3f48H,64); (* move.w a0,64(a7) set value in stack *)
              END;
           END;
        END;
        SETREG(8,tbiosSave);  (* move trap adr *)
        CODE(43faH,10); (* lea 12(pc),a1 *)
        CODE(2288H); (* move.l a0,(a1) *)
        CODE(4cdfH,7ffeH); (* restore regs movem *)
        CODE(4ef9H,0,0) (* jmp back to routine *)
END             changedevbios;
(*$P+,$S+ *)
        
(*$P-,$S- *)
PROCEDURE       setup;
BEGIN
        tbios:=ADDRESS(changedevbios);
        CODE(4e75H);    (* RTS *)
END             setup;
(*$P+,$S+ *)

(*$P-,$S- *)
PROCEDURE       tbiossetup;
BEGIN
        tbiosSave:=tbios;
        CODE(4e75H);    (* RTS *)
END             tbiossetup;
(*$P+,$S+ *)
(* end device routines *)

PROCEDURE       SelectPort;
BEGIN
        currentprocess^.Oport:=Oportdevice;
        currentprocess^.Iport:=Iportdevice;
        IF OpenCLI>0 THEN SuperExec(setup) END;
END             SelectPort;

PROCEDURE       RunProgram;
VAR     temp    :       String;
        p       :       CARDINAL;
BEGIN
        IF (bprunning>1) THEN
           gemsaveGvec^:=ADR(currentprocess^.bpsave);
           currentprocess^.bpsave:=bpsave;
           currentprocess^.bpsave[0]:=ADR(currentprocess^.bpsave);
        END;
        SetDrvPath(requestdrv,requestpath);
        IF Pos(currentprocess^.ipname,".",0,p) THEN
                ExecProgram;
        ELSE
                temp:=currentprocess^.ipname;
                Concat(currentprocess^.ipname,".prg",
                       currentprocess^.ipname);
                ExecProgram;
                IF currentprocess^.return=(-33) THEN
                        currentprocess^.ipname:=temp;
                        Concat(currentprocess^.ipname,".tos",
                               currentprocess^.ipname);
                        ExecProgram;
                END;
                IF currentprocess^.return=(-33) THEN
                        currentprocess^.ipname:=temp;
                        Concat(currentprocess^.ipname,".ttp",
                        currentprocess^.ipname);
                        ExecProgram;
                END;
        END;
END             RunProgram;

(*$P- *)
PROCEDURE       ExecProgram;
BEGIN
          CODE(48e7H,0fffeH); (* save regs *)
          currentprocess^.tmpcor:=PROCESS(REGISTER(15));
          SETREG(8,ADR(currentprocess^.ipenvstr));
          CODE(2f08H);  (* move.l a0,-(sp) *)
          SETREG(8,ADR(currentprocess^.iptail));
          CODE(2f08H);  (* move.l a0,-(sp) *)
          SETREG(8,ADR(currentprocess^.ipname));
          CODE(2f08H);  (* move.l a0,-(sp) *)
          CODE(3f3cH,0);    (* move.w #0,-(sp) LOADEXECUTE *)
          CODE(3f3cH,4bH);  (* move.w #4b,-(sp) gemdos EXEC *)
          CODE(4e41H);      (* trap #1 *)
          SETREG(8,currentprocess^.tmpcor);
          CODE(2e48H);   (* move.l a0,a7 *)
          CODE(4cdfH,7fffH); (* restore regs *)
          currentprocess^.return:=INTEGER(REGISTER(0));
          CODE(4e75H);    (* rts *)
END             ExecProgram;
(*$P+ *)

PROCEDURE       IP;
BEGIN
        currentprocess^.ipname:=name;
        currentprocess^.iptail:=tail; 
        currentprocess^.ipenvstr:=envstr;
        SelectPort;
        INC(OpenCLI);
        INC(bprunning);
        LOOP
                MultiBegin;
                RunProgram;
        END;
END     IP;

PROCEDURE       BP;
BEGIN
        currentprocess^.ipname:=name;
        currentprocess^.iptail:=tail; 
        currentprocess^.ipenvstr:=envstr;
        INC(bprunning);
        SelectPort;
        MultiBegin;

        RunProgram;
        MultiEnd;
        DEC(bprunning);
        IF currentprocess^.return#0 THEN
           currentprocess^.errno:=2;
        ELSE
           currentprocess^.errno:=0;
        END;
        TermProcess(currentprocess^.pid);
END     BP;

PROCEDURE       Use;
VAR             i        :          CARDINAL;
                pid      :          INTEGER;
                s0       :          SIGNAL;

PROCEDURE       CheckPort(VAR portdevice: devicetype);
BEGIN
           nxparm;
           ltext(ADR(temp),SIZE(temp));
           IF temp[0]='-' THEN
                portdevice:=con;
                IF temp[1]='n' THEN
                        portdevice:=null;
                END;
                IF temp[1]='a' THEN
                        portdevice:=aux;
                END;
                IF temp[1]='m' THEN
                        portdevice:=midi;
                END;
                IF temp[1]='p' THEN
                        portdevice:=printer;
                END;
                IF temp[1]='0' THEN
                        portdevice:=dev0;
                END;
                IF temp[1]='1' THEN
                        portdevice:=dev1;
                END;
                IF temp[1]='2' THEN
                        portdevice:=dev2;
                END;
                IF temp[1]='3' THEN
                        portdevice:=dev3;
                END;
           ELSE
                portdevice:=con;
                bkparm;
           END;
END             CheckPort;

PROCEDURE       Reset;
BEGIN
           request.req:=FALSE;
           inuse:=FALSE;
END             Reset;

PROCEDURE       gettail;
BEGIN
        nxparm;
        etext(ADR(tail[1]),SIZE(tail));
        bkparm;
        etext(ADR(envstr),SIZE(envstr));
        tail[0]:=CHAR(Length(envstr));
        envstr:='';
END             gettail;

PROCEDURE       Caps(VAR str: String); (* convert str to CAPS *)
VAR                i               :       INTEGER;
BEGIN
        i:=0;
        WHILE ORD(str[i])#0 DO
              str[i]:=CAP(str[i]);
              INC(i);
        END;
END             Caps;

BEGIN
        IF request.magic#MAGIC THEN
           request.magic:=0;
           currentprocess^.errno:=54;
           Reset;
           RETURN;
        END;
        request.magic:=0;
        cmdstring:=command;
        inuse:=TRUE;
        scinit(ADR(cmdstring),SIZE(cmdstring));
        nxparm;
        ltext(ADR(name),SIZE(name));
        Caps(name);
        IF Compare("IP",name)=Equal THEN
           nxparm;
           ltext(ADR(name),SIZE(name));

           gettail;

           pri:=5;
           FOR i:=0 TO 79 DO
               pname[i]:=name[i];
           END;
           Reset;
           Oportdevice:=con;
           Iportdevice:=con;
           proc:=IP;
           sizewsp:=1000;
           SuperExec(getvector);
           StartProcess(proc,sizewsp,pri,pname,par);
           RETURN;
        END;
        IF Compare("BP",name)=Equal THEN
           CheckPort(Iportdevice);
           CheckPort(Oportdevice);
           nxparm;
           ltext(ADR(temp),SIZE(temp));
           ConvertToInteger(temp,done,pri);
           IF NOT done THEN 
              pri:=4;
              bkparm;
           END;
           nxparm;
           ltext(ADR(name),SIZE(name));

           gettail;

           FOR i:=0 TO 79 DO
               pname[i]:=name[i];
           END;
           Reset;
           proc:=BP;
           sizewsp:=2000;
           SuperExec(getbiosvector);
           StartProcess(proc,sizewsp,pri,pname,par);
           RETURN;
        END;
        IF Compare("FP",name)=Equal THEN
           CheckPort(Iportdevice);
           CheckPort(Oportdevice);
           nxparm;
           ltext(ADR(temp),SIZE(temp));
           ConvertToInteger(temp,done,pri);
           IF NOT done THEN 
              pri:=5;
              bkparm;
           END;
           nxparm;
           ltext(ADR(name),SIZE(name));

           gettail;

           FOR i:=0 TO 79 DO
               pname[i]:=name[i];
           END;
           Reset;
           proc:=BP;
           sizewsp:=2000;
           SuperExec(getvector);
           StartProcess(proc,sizewsp,pri,pname,par);
           RETURN;
        END;
        IF Compare("PORT",name)=Equal THEN
           nxparm;
           ltext(ADR(name),SIZE(name));
           ConvertToInteger(name,done,pid);
           IF (NOT done) OR (NOT (pid > clipid)) THEN
              Reset;
              RETURN;
           END;
           s0:=currentprocess;
           LOOP
              s0:=s0^.next;
              IF s0^.pid=1 THEN Reset; RETURN; END;
              IF s0^.pid=pid THEN EXIT END;
           END;
           CheckPort(s0^.Iport);
           CheckPort(s0^.Oport);
           Reset;
           RETURN;
        END;
        IF Compare("CRON",name)=Equal THEN
           nxparm;
           ltext(ADR(name),SIZE(name));
           Caps(name);
           IF Compare("ON",name)=Equal THEN 
              CronActive:=TRUE;
              LoadCRON;
           END;
           IF Compare("OFF",name)=Equal THEN
              CronActive:=FALSE;
           END;
           Reset;
           RETURN;
        END;
        IF Compare("NICE",name)=Equal THEN
           nxparm;
           ltext(ADR(name),SIZE(name));
           ConvertToInteger(name,done,pri);
           IF NOT done THEN
              Reset;
              RETURN;
           END;
           nxparm;
           ltext(ADR(name),SIZE(name));
           IF state.return=0 THEN
              ConvertToInteger(name,done,pid);
              IF NOT done THEN
                 pid:=request.pid;
              END;
           ELSE
              pid:=request.pid;
           END;
           ChangeProcessPriority(pid,pri);
           Reset;
           RETURN;
        END;
        IF Compare("HP",name)=Equal THEN
           nxparm;
           ltext(ADR(name),SIZE(name));
           ConvertToInteger(name,done,pid);
           IF done THEN
              SleepProcess(pid);
           ELSE
              currentprocess^.errno:=3;
           END;
           Reset;
           RETURN;
        END;
        IF Compare("WP",name)=Equal THEN
           nxparm;
           ltext(ADR(name),SIZE(name));
           ConvertToInteger(name,done,pid);
           IF done THEN
              WakeupProcess(pid);
           ELSE
              currentprocess^.errno:=3;
           END;
           Reset;
           RETURN;
        END;
        IF Compare("KILL",name)=Equal THEN
           nxparm;
           ltext(ADR(name),SIZE(name));
           ConvertToInteger(name,done,pid);
           IF done AND (pid>clipid) THEN
              TermProcess(pid);
           ELSE
              currentprocess^.errno:=3;
           END;
           Reset;
           RETURN;
        END;
     Reset;
END     Use;

(* return time in seconds *)
PROCEDURE       converttime(time: CARDINAL): LONGCARD;
VAR                h,m,s           :         LONGCARD;
BEGIN
        h:=LONGCARD(WShr(WAnd(time,63488),11));  (* hours *)
        m:=LONGCARD(WShr(WAnd(time,2016),5));    (* minutes *)
        s:=2*LONGCARD(WAnd(time,31));            (* seconds *)
        RETURN s+(m*60)+(h*3600);
END             converttime;

(*$P- *)
PROCEDURE       gettick;
BEGIN
        temphz200:=hz200;
        CODE(4e75H); (* rts *)
END     gettick;
(*$P+ *)

(*$P- *)
PROCEDURE       setvector;
BEGIN
        linea:=s0^.gemsave[1];
        gemdos:=s0^.gemsave[2];
        gsxgem:=s0^.gemsave[3];
        tbios:=s0^.gemsave[4];
        xbios:=s0^.gemsave[5];
        linef:=s0^.gemsave[6];
        level2:=s0^.gemsave[7];
        level4:=s0^.gemsave[8];
        shellp:=s0^.gemsave[9];
        currentprocess^.Oport:=s0^.Oport;
        currentprocess^.Iport:=s0^.Iport;
        CODE(4e75H); (* rts *)
END     setvector;
(*$P+ *)

(*$P- *)
PROCEDURE       getvector;
BEGIN
        SetDrvPath(defaultdrv,defaultpath);
        linea:=gemsave[1];
        gemdos:=gemsave[2];
        gsxgem:=gemsave[3];
        tbios:=gemsave[4];
        xbios:=gemsave[5];
        linef:=gemsave[6];
        level2:=gemsave[7];
        level4:=gemsave[8];
        shellp:=gemsave[9];
        currentprocess^.Oport:=devicetype(gemsave[10]);
        currentprocess^.Iport:=devicetype(gemsave[10]);
        CODE(4e75H); (* rts *)
END     getvector;
(*$P+ *)

(*$P- *)
PROCEDURE       getbiosvector;
BEGIN
        tbios:=gemsave[4];
        currentprocess^.Oport:=devicetype(gemsave[10]);
        currentprocess^.Iport:=devicetype(gemsave[10]);
        CODE(4e75H); (* rts *)
END     getbiosvector;
(*$P+ *)

(*$P- *)
PROCEDURE       savevector;
BEGIN
        GetPath(defaultpath,0);
        GetDrv(defaultdrv);
        requestdrv:=defaultdrv;
        requestpath:=defaultpath;
        gemsave[1]:=linea;
        gemsave[2]:=gemdos;
        gemsave[3]:=gsxgem;
        gemsave[4]:=tbios;
        gemsave[5]:=xbios;
        gemsave[6]:=linef;
        gemsave[7]:=level2;
        gemsave[8]:=level4;
        gemsave[9]:=shellp;
        gemsave[10]:=ADDRESS(con);
        returnadr:=termvec;
        oldikbd:=ADDRESS(ikbdvec);
        ikbdvec:=keytrapstart;
        CODE(4e75H); (* rts *)
END     savevector;
(*$P+ *)

PROCEDURE       readcrontab;
VAR             result,i                          : INTEGER;
                S                                 : Stream;
                entry,parm                        : String;
BEGIN
        OpenStream(S,"CRONTAB",READ,result);
        IF result=0 THEN
           WHILE NOT EOS(S) DO
                 REadString(S,entry);
                 scinit(ADR(entry),SIZE(entry));
                 nxparm;
                 ltext(ADR(parm),SIZE(parm));
                 ConvertFromString(parm,10,FALSE,MAX(LONGCARD),
                                   crontable[i].stime,done);
                 crontable[i].stime:=crontable[i].stime*60;
                 nxparm;
                 ltext(ADR(parm),SIZE(parm));
                 ConvertFromString(parm,10,FALSE,MAX(LONGCARD),
                                   crontable[i].freq,done);
                 crontable[i].freq:=crontable[i].freq*60;
                 nxparm;
                 etext(ADR(parm),SIZE(parm));
                 crontable[i].command:=parm;
                 crontable[i].active:=TRUE;
                 INC(i);
           END;
           CloseStream(S,result);
        ELSE
           CronActive:=FALSE;
        END;
END     readcrontab;

PROCEDURE       LoadCRON; (* crontable loader *)
BEGIN
  SuperExec(gettick);
  cronslice:=temphz200;
  GetTime(i);
  currenttime:=converttime(i); (* convert time to seconds *)
  ticktime:=LONGINT(temphz200 DIV 200)-LONGINT(currenttime);
       (* ticktime is 200hz clock at 00:00    *)
  FOR i:=0 TO 15 DO               (* clear crontable *)
      crontable[i].active:=FALSE;
  END;
  readcrontab;
  FOR i:=0 TO 15 DO
    IF crontable[i].active THEN
     IF currenttime>crontable[i].stime THEN
        periods:=((currenttime-crontable[i].stime) DIV crontable[i].freq)+1;
        crontable[i].btime:=LONGCARD(ticktime+LONGINT(periods*crontable[i].freq));
        crontable[i].btime:=(crontable[i].stime+crontable[i].btime)*200;
     ELSE
        crontable[i].btime:=LONGCARD(ticktime+LONGINT(crontable[i].stime));
        crontable[i].btime:=crontable[i].btime*200;
     END;
    END;
  END;
END             LoadCRON;

PROCEDURE       TIMER;
VAR             i       :       CARDINAL;
BEGIN
     IF NOT request.req THEN
      LOOP;
        FOR i:=0 TO 15 DO
            IF crontable[i].active THEN
               IF currentprocess^.slice>crontable[i].btime THEN
                  REPEAT (* advance to next time slot *)
                        INC(crontable[i].btime,(crontable[i].freq*200));
                  UNTIL crontable[i].btime>currentprocess^.slice;
                  command:=crontable[i].command;
                  request.magic:=MAGIC;
                  request.pid:=currentprocess^.pid;
                  currentprocess^.ipenvstr:=defaultpath;
                  currentprocess^.flags[0]:=LONGCARD(defaultdrv);
                  request.req:=TRUE;
                  EXIT; (* loop *)
               END;
            END;
        END;
        EXIT; (* loop *)
      END; (* loop *)
     END; (* if *)
END     TIMER;

PROCEDURE       HOTKEYER;
VAR             i,pid,t         :       INTEGER;
BEGIN
    IF swloaded THEN
       s0:=currentprocess;
       REPEAT
             s0:=s0^.next
       UNTIL s0^.pid=cli1;
       IF s0^.wsp=NIL THEN
          BConOut(CON,33C);
          BConOut(CON,'f');
          screensave^[1]:=physcreen^;
          physcreen^:=screensave^[2];
          screensave^[2]:=screensave^[1];
          BConOut(CON,33C);
          BConOut(CON,'e');
          WakeupProcess(clipid);
          swloaded:=FALSE;
          done:=Free(ADDRESS(screensave));
          RETURN;
       END;
       BConOut(CON,33C);
       BConOut(CON,'f');
       screensave^[1]:=physcreen^;
       physcreen^:=screensave^[2];
       screensave^[2]:=screensave^[1];
       BConOut(CON,33C);
       BConOut(CON,'e');
       SleepProcess(cli1);
       WakeupProcess(cli2);
       t:=cli1;
       cli1:=cli2;
       cli2:=t;
    END;
    IF (NOT swloaded) THEN
       physcreen:=ScreenPhysicalBase();
       Alloc(64000,screensave);
       IF ADDRESS(screensave)=NIL THEN RETURN END;
       BConOut(CON,33C);
       BConOut(CON,'f');
       screensave^[2]:=physcreen^;
       SleepProcess(clipid);
       cli1:=NextPid(); (* get the pid for the new cli *)
       cli2:=clipid;
       BConOut(CON,33C);
       BConOut(CON,'e');
       WriteLn;
       WriteString("Enter name of program to run: ");
       WriteLn;
       WriteString("Press RETURN to run CLI ");
       ReadString(command);
       IF command[0]=0c THEN
          command:="cli";
       END;
       Concat("fp ",command,command);
       tail:="";
       envstr:="";
       request.magic:=MAGIC;
       request.req:=TRUE;
       Use;
       swloaded:=TRUE;
    END;
END             HOTKEYER;

PROCEDURE       SysGen;
BEGIN
  initprg:="IP CLI.PRG";
  SYSMEM:=7D00H; (* Allocated memory for MX2 use *)
  HotKey:=320000H; (* ALT m *)
  NorMouse:=310000H; (* ALT n *)
  CurMouse:=2E0000H; (* ALT c *)
  RebootKey:=130000H; (* ALT r *)
  memreserve:=7D00H; (* reserved memory for alt HOTKEY program *)
  ReadMX2INF;
END             SysGen;

PROCEDURE       ReadMX2INF;
VAR             result                            : INTEGER;
                S                                 : Stream;

PROCEDURE       getparm(VAR p: LONGCARD); (* read in info file *)
VAR     V       :       ADDRESS;
BEGIN
     REadString(S,temp);
     ConvertToAddr(temp,done,V);
     p:=LONGCARD(V);
END             getparm;

BEGIN
        OpenStream(S,"MX2.INF",READ,result);
        IF result=0 THEN
           REadString(S,initprg); (* get command *)
           getparm(SYSMEM);
           getparm(HotKey);
           getparm(NorMouse);
           getparm(CurMouse);
           getparm(RebootKey);
           getparm(memreserve);
           CloseStream(S,result);
        END;
END     ReadMX2INF;

(*$P-,$S- *)
PROCEDURE       initsetup;
BEGIN
        currentprocess^.Oport:=con;
        currentprocess^.Iport:=con;
        CODE(4e75H);    (* RTS *)
END             initsetup;
(*$P+,$S+ *)

(* ------------------------------------------------------------------- *)

PROCEDURE       init;
BEGIN
  WriteString(TDI);
  WriteLn;
  Initsked;

  MultiEnd;
  SuperExec(initsetup);
  Alloc(memreserve+2,cmd); (* use spare address vars to setup memory block *)
  Alloc(2,dev);
  reservemem:=Free(cmd);
  OpenCLI := 0;

  MultiEnd;
  spawnpid:=NextPid();
  command:="BP 1 spawn";
  request.pid:=currentprocess^.pid; 
  request.magic:=MAGIC;
  request.req:=TRUE;
  MultiEnd;
  Use; (* execute command *)

  MultiEnd;
  clipid:=NextPid();
  command:=initprg;
  request.pid:=currentprocess^.pid; 
  request.magic:=MAGIC;
  request.req:=TRUE;
  MultiEnd;
  Use; (* execute command *)
  REPEAT
        SwapProcess; 
  UNTIL OpenCLI>0;

  CRON:=TIMER; 
  CronActive:=TRUE;
  LoadCRON; (* read CRONFILE and set up crontable variables *)
  kbdiorec:=IORec(Keyboard);
  ibuf:=kbdiorec^.ibuf;
  SuperExec(tbiossetup);

 LOOP                   (* main kernel loop runs "forever" *)
     MultiEnd;
     Kshift:=GetKBShift();
     IF Kshift=CapsL THEN
        IF (NOT caps) THEN
           caps:=TRUE;
           BConOut(CON,33C);
           BConOut(CON,'j');
           BConOut(CON,33C);
           BConOut(CON,'Y');
           BConOut(CON,CHAR(32));
           BConOut(CON,CHAR(111));
           BConOut(CON,'*');
           BConOut(CON,33C);
           BConOut(CON,'k');
        END;
     ELSE
        IF caps THEN
           caps:=FALSE;
           BConOut(CON,33C);
           BConOut(CON,'j');
           BConOut(CON,33C);
           BConOut(CON,'Y');
           BConOut(CON,CHAR(32));
           BConOut(CON,CHAR(111));
           BConOut(CON,' ');
           BConOut(CON,33C);
           BConOut(CON,'k');
        END;
     END;

        IF swapcli THEN
           swapcli:=FALSE;
           HOTKEYER;
        END;
     IF currentprocess^.slice>cronslice+6000 THEN (* every 30 SECONDS *)
        cronslice:=currentprocess^.slice;

        IF CronActive THEN
           SuperExec(getvector);
           CRON 
        END;
     END;
     IF CARDINAL(spintenable)#0 THEN (* check for spints *)
        FOR i:=0 TO 15 DO (* check all spints and run if set *)
            IF (i IN spintenable)
               AND (i IN spintmask) 
               AND (ADDRESS(spint[i].proc)#NIL) THEN
               spint[i].proc;
            END;
            EXCL(spintenable,i); (* clear flag after complete *)
        END;
     END;

     IF request.req THEN
        s0:=currentprocess;
        REPEAT
              s0:=s0^.next
        UNTIL s0^.pid=request.pid;
        i:=CARDINAL(s0^.flags[0]);
        SetDrvPath(i,s0^.ipenvstr);
        requestdrv:=i;
        requestpath:=s0^.ipenvstr;
        SuperExec(setvector); 
        Use;
        request.req:=FALSE;
     END;
     MultiBegin;
     SwapProcess;
  END;
END     init;

(* ------------------------------------------------------------------- *)

BEGIN
        SuperExec(savevector);
        BConOut(CON,33C);
        BConOut(CON,'E');
        Hotset:=KBShifts{AlternateKey};
        CapsL:=KBShifts{CapsLock};
        IF (ROMDATE # OLDDATE) AND (ROMDATE # NEWDATE) THEN
           WriteLn;
           WriteString("SORRY, MX2 MAY NOT RUN WITH YOUR ROM VERSION.");
           WriteLn;
        END;
        SysGen; (* read in system generation file if any *)
        IF CreateHeap(SYSMEM,TRUE) THEN
           sysmemsize:=SYSMEM;
           Oportdevice:=con;
           Iportdevice:=con;
           inuse:=FALSE;
           done:=TRUE;
           InitProcesses;
           request.pid:=currentprocess^.pid;
           MultiEnd;
           WriteLn;
           WriteString(TITLE1);
           WriteString(VERSION);
           WriteString(TITLE2);
           WriteLn;
           proc:=init;
           sizewsp:=2000;
           pri:=1;
           pname:="init";
           par:=NIL;
           StartProcess(proc,sizewsp,pri,pname,par);
        END;
        OldTerm;
END MX2.


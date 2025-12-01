
(*              Copyright 1987 fred brooks LogicTek             *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(*   Minor fixups                       3/7/88-FGB              *)
(*                                                              *)

(*$T-,$S-,$A+ *)
(* This version of xmodem has been written using UNIX and the sealink
   C programming versions as examples. Many thanks to those who have done
   this before me.        Fred Brooks                                   *)

IMPLEMENTATION MODULE XMODEM;
FROM SYSTEM     IMPORT ADDRESS, CODE, REGISTER, SETREG, ADR, WORD;
FROM GEMX       IMPORT BasePageAddress, BasePageType ;
FROM BIOS       IMPORT BConStat, BCosStat, BConIn, BConOut, Device;
FROM XBIOS      IMPORT SuperExec;
FROM GEMDOS     IMPORT Create, Open, Close, Write, Read, GetDTA, SFirst;
FROM TextIO     IMPORT WriteString, WriteLn, WriteInt,  WriteAdr;
FROM BitStuff   IMPORT WAnd, WEor, WShl, WShr;
FROM Strings    IMPORT String, Assign;

TYPE            CharPtr       =          POINTER TO ARRAY [0..MAX(LONGINT)] OF CHAR;

CONST           SECSIZ        =          80H;
                BUFSIZ        =          200H;
                ERRORMAX      =          20;
                RETRYMAX      =          20;
                SOH           =          1c;
                EOT           =          4c;
                ACK           =          6c;
                NAK           =          25c;
                C             =          103c;
                RTS           =          4e75H;
                BELL          =          7c;
                CTRLZ         =          32c;

VAR             result,mtimeout         :       INTEGER;
                filename                :       String;
                hz200 [04baH]           :       LONGCARD;
                t1,prtime               :       LONGCARD;
                readchar                :       CHAR;
                filesize                :       POINTER TO LONGCARD;
                snd,rec,ok              :       BOOLEAN;

(*$P- *)
PROCEDURE       rdtime();       (* read 200hz clock *)
BEGIN
        prtime:=hz200;
        CODE(RTS);
END             rdtime;
(*$P+ *)

PROCEDURE       GetTime(): LONGCARD;
BEGIN
        SuperExec(rdtime);
        RETURN prtime;
END             GetTime;

PROCEDURE       timerset(time: INTEGER): LONGCARD;
BEGIN
        RETURN (LONGCARD(time)+(GetTime() DIV 20));
END             timerset;

PROCEDURE       timeup(timer: LONGCARD): BOOLEAN;
BEGIN
        IF ((GetTime() DIV 20)>timer) OR ((GetTime() DIV 20)=timer) THEN
           RETURN TRUE;
        ELSE
           RETURN FALSE;
        END;
END             timeup;

PROCEDURE       errorbells;
VAR             i,delay        :       CARDINAL;
BEGIN
           FOR i:=0 TO 3 DO
               FOR delay:=0 TO 10000 DO END;
               BConOut(CON,BELL);
           END;
END             errorbells;

PROCEDURE       crcupdate(crcvalue: CARDINAL; data: CHAR): CARDINAL;
CONST           GEN1X5X12X16                  =     1021H;
VAR             i,xin,cha                     :     INTEGER;
                t                             :     CARDINAL;
BEGIN
        cha:=INTEGER(data);
        FOR i:=0 TO 7 DO
            xin:=INTEGER(WAnd(crcvalue,8000H));
            cha:=INTEGER(WShl(cha,1));
            IF INTEGER(WAnd(cha,100H))#0 THEN
               t:=crcvalue;
               crcvalue:=1+CARDINAL(WShl(t,1));
            ELSE
               t:=crcvalue;
               crcvalue:=0+CARDINAL(WShl(t,1));
            END;
            IF xin#0 THEN 
               crcvalue:=CARDINAL(WEor(crcvalue,GEN1X5X12X16));
            END;
        END;
        RETURN crcvalue;
END             crcupdate;

PROCEDURE       crcfinish(crcvalue: CARDINAL): CARDINAL;
BEGIN
        RETURN CARDINAL(WAnd(crcupdate(crcupdate(crcvalue,0c),0c),0ffffH));


END             crcfinish;

PROCEDURE       IAnd255(num: INTEGER): INTEGER;
BEGIN
        RETURN INTEGER(WAnd(num,0ffH));
END             IAnd255;

PROCEDURE       mdmini;
BEGIN
        ok:=FALSE;
        xmodemerror:=0;
        xmodemabort:=FALSE;
        mtimeout:=120;
        mdmBytesXferred:=0;
        mdmPacketsSent:=0;
        mdmPacketsReceived:=0;
        mdmBadPackets:=0;
        mdmNakedPackets:=0;
END             mdmini;

PROCEDURE       xmodemstat;
BEGIN
        WriteLn;
        WriteString("      XMODEM STATUS       ");
        IF rec THEN 
           WriteString(" receiver active       ");
           WriteString(xfrname);
           IF crcmode THEN
              WriteString(" CRC mode.");
           ELSE
              WriteString(" CHECKSUM mode.");
           END;
        END;
        IF snd THEN 
           WriteString(" transmitter active    "); 
           WriteString(xfrname);
           IF crcmode THEN
              WriteString(" CRC mode.");
           ELSE
              WriteString(" CHECKSUM mode.");
           END;
        END;
        WriteLn;
        IF ok THEN
           WriteString("       Transfer complete.  ");
           WriteLn;
        END;
        IF xmodemerror#0 THEN
           WriteString("       Transfer aborted!  ");
           errorbells;
           WriteLn;
        END;
        WriteLn;
        WriteString(" Total packets sent  ");
        WriteInt(mdmPacketsSent,12);
        WriteLn;
        WriteString(" Packets left        ");
        WriteInt(endblk,12);
        WriteLn;
        WriteString(" Packets received    ");
        WriteInt(mdmPacketsReceived,12);
        WriteLn;
        WriteString(" Bad packets         ");
        WriteInt(mdmBadPackets,12);
        WriteLn;
        WriteString(" Naked packets sent  ");
        WriteInt(mdmNakedPackets,12);
        WriteLn;
        WriteString(" Bytes transferred   ");
        WriteAdr(ADDRESS(mdmBytesXferred),12);
        WriteLn;
END             xmodemstat;

PROCEDURE       setbuffer(char: CharPtr; length: CARDINAL; value: CHAR);
VAR             data            :        POINTER TO CHAR;
BEGIN
        WHILE length#0 DO
              data:=ADDRESS(char);
              data^:=value;
              INC(char);
              DEC(length);
        END;
END             setbuffer;

PROCEDURE       writeModem(char: CharPtr; count: LONGCARD);
VAR             data             :        POINTER TO CHAR;
BEGIN
        WHILE count#0 DO
              DEC(count);
              data:=ADDRESS(char);
              INC(char);

              sendchar(data^);
        END;
END             writeModem;

PROCEDURE       readModem(VAR char: CHAR; time: INTEGER);
VAR             data         :  CHAR;
                longchar     :  LONGCARD;
                t            :  BITSET;
                WaitTime     :  LONGCARD;
                ticks        :  CARDINAL;
BEGIN
        IF time=0 THEN
           IF BConStat(AUX) THEN (* return char *)
              longchar:=BConIn(AUX);
              t:=BITSET(longchar);
              EXCL(t,8);
              char:=CHAR(t);
              RETURN; 
           ELSE
              char:=CHAR(255);
              RETURN;
           END;
        END;

        WaitTime:=LONGCARD(time)+(GetTime() DIV 20);
        ticks:=0;
        LOOP
                IF BConStat(AUX) THEN
                   longchar:=BConIn(AUX);
                   t:=BITSET(longchar);
                   EXCL(t,8);
                   char:=CHAR(t);
                   RETURN;
                END;
        IF ((GetTime() DIV 20)>WaitTime) 
        OR ((GetTime() DIV 20)=WaitTime) THEN
           INC(ticks);
           WaitTime:=LONGCARD(time)+(GetTime() DIV 20);
           IF ticks=2 THEN
              char:=CHAR(255);
              RETURN;
           END;
        END;
        END; (* loop *)
END             readModem;

PROCEDURE       flushinput();
VAR             char    :       LONGCARD;
BEGIN
        WHILE BConStat(AUX) DO
              char:=BConIn(AUX);
        END;
END             flushinput;

PROCEDURE       sendchar(char: CHAR);
BEGIN
        BConOut(AUX,char);
END             sendchar;

PROCEDURE       xmodemrec(filename: ARRAY OF CHAR): BOOLEAN;
VAR             sectnum,sectcurr,sectcomp,fd            :       INTEGER;
                errors                                  :       INTEGER;
                firstchar                               :       CHAR;
                errorflag,goodcheck,crc1,crc2           :       BOOLEAN;
                checksum,j,bufptr                       :       CARDINAL;
                b                                       :       LONGCARD;
                bufr                                    :       ARRAY [0..BUFSIZ] OF CHAR;
BEGIN
        IF rec OR snd THEN
           WriteLn;
           WriteString(" XMODEM already active! ");
           WriteLn;
           RETURN FALSE;
        END;
        rec:=TRUE;
        mdmini();
        SFirst(filename,0,result);
        IF result=0 THEN
           WriteLn;
           WriteString(filename);
           WriteString(" already exists! ");
           WriteLn;
           errorbells;
           xmodemerror:=(-1);
           rec:=FALSE;
           RETURN FALSE;
        END;
        Create(filename,0,fd);
        IF fd<0 THEN
           WriteLn;
           WriteString("GEMDOS ERROR # ");
           WriteInt(fd,2);
           WriteLn;
           xmodemerror:=fd;
           IF Close(fd) THEN END;
           rec:=FALSE;
           RETURN FALSE;
      ELSE
           Assign(xfrname,filename);
           WriteString(" receiving ");
           WriteString(filename);
           WriteLn;
        END;
(*        crcmode:=TRUE; *)
        sectnum:=0; errors:=0; bufptr:=0;
        flushinput();
        IF crcmode THEN
           sendchar(C);
        ELSE
           sendchar(NAK);
        END;

        WHILE (firstchar#EOT) AND (errors#ERRORMAX) DO
              errorflag:=FALSE;

              t1:=timerset(50);
              REPEAT
                readModem(readchar,5);
                firstchar:=readchar;
                IF xmodemabort THEN
                   IF Close(fd) THEN END;
                   xmodemerror:=(-11);
                   rec:=FALSE;
                   RETURN FALSE;
                END;
                IF timeup(t1) THEN
                   t1:=timerset(50);
                   flushinput();
                   IF crcmode THEN
                      sendchar(C);
                   ELSE
                      sendchar(NAK);
                   END;
                   IF errors>ERRORMAX DIV 2 THEN crcmode:=NOT crcmode END;
                   INC(errors);
                   IF errors>ERRORMAX THEN 
                      IF Close(fd) THEN END;
                      xmodemerror:=(-1);
                      rec:=FALSE;
                      RETURN FALSE;
                   END;
                END;
              UNTIL (firstchar=SOH) OR (firstchar=EOT);

              IF firstchar=SOH THEN
                 readModem(readchar,5);
                 sectcurr:=INTEGER(readchar);
                 readModem(readchar,5);
                 sectcomp:=INTEGER(readchar);
                 IF sectcurr+sectcomp=255 THEN
                    IF sectcurr=IAnd255(sectnum+1) THEN
                       checksum:=0;
                       FOR j:=bufptr TO bufptr+SECSIZ-1 DO
                           IF xmodemabort THEN
                              IF Close(fd) THEN END;
                              xmodemerror:=(-11);
                              rec:=FALSE;
                              RETURN FALSE;
                           END;
                           readModem(readchar,5);
                           bufr[j]:=readchar;
                           IF crcmode THEN
                              checksum:=crcupdate(checksum,bufr[j]);
                           ELSE
                              checksum:=checksum+CARDINAL(bufr[j]);
                           END;
                       END; (* for *)

                  IF crcmode THEN
                     crc1:=FALSE; crc2:=FALSE;
                     (*
                     FOR j:=bufptr TO bufptr+SECSIZ-1 DO
                         checksum:=crcupdate(checksum,bufr[j]);
                     END;
                     *)
                     checksum:=crcfinish(checksum);
                     readModem(readchar,5);
                     IF readchar=CHAR(IAnd255(CARDINAL(WShr(checksum,8)))) THEN
                        crc1:=TRUE;
                     END;
                     readModem(readchar,5);
                     IF readchar=CHAR(IAnd255(checksum)) THEN
                        crc2:=TRUE;
                     END;
                     IF crc1 AND crc1 THEN
                        goodcheck:=TRUE;
                     ELSE
                        goodcheck:=FALSE;
                     END;
                  ELSE
                  (*
                     FOR j:=bufptr TO bufptr+SECSIZ-1 DO
                         checksum:=checksum+CARDINAL(bufr[j]);
                     END;
                  *)
                     readModem(readchar,5);
                     IF checksum=CARDINAL(readchar) THEN
                        goodcheck:=TRUE;
                     ELSE
                        goodcheck:=FALSE;
                     END;
                  END;


                       IF goodcheck THEN
                          INC(mdmPacketsReceived);
                          errors:=0;
                          INC(sectnum);
                          bufptr:=bufptr+SECSIZ;
                          mdmBytesXferred:=mdmBytesXferred+SECSIZ;
                          IF bufptr=BUFSIZ THEN
                             bufptr:=0;
                             b:=BUFSIZ;
                             Write(fd,b,ADR(bufr));
                          END;
(*     this is for error checking for the write *)
                          flushinput;
                          sendchar(ACK);
                       ELSE
                          INC(mdmBadPackets);
                          errorflag:=TRUE;
                       END; (* if *)
                    ELSE
                       IF sectnum=IAnd255(sectnum) THEN
                          flushinput;
                          sendchar(ACK);
                       ELSE
                          INC(mdmBadPackets);
                          errorflag:=TRUE;
                       END;
                    END; (* if *)
                 ELSE
                    INC(mdmBadPackets);
                    errorflag:=TRUE;
                 END; (* if *)
              IF errorflag THEN
                 INC(errors);
                 flushinput;
                 IF crcmode THEN
                    sendchar(C);
                 ELSE
                    sendchar(NAK);
                 END;
              END;
              END; (* if *)
        END; (* while *)
        IF (firstchar=EOT) AND (errors< ERRORMAX) THEN
           sendchar(ACK);
           b:=LONGCARD(bufptr);
           Write(fd,b,ADR(bufr));
           IF Close(fd) THEN END;
           xmodemerror:=0;
           rec:=FALSE;
           ok:=TRUE;
           RETURN TRUE;
        END;
        IF Close(fd) THEN END;
        xmodemerror:=(-1);
        rec:=FALSE;
        RETURN FALSE;
END             xmodemrec;

PROCEDURE       xmodemsnd(filename: ARRAY OF CHAR): BOOLEAN;
VAR             sectnum,attempts,fd          :   INTEGER;
                checksum,j,bufptr            :   CARDINAL;
                readchar,c,nak               :   CHAR;
                b                            :   LONGCARD;
                dtaAdr                       :   ADDRESS;
                bufr                         :   ARRAY [0..BUFSIZ] OF CHAR;
BEGIN
        IF rec OR snd THEN
           WriteLn;
           WriteString(" XMODEM already active! ");
           WriteLn;
           RETURN FALSE;
        END;
        snd:=TRUE;
(*        crcmode:=TRUE; *)
        mdmini();
        setbuffer(ADR(bufr),BUFSIZ,0c); (* clear buffer *)
        Open(filename,0,fd);
        IF fd<0 THEN
           WriteLn;
           WriteString("GEMDOS ERROR # ");
           WriteInt(fd,2);
           WriteLn;
           xmodemerror:=fd;
           IF Close(fd) THEN END;
           snd:=FALSE;
           RETURN FALSE;
        ELSE
           GetDTA(dtaAdr);
           SFirst(filename,0,result);
           filesize:=dtaAdr+26;
           endblk:=INTEGER(((filesize^+127) DIV 128)+1);
           Assign(xfrname,filename);
           WriteString(" sending ");
           WriteString(filename );
           WriteInt(endblk,5);
           WriteString(" block(s)");
           WriteLn;
        END;
        attempts:=0;
        sectnum:=1;
        j:=0;
        IF crcmode THEN
           nak:=C;
        ELSE
           nak:=NAK;
        END;
        readModem(readchar,5);
        c:=readchar;
        WHILE (c#nak) AND (j<ERRORMAX) DO
              readModem(readchar,20);
              c:=readchar;
              IF j> ERRORMAX DIV 2 THEN
                 crcmode:=NOT crcmode;
                 IF crcmode THEN
                    nak:=C;
                 ELSE
                    nak:=NAK;
                 END;
              END;
              INC(j);
              IF xmodemabort OR (j=ERRORMAX) THEN
                 IF Close(fd) THEN END;
                 xmodemerror:=(-11);
                 snd:=FALSE;
                 RETURN FALSE;
              END;
        END; (* while *)
        flushinput;
        WHILE (endblk#0) AND (attempts#RETRYMAX) DO
              setbuffer(ADR(bufr),BUFSIZ,CTRLZ); 
              b:=BUFSIZ;
              Read(fd,b,ADR(bufr));
              bufptr:=0;
              REPEAT
                attempts:=0;
                REPEAT
                  IF xmodemabort THEN
                     IF Close(fd) THEN END;
                     xmodemerror:=(-11);
                     snd:=FALSE;
                     RETURN FALSE;
                  END;
                  sendchar(SOH);
                  sendchar(CHAR(IAnd255(sectnum)));
                  sendchar(CHAR(255-IAnd255(sectnum)));
                  checksum:=0;
                  writeModem(ADR(bufr[bufptr]),SECSIZ);
                  IF crcmode THEN
                     FOR j:=bufptr TO bufptr+SECSIZ-1 DO
                         checksum:=crcupdate(checksum,bufr[j]);
                     END;
                     checksum:=crcfinish(checksum);
                     sendchar(CHAR(IAnd255(CARDINAL(WShr(checksum,8)))));
                     sendchar(CHAR(IAnd255(checksum)));
                  ELSE
                     FOR j:=bufptr TO bufptr+SECSIZ-1 DO
                         checksum:=checksum+CARDINAL(bufr[j]);
                     END;
                     sendchar(CHAR(IAnd255(checksum)));
                  END;
                  flushinput;
                  INC(mdmPacketsSent);
                  INC(attempts);
                  readModem(readchar,mtimeout);
                  c:=readchar;
                  IF c#ACK THEN 
                     INC(mdmNakedPackets);
                  END;
                UNTIL (c=ACK) OR (attempts=RETRYMAX);
                IF attempts#RETRYMAX THEN
                   DEC(endblk);
                   bufptr:=bufptr+SECSIZ;
                   mdmBytesXferred:=mdmBytesXferred+SECSIZ;
                   INC(sectnum);
                END;
              UNTIL (bufptr=BUFSIZ) OR (attempts=RETRYMAX) OR (endblk=0);
        END; (* while *)

        IF Close(fd) THEN END;
        IF attempts=RETRYMAX THEN
           xmodemerror:=(-1);
           snd:=FALSE;
           RETURN FALSE;
        ELSE
           attempts:=0;
           REPEAT
                sendchar(EOT);
                INC(attempts);
                readModem(readchar,5);
                c:=readchar;
           UNTIL (c=ACK) OR (attempts=RETRYMAX);
           xmodemerror:=0;
           snd:=FALSE;
           ok:=TRUE;
           RETURN TRUE;
        END;
END             xmodemsnd;

BEGIN
END XMODEM.

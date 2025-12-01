(*
        1       check xmodem status
        2       change error-check method
        99      abort xmodem
*)
MODULE  xmodemr;
FROM    SYSCALL IMPORT  EnableSpint,DisableSpint;
FROM    GEMDOS  IMPORT  OldTerm,ConOut;
FROM    GEMX    IMPORT  BasePageAddress;
FROM    SYSTEM  IMPORT  ADR,ADDRESS;
FROM    XMODEM  IMPORT  xmodemrec,xmodemabort,crcmode,xmodemerror,
                        xmodemstat;
VAR     ok                              : BOOLEAN;
        spintcmd                        : ARRAY [0..2] OF LONGCARD;
        cmd                             : ARRAY [0..81] OF CHAR;
        i,delay                         : CARDINAL;

PROCEDURE       run;
BEGIN
        IF spintcmd[0]=1 THEN xmodemstat END;
        IF spintcmd[0]=99 THEN xmodemabort:=TRUE END;
END             run;

BEGIN
        IF EnableSpint(1,run,ADR(spintcmd)) THEN
           spintcmd[1]:=LONGCARD(xmodemstat);
           crcmode:=TRUE;
           FOR i:=1 TO ORD(BasePageAddress^.CmdLine[0])+1 DO
              cmd[i-1]:=BasePageAddress^.CmdLine[i];
           END;
           cmd[ORD(BasePageAddress^.CmdLine[0])]:=0c;
           IF BasePageAddress^.CmdLine[0]#0c THEN
              IF cmd[0]='-' THEN
                 crcmode:=FALSE;
                 FOR i:=0 TO ORD(BasePageAddress^.CmdLine[0]) DO
                    cmd[i]:=cmd[i+1];
                 END;
              END;
           IF xmodemrec(cmd) THEN
              ConOut(7c);
           ELSE
              FOR i:=0 TO 3 DO
                 FOR delay:=0 TO 10000 DO END;
                 ConOut(7c);
              END;
           END; (* get the file *)
           END;
           DisableSpint(1);
           OldTerm;
        END;
END     xmodemr.


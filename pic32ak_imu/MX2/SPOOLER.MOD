(* this module uses spint 0 to communicate with a controller program
   Commands are sent via the spintinfo call. and pass values thru
   the spintcmd variable. Please look at lp.mod for an example.
   current commands are:
   1    examine spool directory. print any files that exist then delete.
   2    spool queue.
   99   terminate spooler.prg.
*)

MODULE spooler;
FROM   XBIOS    IMPORT  SuperExec;
FROM   SYSTEM   IMPORT  BYTE,ADR,CODE,ADDRESS;
FROM   GEMDOS   IMPORT  DirCreate,Open,Close,SetDTA,Delete,SFirst,SNext,
                        SetPath,Alloc,Free,Read,GetPath,OldTerm;
FROM   TextIO   IMPORT  WriteString,WriteLn,WriteAdr;
FROM   BIOS     IMPORT  Device,BCosStat,BConOut; 
FROM   Streams  IMPORT  OpenStream,CloseStream,StreamKinds,Stream;
FROM   SYSCALL  IMPORT  EnableSpint,SwapProcess,SleepProcess,
                        WakeupProcess,ProcessPid,DisableSpint;
TYPE   dtatype  =       RECORD
                res     :       ARRAY [0..20] OF BYTE;
                attr    :       BYTE;
                time    :       CARDINAL;
                date    :       CARDINAL;
                size    :       LONGCARD;
                name    :       ARRAY [0..13] OF CHAR;
                        END;
VAR    result,i,return,d,pid                    :       INTEGER;
       DTA                                      :       dtatype;
       ok                                       :       BOOLEAN;
       count                                    :       INTEGER;
       ch                                       :       BYTE;
       S                                        :       Stream;
       endpos,currentpos,delay                  :       LONGCARD;
       C,char                                   :       POINTER TO CHAR;
       spintcmd                                 :       ARRAY [0..1] OF
                                                        LONGCARD;
PROCEDURE       sq;
BEGIN
           WriteLn;
           IF currentpos#endpos THEN
                WriteString("Printing ");
                WriteString(DTA.name);
                WriteAdr(ADDRESS(endpos),7);
                WriteString(" total characters");
                WriteAdr(ADDRESS(endpos-currentpos),7);
                WriteString(" characters left to print.");
           ELSE
                WriteString("Nothing.");
           END;
           WriteLn;
END             sq;

PROCEDURE       run;
BEGIN
        IF (spintcmd[0]=1) OR (spintcmd[0]=99) THEN
           WakeupProcess(pid);
        END;
        IF spintcmd[0]=2 THEN
           sq;
        END;
END             run;

BEGIN
        spintcmd[1]:=LONGCARD(sq);
        pid:=ProcessPid();
        ok:=SetPath("\");
        ok:=DirCreate("mx2spool");
        IF ok THEN
           WriteString("Creating spool directory -> \MX2SPOOL");
           WriteLn;
        END;
        ok:=SetPath("\mx2spool");
        IF NOT ok THEN
           DisableSpint(0);
           WriteString("Unable to create or use MX2SPOOL directory");
           WriteLn;
           OldTerm;
        END;
        ok:=EnableSpint(0,run,ADR(spintcmd)); (* spint to start spooler *)
        SetDTA(ADR(DTA));
        LOOP
           SFirst("*.*",0,result);
           WHILE result=0 DO

        count:=0;
        OpenStream(S,DTA.name,READ,return);
        IF return<0 THEN
        ELSE
           currentpos:=0;
           endpos:=S.endPos;
           Alloc(endpos,C);
           char:=C;
           IF char#NIL THEN
              Read(S.handle,endpos,char);
              CloseStream(S,return);
              WHILE (currentpos#endpos) DO
                 WHILE NOT BCosStat(PRT) DO
                    INC(delay);
                    IF delay>1000 THEN
                       delay:=0;
                       SwapProcess;
                    END;
                 END;
                 BConOut(PRT,char^);
                 INC(currentpos);
                 INC(char);
                 INC(count);
                 IF count>32 THEN
                    count:=0;
                    SwapProcess;
                    IF spintcmd[0]=99 THEN
                       DisableSpint(0);
                       OldTerm;
                    END;
                 END;
              END;
              IF Free(C) THEN END;
              BConOut(PRT,CHAR(0cH)); (* send formfeed *)
           ELSE
              CloseStream(S,return);
              WriteString(DTA.name);
              WriteString(" * SPOOLER OUT OF MEMORY *");
              WriteLn;
           END;
        END;
           ok:=Delete(DTA.name);
           SNext(result);
           END;
           SleepProcess(pid);
           IF spintcmd[0]=99 THEN
              DisableSpint(0);
              OldTerm;
           END;
        END;
END    spooler.

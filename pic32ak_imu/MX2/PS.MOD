(*$T-,$S-,$A+ *)
MODULE  ps;
FROM    SYSCALL IMPORT  SysVar,SysDes;
FROM    GEMDOS  IMPORT  OldTerm,GetTime,GetDate,Alloc,Write;
FROM    GEMX    IMPORT  BasePageAddress;
FROM    SYSTEM  IMPORT  CODE,ADDRESS,ADR;
FROM    Terminal        IMPORT  WriteString,WriteLn;
FROM    XBIOS           IMPORT  SuperExec;
FROM    ATOMIC          IMPORT  VERSION,SIGNAL,sysvariable,devicetype;
FROM    Strings         IMPORT  String,Concat,Copy,Length;
FROM    Conversions     IMPORT  ConvertToString;
FROM    M2Conversions   IMPORT  ConvertCardinal,ConvertReal;
FROM    BitStuff        IMPORT  WAnd,WShr;
FROM    SCANNER         IMPORT  scinit,nxparm,ltext,etext,bkparm;
FROM    TermBase        IMPORT  DoWrite,WriteProc;

CONST
  SPACES   = "                                                        ";
  TITLE1 = "       ";
  TITLE2 = " Copyright LogicTek 1987,1988 Fred Brooks ";
  PS1      =
"  current            system    user      total CPU    total context  CRON";
  PS2      =
"  time     date      memory    memory    time         switches       timer";
  PS3      =
"  Name           PID PPID Status Pri Init Time          CPU time    PORT";
VAR     temp,pstemp             :       String;
        time,date               :       CARDINAL;
        membot [432H]           :       LONGCARD;
        memtop [436H]           :       LONGCARD;
        hz200  [4baH]           :       LONGCARD;
        s0,currentprocess       :       SIGNAL;
        sysvar                  :       sysvariable;
        done,dmode,stmode       :       BOOLEAN;
        temphz200,topusermem,botusermem,usermemleft,memreserve
                                :       LONGCARD;


PROCEDURE       FileWrite(char: CHAR);
VAR     writecount      :       LONGCARD;
BEGIN
        writecount:=1;
        Write(1,writecount,ADR(char));
END             FileWrite;

(*$P- *)
PROCEDURE       showmemory;
VAR             memsize :       ADDRESS;
BEGIN
        topusermem:=memtop;
        botusermem:=membot;
        temphz200:=hz200;
        Alloc(LONGCARD(-1),memsize);
        usermemleft:=LONGCARD(memsize);
        CODE(4e75H); (* rts *)
END     showmemory;
(*$P+ *)

(*$P- *)
PROCEDURE       gettick;
BEGIN
        temphz200:=hz200;
        CODE(4e75H); (* rts *)
END     gettick;
(*$P+ *)


PROCEDURE       FormatTD(time: CARDINAL; date: CARDINAL);
BEGIN
           ConvertCardinal(CARDINAL(WShr(WAnd(time,63488),11)),2,temp);
           WriteString(temp); (* hour *)
           WriteString(":");

           ConvertCardinal(CARDINAL(WShr(WAnd(time,2016),5)),2,temp);
           WriteString(temp); (* minute *)
           WriteString(":");

           ConvertCardinal(2*CARDINAL(WAnd(time,31)),2,temp);
           WriteString(temp); (* second *)
           WriteString(" ");

           ConvertCardinal(CARDINAL(WShr(WAnd(date,480),5)),2,temp);
           WriteString(temp); (* month *)
           WriteString("/");

           ConvertCardinal(CARDINAL(WAnd(date,31)),2,temp);
           WriteString(temp); (* day *)
           WriteString("/");

           ConvertCardinal(80+CARDINAL(WShr(WAnd(date,65024),9)),2,temp);
           WriteString(temp); (* year *)
           WriteString("  ");
END             FormatTD;

PROCEDURE       showtime(tick: LONGCARD);
VAR             sec            :        REAL;
                min,hour       :        LONGCARD;
BEGIN
           sec:=FLOAT(tick);
           sec:=sec/200.0;
           min:=TRUNCD(sec) DIV 60;
           hour:=min DIV 60;
           min:=min-(hour*60);
           ConvertToString(hour,10,FALSE,temp,done);
           scinit(ADR(temp),SIZE(temp));
           nxparm;
           ltext(ADR(temp),SIZE(temp));
           WriteString(temp);
           WriteString(":");
           ConvertToString(min,10,FALSE,temp,done);
           scinit(ADR(temp),SIZE(temp));
           nxparm;
           ltext(ADR(temp),SIZE(temp));
           WriteString(temp);
           WriteString(":");
           sec:=sec-FLOAT(min*60)-FLOAT(hour*3600);
           ConvertReal(sec,11,3,temp);
           scinit(ADR(temp),SIZE(temp));
           nxparm;
           ltext(ADR(temp),SIZE(temp));
           WriteString(temp);
END             showtime;

(* return time in seconds *)
PROCEDURE       converttime(time: CARDINAL): LONGCARD;
VAR                h,m,s           :           LONGCARD;
BEGIN
        h:=LONGCARD(WShr(WAnd(time,63488),11));  (* hours *)
        m:=LONGCARD(WShr(WAnd(time,2016),5));    (* minutes *)
        s:=2*LONGCARD(WAnd(time,31));            (* seconds *)
        RETURN s+(m*60)+(h*3600);
END             converttime;


BEGIN
           DoWrite:=WriteProc(FileWrite);
           IF BasePageAddress^.CmdLine[2]='z' THEN stmode:=TRUE END;
           SysDes(currentprocess);
           SysVar(sysvar);
           SuperExec(showmemory); (* return memsize *)
           WriteLn;
           WriteString(TITLE1);
           WriteString(VERSION);
           WriteString(TITLE2);
           WriteLn;
           GetTime(time);
           GetDate(date);
           WriteString(PS1);
           WriteLn;
           WriteString(PS2);
           WriteLn;
           WriteString("  ");
           FormatTD(time,date);
           ConvertToString(topusermem,10,FALSE,temp,done);
           Copy(SPACES,0,10-Length(temp),pstemp);
           Concat(temp,pstemp,temp);
           WriteString(temp);
           ConvertToString(usermemleft,10,FALSE,temp,done);
           Copy(SPACES,0,10-Length(temp),pstemp);
           Concat(temp,pstemp,temp);
           WriteString(temp);
           showtime(temphz200-sysvar.slicebegin^);
           WriteString("    ");
           ConvertToString(sysvar.contextswitch^,10,FALSE,temp,done);
           Copy(SPACES,0,14-Length(temp),pstemp);
           Concat(temp,pstemp,temp);
           WriteString(temp);
           IF sysvar.CronActive^ THEN
              WriteString("ACTIVE");
           ELSE
              WriteString("INACTIVE");
           END;
           WriteLn;
           WriteLn;
           WriteString(PS3);
           WriteLn;

           s0:=currentprocess;
           REPEAT
              IF s0^.pid#1 THEN
                 s0:=s0^.next
              END;
           UNTIL s0^.pid=1;
           REPEAT
            WITH s0^ DO
            IF stmode THEN
               IF wsp=NIL THEN dmode:=TRUE ELSE dmode:=FALSE END;
            ELSE
               IF wsp#NIL THEN dmode:=TRUE ELSE dmode:=FALSE END;
            END;
            IF dmode THEN (* display *)
              WriteString("  ");
              Copy(SPACES,0,15-Length(name),pstemp);
              Concat(name,pstemp,temp);
              WriteString(temp);
              ConvertCardinal(pid,2,temp);
              WriteString(temp);
              WriteString("  ");
              ConvertCardinal(ppid,2,temp);
              WriteString(temp);
              WriteString("   ");
              IF active THEN
                 IF ready THEN
                    WriteString("Run    ");
                 ELSE
                    WriteString("Ready  ");
                 END;
              ELSE
                 IF wsp=NIL THEN
                    WriteString("Inactive");
                 ELSE
                    WriteString("Sleep  ");
                 END;
              END;
              ConvertCardinal(pri,2,temp);
              WriteString(temp);
              WriteString("  ");
              FormatTD(time,date);
              showtime(tick);
              WriteString("  ");
              CASE Iport OF
                printer :       WriteString("P"); |
                aux     :       WriteString("A"); |
                con     :       WriteString("C"); |
                midi    :       WriteString("M"); |
                null    :       WriteString("N"); |
                dev0    :       WriteString("0"); |
                dev1    :       WriteString("1"); |
                dev2    :       WriteString("2"); |
                dev3    :       WriteString("3"); |
                dev4    :       WriteString("4"); |
                dev5    :       WriteString("5"); |
                dev6    :       WriteString("6"); |
                dev7    :       WriteString("7"); |
              END;
              WriteString("/");
              CASE Oport OF
                printer :       WriteString("P"); |
                aux     :       WriteString("A"); |
                con     :       WriteString("C"); |
                midi    :       WriteString("M"); |
                null    :       WriteString("N"); |
                dev0    :       WriteString("0"); |
                dev1    :       WriteString("1"); |
                dev2    :       WriteString("2"); |
                dev3    :       WriteString("3"); |
                dev4    :       WriteString("4"); |
                dev5    :       WriteString("5"); |
                dev6    :       WriteString("6"); |
                dev7    :       WriteString("7"); |
              END;
              WriteLn;
            END; (* if *)
            END; (* with *)
              s0:=s0^.next;
           UNTIL (s0^.pid=0);
           WriteLn;
           ConvertToString(sysvar.sysmemsize^,10,FALSE,temp,done);
           WriteString("  System Process Memory Remaining ");
           WriteString(temp);
           WriteLn;
           WriteLn;
        OldTerm;
END     ps.

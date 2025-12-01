
(*              Copyright 1988 fred brooks LogicTek             *)
(*                                                              *)
(*                                                              *)
(*   First Release                      3/26/88-FGB             *)
(*                                                              *)

MODULE run; (* MX2 program pterm code buffer program *)
FROM    GEMDOS  IMPORT  Term,Exec,ExecMode;
FROM    GEMX    IMPORT  BasePageAddress;
FROM    SCANNER IMPORT  scinit,nxparm,ltext,etext,bkparm;
FROM    SYSTEM  IMPORT  ADR,ADDRESS;
FROM    Strings IMPORT  String,Length,Pos,Concat;
VAR     i                       :       INTEGER;
        p                       :       CARDINAL;
        ok                      :       BOOLEAN;
        command,name,tail,temp  :       String;
BEGIN
        FOR i:=1 TO 79 DO
            command[i-1]:=BasePageAddress^.CmdLine[i];
        END;
        command[ORD(BasePageAddress^.CmdLine[0])]:=CHAR(0);
        scinit(ADR(command),SIZE(command));
        nxparm;
        ltext(ADR(name),SIZE(name));
        nxparm;
        etext(ADR(tail[1]),SIZE(tail));
        bkparm;
        etext(ADR(temp),SIZE(temp));
        tail[0]:=CHAR(Length(temp));
        IF Pos(name,".",0,p) THEN
                Exec(loadExecute,name,tail,"",i);
        ELSE
                temp:=name;
                Concat(name,".prg",name);
                Exec(loadExecute,name,tail,"",i);
                IF i=(-33) THEN
                        name:=temp;
                        Concat(name,".tos",name);
                        Exec(loadExecute,name,tail,"",i);
                END;
                IF i=(-33) THEN
                        name:=temp;
                        Concat(name,".ttp",name);
                        Exec(loadExecute,name,tail,"",i);
                END;
        END;
        ok:=Term(i);
END     run.


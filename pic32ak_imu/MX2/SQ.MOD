MODULE  sq;
FROM    SYSCALL         IMPORT  SpintInfo;
FROM    GEMDOS          IMPORT  Term;
FROM    Terminal        IMPORT  WriteString,WriteLn;
VAR     spintcmd        :       POINTER TO ARRAY [0..1] OF LONGCARD;
        SQ              :       PROC;
        ok              :       BOOLEAN;
BEGIN
        IF SpintInfo(0,spintcmd) THEN
           SQ:=PROC(spintcmd^[1]);
           SQ();
        ELSE
           WriteLn;
           WriteString("Background spooler not running");
           WriteLn;
           ok:=Term(-1);
        END;
        ok:=Term(0);
END     sq.

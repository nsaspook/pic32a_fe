MODULE  lp;
FROM    SYSCALL         IMPORT  Trigger,SpintInfo;
FROM    GEMDOS          IMPORT  Term;
FROM    SYSTEM          IMPORT  ADDRESS,ADR;
FROM    Terminal        IMPORT  WriteString,WriteLn;
VAR     ok              :       BOOLEAN;
        spintcmd        :       POINTER TO ARRAY [0..1] OF LONGCARD;
BEGIN
        IF SpintInfo(0,spintcmd) THEN
           spintcmd^[0]:=1;
           ok:=Trigger(0);
        ELSE
           WriteLn;
           WriteString("Background spooler not running.");
           WriteLn;
           ok:=Term(-1);
        END;
        ok:=Term(0);
END     lp.

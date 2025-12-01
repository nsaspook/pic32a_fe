MODULE  xa;
FROM    SYSCALL         IMPORT  SpintInfo,Trigger;
FROM    GEMDOS          IMPORT  Term;
FROM    Terminal        IMPORT  WriteString,WriteLn;
VAR     spintcmd        :       POINTER TO ARRAY [0..2] OF LONGCARD;
        ok              :       BOOLEAN;
BEGIN
        IF SpintInfo(1,spintcmd) THEN
           spintcmd^[0]:=99;
           ok:=Trigger(1);
        ELSE
           WriteLn;
           WriteString("Background xmodem not running");
           WriteLn;
           ok:=Term(-1);
        END;
        ok:=Term(0);
END     xa.

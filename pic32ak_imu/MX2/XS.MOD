MODULE  xs;
FROM    SYSCALL         IMPORT  SpintInfo;
FROM    GEMDOS          IMPORT  Term;
FROM    Terminal        IMPORT  WriteString,WriteLn;
VAR     spintcmd        :       POINTER TO ARRAY [0..2] OF LONGCARD;
        XS              :       PROC;
        ok              :       BOOLEAN;
BEGIN
        IF SpintInfo(1,spintcmd) THEN
           XS:=PROC(spintcmd^[1]);
           XS();
        ELSE
           WriteLn;
           WriteString("Background xmodem not running");
           WriteLn;
           ok:=Term(-1);
        END;
        ok:=Term(0);
END     xs.

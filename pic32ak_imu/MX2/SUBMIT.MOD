
(*              Copyright 1987 fred brooks LogicTek             *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(*                                                              *)

MODULE submit;

FROM SYSTEM IMPORT ADDRESS;
FROM GEMX   IMPORT BasePageAddress ;
FROM XBIOS  IMPORT IOREC,IORECPTR,SerialDevice,IORec;
FROM    GEMDOS  IMPORT  OldTerm;
VAR         char                        :       CHAR;
            i                           :       CARDINAL;
            kbdiorec                    :       IORECPTR;
            ibuf                        :       POINTER TO ARRAY [0..63] OF
                                                LONGCARD;

BEGIN;
    kbdiorec:=IORec(Keyboard);
    ibuf:=kbdiorec^.ibuf;
    char:=BasePageAddress^.CmdLine[1];
    FOR i:=1 TO ORD(BasePageAddress^.CmdLine[0])+1 DO
        ibuf^[i]:=LONGCARD(BasePageAddress^.CmdLine[i]);
    END;
    ibuf^[ORD(BasePageAddress^.CmdLine[0])+1]:=LONGCARD(0dH);
    kbdiorec^.ibufhd:=0;
    kbdiorec^.ibuftl:=(ORD(BasePageAddress^.CmdLine[0])+1)*4;
    OldTerm;
END submit.

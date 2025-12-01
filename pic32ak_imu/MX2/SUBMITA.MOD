
(*              Copyright 1987 fred brooks LogicTek             *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(*                                                              *)

(*$A+ *)
MODULE submita;
FROM SYSTEM IMPORT ADDRESS;
FROM GEMX   IMPORT BasePageAddress ;
FROM XBIOS  IMPORT IOREC,IORec,IORECPTR,SerialDevice;
FROM GEMDOS IMPORT OldTerm;
VAR         char                        :      CHAR;
            i,count                     :      CARDINAL;
            kbdiorec                    :      IORECPTR;
            ibuf                        :      POINTER TO ARRAY [0..255] OF
                                               CHAR;
        
BEGIN;
    kbdiorec:=IORec(RS232);
    ibuf:=kbdiorec^.ibuf;
    char:=BasePageAddress^.CmdLine[1];
    count:=ORD(BasePageAddress^.CmdLine[0])+1;
    IF count>78 THEN count:=78 END;
    FOR i:=1 TO count DO
        ibuf^[i]:=CHAR(BasePageAddress^.CmdLine[i]);
    END;
    ibuf^[count]:=CHAR(0dH);
    kbdiorec^.ibufhd:=0;
    kbdiorec^.ibuftl:=count;
    OldTerm;
END submita.

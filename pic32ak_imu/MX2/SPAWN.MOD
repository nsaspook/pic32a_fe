
(*              Copyright 1987 fred brooks LogicTek             *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(*                                                              *)

(*$A+,$S-,$T- *)
MODULE  spawn;
FROM    ATOMIC  IMPORT  MultiBegin,sysvariable,GEMTYPE,ROMDATE,
                        OTOS,MTOS,OLDDATE,NEWDATE;
FROM    SYSCALL IMPORT  SysVar,Sleep;
FROM    SYSTEM  IMPORT  ADDRESS;
FROM    GEMDOS  IMPORT  OldTerm;
VAR           sv                              : sysvariable;
              gem1     [OTOS]                 : POINTER TO GEMTYPE;
              gem2     [MTOS]                 : POINTER TO GEMTYPE;

BEGIN
                SysVar(sv);
                IF ROMDATE=OLDDATE THEN
                   sv.bpsave^:=gem1^;
                   sv.bpsave^[0]:=ADDRESS(gem1);
                END;
                IF ROMDATE=NEWDATE THEN
                   sv.bpsave^:=gem2^;
                   sv.bpsave^[0]:=ADDRESS(gem2);
                END;
                MultiBegin;
                Sleep;
                OldTerm;
END     spawn.

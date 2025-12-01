
(*              Copyright 1987 fred brooks LogicTek             *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(*                                                              *)

(*$S-,$T- *)
MODULE  SYS;
FROM    SYSCALL IMPORT  SysCmd;
FROM    GEMDOS  IMPORT  OldTerm;
BEGIN
        SysCmd; (* submit to kernal *)
        OldTerm;
END     SYS.

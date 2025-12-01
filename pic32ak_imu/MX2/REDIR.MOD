
(*              Copyright 1987 fred brooks LogicTek             *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(*                                                              *)

MODULE redir;
(*$T- *)
FROM SYSTEM IMPORT ADDRESS, CODE, REGISTER, SETREG;
FROM GEMX   IMPORT BasePageAddress, BasePageType ;
FROM GEMDOS IMPORT TermRes;
FROM XBIOS  IMPORT SuperExec;
VAR         cmd,dev,a7,sr,port,oldbios  :       ADDRESS;
            bios [0b4H]                 :       ADDRESS;
            aline [28H]                 :       ADDRESS;
            gem   [88H]                 :       ADDRESS;
            char                        :       CHAR;

(*$P-,$S- *)
PROCEDURE       changedevbios;
BEGIN
        CODE(48e7H,0fffeH);     (* save regs *)
        CODE(306fH,60);         (* move.w 60(a7),a0  get sr *)
        sr:=REGISTER(8);
        IF sr<3ffH THEN        (* called from user mode *)
           CODE(204fH);            (* move.l a7,a0 *)
           a7:=REGISTER(8);        (* save ssp *)
           CODE(4e68H,2e48H);      (* move.l usp,a0  move.l a0,a7 *)
           CODE(306fH,2);  (* move.w 2(a7),a0 *)
           dev:=REGISTER(8);
           CODE(306fH,0);  (* move.w 0(a7),a0 *)
           cmd:=REGISTER(8);
           IF (cmd=1) OR (cmd=2) OR (cmd=3) OR (cmd=8) THEN
              IF dev=2 THEN
                 dev:=port; (* change to port *)
                 SETREG(8,dev);
                 CODE(3f48H,2); (* move.w a0,2(a7) set value in stack *)
              END;
           END;
           SETREG(8,a7);
           CODE(2e48H);            (* move.l a0,a7 *)
        ELSE                       (* called from super mode *)
           CODE(306fH,68);  (* move.w 68(a7),a0 *)
           dev:=REGISTER(8);
           CODE(306fH,66);  (* move.w 66(a7),a0 *)
           cmd:=REGISTER(8);
           IF (cmd=1) OR (cmd=2) OR (cmd=3) OR (cmd=8) THEN
              IF dev=2 THEN
                 dev:=port; (* change to port *)
                 SETREG(8,dev);
                 CODE(3f48H,68); (* move.w a0,68(a7) set value in stack *)
              END;
           END;
        END;
        SETREG(8,oldbios);  (* move trap adr *)
        CODE(43faH,10); (* lea 12(pc),a1 *)
        CODE(2288H); (* move.l a0,(a1) *)
        CODE(4cdfH,7fffH); (* restore regs movem *)
        CODE(4ef9H,0,0) (* jmp back to routine *)
END             changedevbios;
(*$P+,$S+ *)
        
(*$P-,$S- *)
PROCEDURE       dummyvector;
BEGIN
        CODE(4e73H); (* rte *)
END             dummyvector;
(*$P+,$S+ *)
        
(*$P-,$S- *)
PROCEDURE       setup;
BEGIN
        oldbios:=bios;
        bios:=ADDRESS(changedevbios);
(*        aline:=ADDRESS(dummyvector); *)
        gem:=ADDRESS(dummyvector);
        CODE(4e75H);    (* RTS *)
END             setup;
(*$P+,$S+ *)
        
BEGIN;
    char:=BasePageAddress^.CmdLine[1];
    IF (char='m') OR (char='M') THEN
       port:=3;   (* midi *)
    ELSE
       port:=1;   (* aux  *)
    END;
    SuperExec(setup);
    WITH BasePageAddress^ DO
    TermRes(CodeLen+BssLen+LONGCARD(CodeBase-ADDRESS(BasePageAddress)),0);
    END;
END redir.

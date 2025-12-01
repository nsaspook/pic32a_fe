
(*              Copyright 1987 fred brooks LogicTek             *)
(*                                                              *)
(*                                                              *)
(*  1.0.0 First Release                      12/8/87-FGB        *)
(*  1.0.1 Changed to trap #9 because of possible conflict with  *)
(*        JSM2 coroutines                    12/9/87-FGB        *)
(*                                                              *)

IMPLEMENTATION MODULE NEWSYS; (*$S-,$T- *)
FROM           SYSTEM   IMPORT  ADDRESS,CODE,SETREG,REGISTER,ADR;

FROM    GEMDOS  IMPORT  Super,Alloc,Free; 

TYPE           trappointer      =       POINTER TO PROC;
               processpointer   =       POINTER TO ADDRESS;
TYPE           iotype   =       RECORD
                                        p1      : processpointer;
                                        p2      : processpointer;
                                        device  : ADDRESS;
                                END;
VAR            pc,ssv                           : ADDRESS;
               io1,io2                          : processpointer;
               sr,function                      : CARDINAL;
               iotranspointer                   : iotype;
               trap                             : trappointer;
               pr1,pr2,wsp                      : ADDRESS;
               n                                : LONGCARD;
               init                             : BOOLEAN;

PROCEDURE  NEWPROCESS(processProc       :  PROC;
                      workspace         :  ADDRESS;
                      worksize          :  LONGCARD;
                      VAR process       :  ADDRESS);
BEGIN
        IF NOT init THEN
           INITPROCESSES;
        END;
        workspace:=workspace+ADDRESS(worksize);
        SETREG(6,ADDRESS(processProc));
        SETREG(8,workspace);
        CODE(2106H);    (* move.l d6,-(a0) PC *)
        CODE(313cH,0300H);      (* move.w $0300,-(a0)   CCR  *)
        CODE(48e0H,0fffeH);     (* movem.l d0-d7/a0-a6,-(a0) *)
        process:=REGISTER(8);
END        NEWPROCESS;

PROCEDURE  TRANSFER(VAR p1,p2: ADDRESS);
BEGIN      (* pass p1 and p2 as the location of these variables *)
        IF NOT init THEN
           INITPROCESSES;
        END;
           SETREG(0,ADR(p2));
           CODE(2f00H); (* move.l d0,-(sp) *)
           SETREG(0,ADR(p1));
           CODE(2f00H); (* move.l d0,-(sp) *)
           CODE(3f3cH,1); (* move.w #1,-(sp) *)
           CODE(4e49H); (* trap #9 *)
           CODE(0dffcH,0,10); (* add.l #10,sp *)
END        TRANSFER;

PROCEDURE  IOTRANSFER(VAR p1,p2: ADDRESS; device: ADDRESS);
BEGIN      (* pass p1 and p2 as the location of these variables *)
        IF NOT init THEN
           INITPROCESSES;
        END;
           SETREG(0,device);
           CODE(2f00H); (* move.l d0,-(sp) *)
           SETREG(0,ADR(p2));
           CODE(2f00H); (* move.l d0,-(sp) *)
           SETREG(0,ADR(p1));
           CODE(2f00H); (* move.l d0,-(sp) *)
           CODE(3f3cH,2); (* move.w #2,-(sp) *)
           CODE(4e49H); (* trap #9 *)
           CODE(0dffcH,0,14); (* add.l #14,sp *)
END        IOTRANSFER;

(*$P- *)
PROCEDURE       PTRAP; 
BEGIN
        CODE(043374B,2700H); (* disable ints *)
        CODE(48e7H,0fffeH);   (* save regs movem  *)
        CODE(306fH,60); (* move.w 60(a7),a0 get sr *)
        sr:=CARDINAL(REGISTER(8));
        IF sr>3fffH THEN         (* called from supermode, not valid *)
           CODE(4cdfH,7fffH);    (* restore regs movem *)
           CODE(4e73H);          (* rte go back to where we came from *)
        END;

        CODE(4e69H);        (* move.l usp,a1 *)
        CODE(3069H,0);      (* move.w 0(a1),a0 *)
        function:=CARDINAL(REGISTER(8));
        CODE(4e69H);        (* move.l usp,a1 *)
        CODE(2069H,2);      (* move.l 2(a1),a0 *)
        iotranspointer.p1:=REGISTER(8);
        CODE(4e69H);        (* move.l usp,a1 *)
        CODE(2069H,6);      (* move.l 6(a1),a0 *)
        iotranspointer.p2:=REGISTER(8);
        CODE(4e69H);        (* move.l usp,a1 *)
        CODE(2069H,10);     (* move.l 10(a1),a0 *)
        iotranspointer.device:=REGISTER(8);

        CASE function OF
             1  : CODE(4e68H); (* move.l usp,a0 TRANSFER *) (* SAVE *)
                  CODE(0dffcH,0,42H); (* add.l #66,sp *)
                  CODE(2127H); (* move.l -(sp),-(a0) D0 *)
                  CODE(2127H); (* move.l -(sp),-(a0) D1 *)
                  CODE(2127H); (* move.l -(sp),-(a0) D2 *)
                  CODE(2127H); (* move.l -(sp),-(a0) D3 *)
                  CODE(2127H); (* move.l -(sp),-(a0) D4 *)
                  CODE(2127H); (* move.l -(sp),-(a0) D5 *)
                  CODE(2127H); (* move.l -(sp),-(a0) D6 *)
                  CODE(2127H); (* move.l -(sp),-(a0) D7 *)
                  CODE(2127H); (* move.l -(sp),-(a0) A0 *)
                  CODE(2127H); (* move.l -(sp),-(a0) A1 *)
                  CODE(2127H); (* move.l -(sp),-(a0) A2 *)
                  CODE(2127H); (* move.l -(sp),-(a0) A3 *)
                  CODE(2127H); (* move.l -(sp),-(a0) A4 *)
                  CODE(2127H); (* move.l -(sp),-(a0) A5 *)
                  CODE(2127H); (* move.l -(sp),-(a0) A6 *)
                  CODE(3127H); (* move.w -(sp),-(a0) SR *)
                  CODE(2127H); (* move.l -(sp),-(a0) PC *)
                  iotranspointer.p1^:=REGISTER(8); (* set p1 to process *)
                  
                  SETREG(8,iotranspointer.p2^); (* load p2 to a0 RESTORE *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D0 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D1 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D2 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D3 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D4 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D5 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D6 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D7 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ A0 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ A1 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ A2 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ A3 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ A4 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ A5 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ A6 *)
                  CODE(3ed8H); (* move.w (a0)+,(sp)+ SR *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ PC *)
                  CODE(9ffcH,0,42H); (* sub.l #66,sp *)
                  CODE(4e60H); (* move.l a0,usp *)
                  CODE(4cdfH,7fffH);    (* restore regs movem *)
                  CODE(4e73H); |        (* rte *)

             2  : CODE(4e68H); (* move.l usp,a0 IOTRANSFER *) (* SAVE *)
                  CODE(0dffcH,0,42H); (* add.l #66,sp *)
                  CODE(2127H); (* move.l -(sp),-(a0) D0 *)
                  CODE(2127H); (* move.l -(sp),-(a0) D1 *)
                  CODE(2127H); (* move.l -(sp),-(a0) D2 *)
                  CODE(2127H); (* move.l -(sp),-(a0) D3 *)
                  CODE(2127H); (* move.l -(sp),-(a0) D4 *)
                  CODE(2127H); (* move.l -(sp),-(a0) D5 *)
                  CODE(2127H); (* move.l -(sp),-(a0) D6 *)
                  CODE(2127H); (* move.l -(sp),-(a0) D7 *)
                  CODE(2127H); (* move.l -(sp),-(a0) A0 *)
                  CODE(2127H); (* move.l -(sp),-(a0) A1 *)
                  CODE(2127H); (* move.l -(sp),-(a0) A2 *)
                  CODE(2127H); (* move.l -(sp),-(a0) A3 *)
                  CODE(2127H); (* move.l -(sp),-(a0) A4 *)
                  CODE(2127H); (* move.l -(sp),-(a0) A5 *)
                  CODE(2127H); (* move.l -(sp),-(a0) A6 *)
                  CODE(3127H); (* move.w -(sp),-(a0) SR *)
                  CODE(2127H); (* move.l -(sp),-(a0) PC *)
                  iotranspointer.p1^:=REGISTER(8); (* set p1 to process *)
                  io1:=iotranspointer.p1;
                  
                  io2:=iotranspointer.p2;
                  SETREG(8,iotranspointer.p2^); (* load p2 to a0 RESTORE *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D0 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D1 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D2 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D3 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D4 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D5 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D6 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ D7 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ A0 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ A1 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ A2 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ A3 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ A4 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ A5 *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ A6 *)
                  CODE(3ed8H); (* move.w (a0)+,(sp)+ SR *)
                  CODE(2ed8H); (* move.l (a0)+,(sp)+ PC *)
                  CODE(9ffcH,0,42H); (* sub.l #66,sp *)
                  CODE(4e60H); (* move.l a0,usp *)
                  trap:=trappointer(iotranspointer.device); (* TRAP ADR *)
                  trap^:=ITRAP; (* set trap to IOTRANSFER int code *)
                  CODE(4cdfH,7fffH);    (* restore regs movem *)
                  CODE(4e73H); |        (* rte *)
        END;

        CODE(4cdfH,7fffH);    (* restore regs movem *)
        CODE(4e73H);          (* rte *)
END             PTRAP;
(*$P+ *)

(*$P- *)
PROCEDURE       ITRAP;
BEGIN
        CODE(043374B,2700H); (* disable ints *)
        CODE(48e7H,0fffeH);   (* save regs movem  *)
        CODE(4e68H); (* move.l usp,a0 TRANSFER *) (* SAVE *)
        CODE(0dffcH,0,42H); (* add.l #66,sp *)
        CODE(2127H); (* move.l -(sp),-(a0) D0 *)
        CODE(2127H); (* move.l -(sp),-(a0) D1 *)
        CODE(2127H); (* move.l -(sp),-(a0) D2 *)
        CODE(2127H); (* move.l -(sp),-(a0) D3 *)
        CODE(2127H); (* move.l -(sp),-(a0) D4 *)
        CODE(2127H); (* move.l -(sp),-(a0) D5 *)
        CODE(2127H); (* move.l -(sp),-(a0) D6 *)
        CODE(2127H); (* move.l -(sp),-(a0) D7 *)
        CODE(2127H); (* move.l -(sp),-(a0) A0 *)
        CODE(2127H); (* move.l -(sp),-(a0) A1 *)
        CODE(2127H); (* move.l -(sp),-(a0) A2 *)
        CODE(2127H); (* move.l -(sp),-(a0) A3 *)
        CODE(2127H); (* move.l -(sp),-(a0) A4 *)
        CODE(2127H); (* move.l -(sp),-(a0) A5 *)
        CODE(2127H); (* move.l -(sp),-(a0) A6 *)
        CODE(3127H); (* move.w -(sp),-(a0) SR *)
        CODE(2127H); (* move.l -(sp),-(a0) PC *)
        io2^:=REGISTER(8); (* set interrupted process to process *)
                  
        SETREG(8,io1^); (* load iotransfer process to a0 RESTORE *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ D0 *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ D1 *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ D2 *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ D3 *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ D4 *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ D5 *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ D6 *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ D7 *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ A0 *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ A1 *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ A2 *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ A3 *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ A4 *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ A5 *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ A6 *)
        CODE(3ed8H); (* move.w (a0)+,(sp)+ SR *)
        CODE(2ed8H); (* move.l (a0)+,(sp)+ PC *)
        CODE(9ffcH,0,42H); (* sub.l #66,sp *)
        CODE(4e60H); (* move.l a0,usp *)
        CODE(4cdfH,7fffH);    (* restore regs movem *)
        CODE(4e73H);         (* rte *)
END             ITRAP;
(*$P+ *)

PROCEDURE  INITPROCESSES;
BEGIN
        ssv:=0;
        Super(ssv);
        trap:=trappointer(TRAP);
        trap^:=PTRAP;
        Super(ssv);
        init:=TRUE;
END        INITPROCESSES;

BEGIN
END               NEWSYS.

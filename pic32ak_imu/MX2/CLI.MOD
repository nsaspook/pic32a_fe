
(*              Copyright 1987 fred brooks LogicTek             *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(*                                                              *)

MODULE cli;
(*$T-,$S-,$A+ *)
(* IMPORT  GEMError; *)
FROM SYSTEM IMPORT ADDRESS, CODE, REGISTER, SETREG;
FROM GEMDOS IMPORT Super,Exec,ExecMode,OldTerm;
FROM BIOS   IMPORT BConStat, BConIn, Device;
FROM XBIOS  IMPORT SuperExec;
FROM LOGIN  IMPORT login;
VAR         cmd,dev,sr,pc,oldbios,sp,tsp,usp,newbios    :       ADDRESS;
            bios [0b4H]                     :       ADDRESS;
            d0,ssv,sspval                   :       ADDRESS;
            i                               :       INTEGER;
            active                          :       BOOLEAN;
            delay,result                    :       INTEGER;

(*$P-,$S- *)
PROCEDURE       multitaskbios;
BEGIN
        CODE(2279H,0,4a2H);     (* load saveptr *)
        CODE(48e1H,1f1fH);      (* save regs *)
        CODE(23c9H,0,4a2H);     (* update saveptr *)
        IF active THEN
           SETREG(8,oldbios);  (* move trap adr *)
           CODE(43faH,22); (* lea 26(pc),a1 *)
           CODE(2288H); (* move.l a0,(a1) *)
           CODE(2279H,0000,04a2H); (* get saveptr *)
           CODE(4cd9H,0f8f8H); (* restore regs movem *)
           CODE(23c9H,0000,04a2H); (* update saveptr *)
           CODE(4ef9H,0,0) (* jmp back to routine *)
        END;
        CODE(306fH,0);         (* move.w 0(a7),a0  get sr *)
        sr:=REGISTER(8);
        CODE(206fH,2);         (* move.l 2(a7),a0  get pc *)
        pc:=REGISTER(8);

        IF sr<3ffH THEN        (* called from user mode *)
           CODE(4e69H);        (* move.l usp,a1 *)
           CODE(3069H,2);      (* move.w 2(a1),a0 *)
           dev:=REGISTER(8);
           CODE(4e69H);        (* move.l usp,a1 *)
           CODE(3069H,0);      (* move.w 0(a1),a0 *)
           cmd:=REGISTER(8);
           IF (cmd=2) THEN
                 active:=TRUE;
                 INC(delay);
                 CODE(5c8fH); (* addq.l #6,a7 correct stack *)
                 sp:=REGISTER(15);
                 REPEAT
                    (* set user mode then back to super *)
                    IF sp=sspval THEN
                       tsp:=REGISTER(15);
                       CODE(4e68H);     (* move.l usp,a0 *)
                       usp:=REGISTER(8);
                       CODE(46fcH,300H); (* move.w $300,sr *)
                       FOR i:=0 TO 10 DO END; (* busy loop for mx2 *)
                       CODE(42a7H);      (* clr.l  -(sp) *)
                       CODE(3f3cH,20H);  (* move.w $20,-(sp) *)
                       CODE(4e41H);      (* trap #1 *) 
                       SETREG(15,tsp);
                       SETREG(8,usp);
                       CODE(4e60H);     (* move.l a0,usp *)
                    END;
                    CODE(48e7H,7ffeH); (* save regs *)
                    CODE(9bcdH);       (* clr a5 *)
                    newbios:=bios;
                    bios:=oldbios;
                    SETREG(0,0);
                    IF BConStat(Device(dev)) THEN SETREG(0,-1) END;
                    bios:=newbios;
                    CODE(4cdfH,7ffeH); (* restore regs *)
                    d0:=REGISTER(0);
                 UNTIL d0#0;
                 CODE(48e7H,7ffeH); (* save regs *)
                 CODE(9bcdH);       (* clr a5 *)
                 newbios:=bios;
                 bios:=oldbios;
                 SETREG(0,BConIn(Device(dev)));
                 bios:=newbios;
                 CODE(4cdfH,7ffeH); (* restore regs *)
                 d0:=REGISTER(0);
                 SETREG(9,pc);
                 CODE(2f09H);        (* push pc to stack *)
                 SETREG(9,sr);
                 CODE(3f09H);        (* push sr to stack *)
                 active:=FALSE; 
                 SETREG(0,d0);       (* move char to d0 *)
                 CODE(2279H,0000,04a2H); (* get saveptr *)
                 CODE(4cd9H,0f8f8H); (* restore regs movem *)
                 CODE(23c9H,0000,04a2H); (* update saveptr *)
                 CODE(4e73H);        (* rte *) 
           END;
           IF (cmd=1) THEN
                 active:=TRUE;
                 INC(delay);
                 CODE(5c8fH); (* addq.l #6,a7 correct stack *)
                 sp:=REGISTER(15);
                 CODE(48e7H,7ffeH); (* save regs *)
                 CODE(9bcdH);       (* clr a5 *)
                 newbios:=bios;
                 bios:=oldbios;
                 SETREG(0,0);
                 IF BConStat(Device(dev)) THEN SETREG(0,-1) END;
                 bios:=newbios;
                 d0:=REGISTER(0);
                 CODE(4cdfH,7ffeH); (* restore regs *)
                 IF d0=0 THEN 
                    (* set user mode then back to super *)
                    IF sp=sspval THEN
                       tsp:=REGISTER(15);
                       CODE(4e68H);     (* move.l usp,a0 *)
                       usp:=REGISTER(8);
                       CODE(46fcH,300H); (* move.w $300,sr *)
                       FOR i:=0 TO 10 DO END; (* busy loop for mx2 *)
                       CODE(42a7H);      (* clr.l  -(sp) *)
                       CODE(3f3cH,20H);  (* move.w $20,-(sp) *)
                       CODE(4e41H);      (* trap #1 *) 
                       SETREG(15,tsp);
                       SETREG(8,usp);
                       CODE(4e60H);     (* move.l a0,usp *)
                    END;
                 END;
                 SETREG(9,pc);
                 CODE(2f09H);        (* push pc to stack *)
                 SETREG(9,sr);
                 CODE(3f09H);        (* push sr to stack *)
                 active:=FALSE; 
                 SETREG(0,d0);       (* move char to d0 *)
                 CODE(2279H,0000,04a2H); (* get saveptr *)
                 CODE(4cd9H,0f8f8H); (* restore regs movem *)
                 CODE(23c9H,0000,04a2H); (* update saveptr *)
                 CODE(4e73H);        (* rte *) 
           END;
        ELSE                       (* called from super mode *)
           CODE(306fH,8);  (* move.w 8(a7),a0 *)
           dev:=REGISTER(8);
           CODE(306fH,6);  (* move.w 6(a7),a0 *)
           cmd:=REGISTER(8);
           IF (cmd=2) THEN
                 CODE(5c8fH); (* addq.l #6,a7 correct stack *)
                 REPEAT
                    CODE(48e7H,7ffeH); (* save regs *)
                    CODE(9bcdH);       (* clr a5 *)
                    newbios:=bios;
                    bios:=oldbios;
                    SETREG(0,0);
                    IF BConStat(Device(dev)) THEN SETREG(0,-1) END;
                    bios:=newbios;
                    CODE(4cdfH,7ffeH); (* restore regs *)
                    d0:=REGISTER(0);
                 UNTIL d0#0;
                 CODE(48e7H,7ffeH); (* save regs *)
                 CODE(9bcdH);       (* clr a5 *)
                 newbios:=bios;
                 bios:=oldbios;
                 SETREG(0,BConIn(Device(dev)));
                 bios:=newbios;
                 CODE(4cdfH,7ffeH); (* restore regs *)
                 d0:=REGISTER(0);
                 SETREG(9,pc);
                 CODE(2f09H);        (* push pc to stack *)
                 SETREG(9,sr);
                 CODE(3f09H);        (* push sr to stack *) 
                 SETREG(0,d0);       (* move char to d0 *)
                 CODE(2279H,0000,04a2H); (* get saveptr *)
                 CODE(4cd9H,0f8f8H); (* restore regs movem *)
                 CODE(23c9H,0000,04a2H); (* update saveptr *)
                 CODE(4e73H);        (* rte *) 
           END;
        END;

        SETREG(8,oldbios);  (* move trap adr *)
        CODE(43faH,22); (* lea 26(pc),a1 *)
        CODE(2288H); (* move.l a0,(a1) *)
        CODE(2279H,0000,04a2H); (* get saveptr *)
        CODE(4cd9H,0f8f8H); (* restore regs movem *)
        CODE(23c9H,0000,04a2H); (* update saveptr *)
        CODE(4ef9H,0,0) (* jmp back to routine *)

END             multitaskbios;
(*$P+ *)
        
(*$P- *)
PROCEDURE       dummyvector;
BEGIN
        CODE(4e73H); (* rte *)
END             dummyvector;
(*$P+ *)
        
(*$P- *)
PROCEDURE       setup;
BEGIN
        oldbios:=bios;
        bios:=ADDRESS(multitaskbios);
        CODE(4e75H);    (* RTS *)
END             setup;
(*$P+ *)
        
(*$P- *)
PROCEDURE       setdown;
BEGIN
        bios:=oldbios;
        CODE(4e75H);    (* RTS *)
END             setdown;
(*$P+ *)
        
BEGIN;
    ssv:=0H;
    Super(ssv);
    sspval:=ssv;
    Super(ssv);
    SuperExec(setup);
    login;
    SuperExec(setdown);
    OldTerm;
END cli.

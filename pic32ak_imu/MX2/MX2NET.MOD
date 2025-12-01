
(*              Copyright 1987 fred brooks LogicTek             *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(*                                                              *)

MODULE mx2net; (*$S-,$T-,$A+ *)
FROM    SYSTEM  IMPORT  CODE,ADDRESS;
FROM    NETWORK IMPORT  initnetwork,recframe;
FROM    GEMX    IMPORT  BasePageAddress;
FROM    GEMDOS  IMPORT  TermRes,Super;
FROM    BIOS    IMPORT  Device;
VAR
       vblptr [456H]                            : POINTER TO ARRAY [0..7]
                                                  OF ADDRESS;
       i                                        : CARDINAL;
       ssv                                      : ADDRESS;

(*      it runs as a background process in a vbl time slot              *)
(*$P- *)
PROCEDURE VBLrecframe; 
BEGIN
        CODE(02f39H,0,04a2H); (* move.l $4a2,-(sp) save BIOS pointer *)
        CODE(04b9H,0,02eH,0,04a2H); (* sub 46 from pointer *)
        recframe; (* check network for data *)
        CODE(023dfH,0,04a2H); (* restore BIOS pointer *)
        CODE(4e75H); (* rts *)
END     VBLrecframe;
(*$P+ *)

BEGIN
        initnetwork(HSS);
        i:=0;
        ssv:=0;
        Super(ssv);
        WHILE vblptr^[i]#0H DO
              INC(i);
        END;
         (* set up vbl vector for NETWORK input *)
        vblptr^[i] := ADDRESS(VBLrecframe);
        Super(ssv);
    WITH BasePageAddress^ DO
    TermRes(CodeLen+BssLen+LONGCARD(CodeBase-ADDRESS(BasePageAddress)),0);
    END;
END     mx2net.


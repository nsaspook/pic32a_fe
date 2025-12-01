
(*              Copyright 1987,1988 fred brooks LogicTek        *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(* Added code to tell the context switcher the value of the     *)
(* ACC Super Stack to help it with multitasking gem programs    *)
(*                                      3/9/88-FGB              *)
(*                                                              *)

MODULE acc;
(*$T-,$S-*)
FROM ATOMIC          IMPORT VERSION;
FROM SYSTEM          IMPORT ADDRESS,ADR;
FROM GEMDOS          IMPORT Super,ConOut;
FROM AESApplications IMPORT ApplInitialise;
FROM AESMenus        IMPORT MenuRegister;
FROM AESEvents       IMPORT EventMultiple;
FROM GEMAESbase      IMPORT AccessoryOpen;
FROM AESForms        IMPORT FormAlert;

VAR
  applID                            : INTEGER;  (* desk application ID *)
  menuID,waittime                   : INTEGER;  (* menu ID *)
  Msg                               : ARRAY [0..16] OF INTEGER;
  handle, events, x,emask,b         : INTEGER;
  ssv,stacksave                     : ADDRESS;
  superstack [144H]                 : ADDRESS;
  mx2run                            : BOOLEAN;


BEGIN
  (* initialise application & install desk accessory *)
  applID := ApplInitialise();
  menuID := MenuRegister(applID,VERSION);
  emask:=48; (* timer and message *)
  waittime:=10000; (* check every 10 seconds to see if mx2 is running *)
  mx2run:=FALSE;

  ssv:=0;
  Super(ssv);           (* in super mode *)
  superstack:=ssv;      (* save superstack value for context switcher *)
  stacksave:=ssv;
  Super(ssv);           (* return to gem stack space *)
  LOOP
    events := EventMultiple(emask,0,0,0,
                            0,0,0,0,0,
                            0,0,0,0,0,
                            ADR(Msg),
                            waittime,0,
                            x,x,x,x,
                            x,x);
  IF NOT mx2run THEN
     ssv:=0;
     Super(ssv);           (* in super mode *)
     IF superstack#stacksave THEN
        waittime:=0; (* set timer to zero *)
        mx2run:=TRUE;
     END;
     Super(ssv);           (* return to gem stack space *)
  END;
  IF Msg[0]=AccessoryOpen THEN
        IF emask=48 THEN b:=1 ELSE b:=2 END;
        ConOut(7c);
        x:=FormAlert(b,"[2][Fred Brooks LogicTek| |     Switch|MX2 Desk Accessory][ON|OFF]");
        Msg[0]:=0;
        IF x=1 THEN
           emask:=48; (* message and timer *)
        ELSE
           emask:=16; (* just message *)
        END;
  END;
  END;
END acc.

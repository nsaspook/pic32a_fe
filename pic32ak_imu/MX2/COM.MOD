
(*              Copyright 1987 fred brooks LogicTek             *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(*                                                              *)

MODULE  com;
FROM    XBIOS   IMPORT  ConfigureRS232,SerialSpeed,FlowFlavor;
FROM    BIOS    IMPORT  BConStat,BCosStat,BConIn,BConOut,Device;
FROM    GEMX    IMPORT  BasePageAddress;
FROM    GEMDOS  IMPORT  OldTerm;
VAR     longchar        :       LONGCARD;
        t               :       BITSET;
        char            :       CHAR;
        port            :       Device;
BEGIN
        char:=BasePageAddress^.CmdLine[1];
        IF (char='m') OR (char='M') THEN
           port:=HSS;
        ELSE
           port:=AUX;
        END;
        IF port=AUX THEN
           IF (char=0c) THEN
              ConfigureRS232(BPS1200,NONE,-1,-1,-1,-1); 
           END; 
           IF (char='0') THEN
              ConfigureRS232(BPS300,NONE,-1,-1,-1,-1); 
           END; 
           IF (char='1') THEN
              ConfigureRS232(BPS1200,NONE,-1,-1,-1,-1); 
           END; 
           IF (char='2') THEN
              ConfigureRS232(BPS2400,NONE,-1,-1,-1,-1); 
           END; 
           IF (char='4') THEN
              ConfigureRS232(BPS4800,NONE,-1,-1,-1,-1); 
           END; 
           IF (char='9') THEN
              ConfigureRS232(BPS9600,NONE,-1,-1,-1,-1); 
           END; 
           IF (char='h') OR (char='H') THEN
              ConfigureRS232(BPS19200,NONE,-1,-1,-1,-1); 
           END; 
        END;
        LOOP
                IF BConStat(CON) THEN (* read keyboard *)
                   longchar:=BConIn(CON);
                   IF (longchar DIV 65536) = 61H THEN EXIT END;
                   char:=CHAR(longchar); 
                   BConOut(port,char);
                END;

                IF BConStat(port) THEN (* read com port *)
                   longchar:=BConIn(port);
                   t:=BITSET(longchar);
                   EXCL(t,7);
                   char:=CHAR(t); 
                   BConOut(CON,char);
                END;
        END;
        OldTerm;
END     com.

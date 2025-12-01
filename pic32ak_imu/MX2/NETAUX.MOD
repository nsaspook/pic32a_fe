(*$T-,$S-,$A+ *)
MODULE  netaux;
FROM    NETWORK         IMPORT  initnetwork,recframe;
FROM    BIOS            IMPORT  Device;
FROM    SYSCALL         IMPORT  SwapProcess;
BEGIN
        initnetwork(AUX);
        LOOP
                recframe;
                SwapProcess;
        END;
END     netaux.


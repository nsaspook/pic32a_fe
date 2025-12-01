(*$T-,$S-,$A+ *)
MODULE  netmidi;
FROM    NETWORK         IMPORT  initnetwork,recframe;
FROM    BIOS            IMPORT  Device;
FROM    SYSCALL         IMPORT  SwapProcess;
BEGIN
        initnetwork(HSS);
        LOOP
                recframe;
                SwapProcess;
        END;
END     netmidi.


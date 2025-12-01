/* These are some interface routines for MX2 using C. It is written     */
/* using Mark Johnson's Shareware C compiler version 1.2                */
/* If I receive requests maybe I will write a complete interface or     */
/* someone else can feel free.                                          */


#define MX2GLOBAL       0x144L
#define MX2MAGIC        22261L
struct  PIPE    {
        char    pipename[80];
        short   buf[1024];
        int     bufsize;
        int     bufhead;
        int     buftail;
        int     cnt;
};
struct  sysreq  {
        int     req;
        int     pid;
        long    magic;
};
struct  spinttype {
        long    proc;
        int     pid;
        long    data;
};
struct  sysvar  {
        long    *currentprocess;
        int     *MULTI;
        long    *slicebegin;
        long    *contextswitch;
        long    *command;
        long    *request;
        long    *CRON;
        int     *spintenable;
        int     *spintmask;
        long    *spint;
        long    *bpsave;
        long    *pipes;
        long    *sysmemsize;
        long    *gemsaveGvec;
        long    *StartProcess; /* The following are pointers to fuctions */
        long    *SwapProcess;
        long    *TermProcess;
        long    *NextPid;
        long    *SleepProcess;
        long    *WakeupProcess;
        long    *ChangeProcessPriority;
        long    *MultiBegin;
        long    *MultiEnd;
        long    *DozeProcess;
        long    *WaitProcess;
};
        struct  sysvar  *mx2var;

main()
{
        long    *contextswitch,*sysmemsize;

        GetSysVar(); /* store mx2 system variable pointers in mx2var */
        contextswitch = (long *) mx2var->contextswitch;
        printf("Total context switches  %lu   / address %lx / \n",
                *contextswitch,contextswitch);
        sysmemsize = (long *) mx2var->sysmemsize;
        printf("MX2 system memory  %lu   / address %lx / \n\n",
                *sysmemsize,sysmemsize);
        exit(0);
}

/*      This routine will read MX2 system variables and procedures      */
/*      and return them as a pointer in mx2var.                         */
void    GetSysVar()
{
        long    *adr,ssv;

        ssv = 0L;
        ssv = (long *) trap(1,0x20,ssv);
        adr = MX2GLOBAL;           /* system variable address pointer */
        mx2var = (struct sysvar *) *adr;
        ssv = trap(1,0x20,ssv);
}

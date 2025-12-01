
(*              Copyright 1987,1988 fred brooks LogicTek        *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(*                                                              *)
(* Modified TermProcess to also kill all the children processes *)
(* of the parent. Changed FindProcess not to find zombies       *)
(*                                      12/11/87-FGB            *)
(*                                                              *)
(* Added variable parm to StartProcess to pass info to process  *)
(* in currentprocess.gemsave[15]        1/1/88-FGB              *)
(* The PID of the new process will be returned in variable parm *)
(*                                      2/24/88-FGB             *)
(*                                                              *)
(* Added DozeProcess to allow timed a sleep of processes        *)
(*                                      2/21/88-FGB             *)
(*                                                              *)
(* Remove monitor priority. Each routine the switches processes *)
(* must be protected from all interrupts by the IntEnd and      *)
(* IntBegin calls. If this is not done correctly the system     *)
(* system will bomb.                    4/4/88-FGB              *)
(*                                                              *)


(*$T-,$S-,$A+ *)
IMPLEMENTATION MODULE          ATOMIC;

FROM  SYSTEM  IMPORT   ADR,TSIZE,
                       CODE,SETREG,ADDRESS,REGISTER;
FROM  NEWSYS  IMPORT   NEWPROCESS,PROCESS,TRANSFER,IOTRANSFER;
FROM  XBIOS   IMPORT   SuperExec;
FROM  BitStuff IMPORT   LAnd;

FROM  GEMDOS  IMPORT   GetTime,GetDate,Super;

FROM  Storage IMPORT   ALLOCATE,DEALLOCATE;

FROM  Strings IMPORT   String;

TYPE    workspace       =       ARRAY [0..254] OF CARDINAL;
        savetype        =       POINTER TO ARRAY [0..22] OF CARDINAL;
        sigs            =       (sleep,wakeup,terminate,trace,routine,
                                 program,wait,gem,tos);
        CPFlagtype      =       SET OF sigs;
        CPFlagptrtype   =       POINTER TO CPFlagtype;

CONST   trapvec         =       110H; (* vector on IOTRANSFER *)
        offsetvec       =       140H; (* offset IOTRANSFER vector *)
        intnum          =       4;    (* interrupt number on MFP *)

VAR        s0,s1,s2,schedproc,s,
           initproc,lastproc    :       SIGNAL;
           kin                  :       ARRAY [0..32] OF INTEGER;
           wsp0,wsp1,wsp2,wsp3  :       workspace;
           wsp,bios             :       ADDRESS;
           etimer [400H]        :       ADDRESS;
           biospointer [4a2H]   :       ADDRESS;
           ptermvec     [408H]  :       ADDRESS;
           trap [trapvec]       :       ADDRESS;
           memtop [436H]        :       ADDRESS;
           flock [43eH]         :       CARDINAL;
           hz200  [4baH]        :       LONGCARD;
           temphz200,TICKS      :       LONGCARD;
           sysvector [144H]     :       POINTER TO sysvariable;
           accsuperstack        :       ADDRESS;
           sysvar               :       sysvariable;
           linea [28H]          :       ADDRESS;
           gemdos [84H]         :       ADDRESS;
           gsxgem [88H]         :       ADDRESS;
           tbios  [0b4H]        :       ADDRESS;
           xbios  [0b8H]        :       ADDRESS;
           linef  [2cH]         :       ADDRESS;
           level2 [68H]         :       ADDRESS;
           level4 [70H]         :       ADDRESS;
           shellp [4F6H]        :       ADDRESS;
           oldtrap,oldtermvec   :       ADDRESS;
           OldEtimer,sspval     :       ADDRESS;
           p,cotick,x,t,temp    :       PROCESS;
           processesid,I        :       INTEGER;
           zombie               :       BOOLEAN;
           children,highpri     :       INTEGER;
           savefrom,saveto      :       savetype;
           CPFlagptr            :       CPFlagptrtype;

        (* --------------  BEGIN -------------- *)

PROCEDURE       StartProcess(VAR P        : PROC;
                             VAR n        : LONGCARD;
                             VAR priority : INTEGER;
                             VAR pn       : String;
                             VAR parm     : ADDRESS);
BEGIN
        IntEnd;
        SuperExec(UpdatecurrentProc);
        ALLOCATE(wsp,n);
        IF wsp=NIL THEN
           currentprocess^.errno:=12;
           IntBegin;
           RETURN;
        END;
        DEC(sysmemsize,n);
        s1:=currentprocess;
        s0:=currentprocess;

        IF processesid>0 THEN    (* search only after setup of SCHED *)
        s0:=schedproc;               (* set to sched process *)
         LOOP                    (* find zombie process *)
          s0:=s0^.next;
          IF s0^.pid=1 THEN      (* zombie not found in list *)
             EXIT;
          END;
          FindZombieProcess(zombie);
          IF zombie THEN EXIT END;
         END;
        END; (* if processesid>1 *)

        IF zombie THEN
           currentprocess:=s0;
        ELSE
           ALLOCATE(currentprocess,TSIZE(ProcessDescriptor));
           IF currentprocess=NIL THEN
              s1^.errno:=12;
              IntBegin;
              RETURN;
           END;
           DEC(sysmemsize,TSIZE(ProcessDescriptor));
           INC(processesid);
           currentprocess^.pid:=processesid;
           currentprocess^.next:=initproc; lastproc^.next:=currentprocess;
           lastproc:=currentprocess;
        END;

        WITH currentprocess^ DO
             name:=pn;
             ppid:=request.pid;
             ready:=TRUE; active:=TRUE;
             tick:=0;
             IF priority<1 THEN priority:=1 END;
             IF priority>10 THEN priority:=10 END;
             pri:=priority;
             misc[0]:=pri;
             IF pri>highpri THEN highpri:=pri END;
             GetTime(time);
             GetDate(date);
             gemsave[13]:=0; (* set timer to zero *)
             gemsave[14]:=0; (* set all flags to zero *)
             gemsave[15]:=parm;
             parm:=ADDRESS(currentprocess^.pid);
             Iport:=s1^.Iport;
             Oport:=s1^.Oport;
        END;
        IF currentprocess^.pid>1 THEN
           FindProcess(request.pid,s2);
           s2^.return:=currentprocess^.pid;
        ELSE
           currentprocess^.return:=0;
        END;
        SuperExec(SetSlice);
        currentprocess^.slice:=temphz200;
        currentprocess^.wsp:=wsp;
        currentprocess^.wspsize:=n;
        NEWPROCESS(P,wsp,n,currentprocess^.cor);
        SuperExec(intbiosptr);
        s1^.errno:=0;
        INC(contextswitch);            (* update switch counter *)
        TRANSFER(s1^.cor,currentprocess^.cor);
        IntBegin;
END     StartProcess;

PROCEDURE       TermProcess(VAR id: INTEGER);
BEGIN
        IF id<2 THEN RETURN END;
        IntEnd;

        FindProcess(id,s2);
        IF s2=NIL THEN
           currentprocess^.errno:=3;
           IntBegin;
           RETURN;
        END;
        currentprocess^.errno:=0;

        s2^.active:=FALSE;      (* set flag *)
        IF s2^.wsp#NIL THEN
           DEALLOCATE(s2^.wsp,s2^.wspsize);
           INC(sysmemsize,s2^.wspsize);
        END;
        s2^.wsp:=NIL;           (* set TO NIL to make zombie process *)
        s0:=currentprocess; (* set to the parent process *)

        kin[0]:=id;
        REPEAT (* loop thru process list and find all related processes *)
        FindChildProcess(kin[0],s1);
        WHILE s1#NIL DO
           INC(children);
           kin[children]:=s1^.pid;
           s1^.active:=FALSE;      (* set flag *)
           s1^.gemsave[14]:=0; (* reset all flags *)
           IF s1^.wsp#NIL THEN
              DEALLOCATE(s1^.wsp,s1^.wspsize);
              INC(sysmemsize,s1^.wspsize);
           END;
           s1^.wsp:=NIL;           (* set TO NIL to make zombie process *)
           currentprocess:=s1;     (* set currentprocess to terminated *)
           SuperExec(IncSlice);    (* update cpu time for terminated *)
           FindChildProcess(kin[0],s1);
        END;
        kin[0]:=kin[children];
        DEC(children);
        UNTIL children<0;
        currentprocess:=s0;

        currentprocess^.errno:=0;
        s1:=currentprocess;     (* save currentprocess *)
        currentprocess:=s2;     (* set currentprocess to terminated *)
        SuperExec(UpdatecurrentProc);  (* update cpu time for terminated *)


        currentprocess:=schedproc;  (* set to transfer to the sched *)

        IF s1^.pid#id THEN
           temp:=s1^.cor; (* currentprocess different than terminated *)
        ELSE
           temp:=t;     (* process the same so set up dummy process *)
        END;

        IF s1^.pid#1 THEN
           SuperExec(UpdateProc);
           TRANSFER(temp,currentprocess^.cor); (* do context switch *)
        END;
        IntBegin;
END             TermProcess;

PROCEDURE       NextPid(): INTEGER;
BEGIN
        s1:=currentprocess;
        s0:=currentprocess;

        IF processesid>0 THEN    (* search only after setup of SCHED *)
        s0:=schedproc;               (* set to sched process *)
         LOOP                    (* find zombie process *)
          s0:=s0^.next;
          IF s0^.pid=1 THEN      (* zombie not found in list *)
             EXIT;
          END;
          FindZombieProcess(zombie);
          IF zombie THEN EXIT END;
         END;
        END; (* if processesid>1 *)

        IF zombie THEN
           RETURN s0^.pid;
        ELSE
           RETURN processesid+1;
        END;
END             NextPid;

PROCEDURE       SleepProcess(VAR id: INTEGER);
BEGIN
        IF id<2 THEN RETURN END;

        IntEnd;
        FindProcess(id,s2);
        IF s2=NIL THEN
           currentprocess^.errno:=3;
           IntBegin;
           RETURN;
        END;
        currentprocess^.errno:=0;

        IF (s2^.wsp#NIL) AND (NOT s2^.active) THEN IntBegin; RETURN END;
        IF s2^.wsp#NIL THEN 
           s2^.active:=FALSE;      (* set flag *)
           CPFlagptr:=ADR(s2^.gemsave[14]);
           INCL(CPFlagptr^,sleep);
           s2^.gemsave[13]:=0;
        END;

        s1:=currentprocess;     (* save currentprocess *)
        SuperExec(UpdatecurrentProc);    (* update cpu time for sleeper *)

        currentprocess:=schedproc;  (* set to transfer to the sched *)

        IF s1^.pid#1 THEN
           s1^.ready:=FALSE; currentprocess^.ready:=TRUE;
           SuperExec(UpdateProc);
           TRANSFER(s1^.cor,currentprocess^.cor); (* do context switch *)
        END;
        IntBegin;
END             SleepProcess;

PROCEDURE       DozeProcess(VAR id: INTEGER; VAR msec : LONGCARD);
BEGIN
        IF id<2 THEN RETURN END;

        IntEnd;
        FindProcess(id,s2);
        IF s2=NIL THEN
           currentprocess^.errno:=3;
           IntBegin;
           RETURN;
        END;
        currentprocess^.errno:=0;

        IF (s2^.wsp#NIL) AND (NOT s2^.active) THEN
           IntBegin;
           RETURN;
        END;
        IF s2^.wsp#NIL THEN 
           s2^.active:=FALSE;      (* set flag *)
           CPFlagptr:=ADR(s2^.gemsave[14]);
           INCL(CPFlagptr^,sleep);
           IF msec#0 THEN
                SuperExec(SetSlice);
                s2^.gemsave[13]:=ADDRESS(temphz200+(msec DIV 5));
           ELSE
                s2^.gemsave[13]:=0;
           END;
        END;

        s1:=currentprocess;     (* save currentprocess *)
        SuperExec(getbiosptr);
        SuperExec(UpdatecurrentProc);    (* update cpu time for sleeper *)

        currentprocess:=schedproc;  (* set to transfer to the sched *)

        IF s1^.pid#1 THEN
           s1^.ready:=FALSE; currentprocess^.ready:=TRUE;
           SuperExec(UpdateProc);
           TRANSFER(s1^.cor,currentprocess^.cor); (* do context switch *)
        END;
        IntBegin;
END             DozeProcess;

PROCEDURE       WaitProcess(VAR id: INTEGER; VAR loc: ADDRESS;
                            VAR value,mask,msec : LONGCARD);
BEGIN
        IF id<2 THEN RETURN END;

        IntEnd;
        FindProcess(id,s2);
        IF s2=NIL THEN
           currentprocess^.errno:=3;
           IntBegin;
           RETURN;
        END;
        currentprocess^.errno:=0;

        IF (s2^.wsp#NIL) AND (NOT s2^.active) THEN
           IntBegin;
           RETURN;
        END;
        IF s2^.wsp#NIL THEN 
           s2^.active:=FALSE;      (* set flag *)
           CPFlagptr:=ADR(s2^.gemsave[14]);
           INCL(CPFlagptr^,sleep);
           INCL(CPFlagptr^,wait);
           s2^.waitloc:=loc;
           s2^.gemsave[11]:=ADDRESS(value);
           s2^.gemsave[12]:=ADDRESS(mask);
           IF msec#0 THEN
                SuperExec(SetSlice);
                s2^.gemsave[13]:=ADDRESS(temphz200+(msec DIV 5));
           ELSE
                s2^.gemsave[13]:=0;
           END;
        END;

        s1:=currentprocess;     (* save currentprocess *)
        SuperExec(UpdatecurrentProc);    (* update cpu time for sleeper *)

        currentprocess:=schedproc;  (* set to transfer to the sched *)

        IF s1^.pid#1 THEN
           s1^.ready:=FALSE; currentprocess^.ready:=TRUE;
           SuperExec(UpdateProc);
           TRANSFER(s1^.cor,currentprocess^.cor); (* do context switch *)
        END;
        IntBegin;
END             WaitProcess;

PROCEDURE       WakeupProcess(VAR id: INTEGER);
BEGIN
        IF id<2 THEN RETURN END;

        IntEnd;
        FindProcess(id,s2);
        IF s2=NIL THEN
           currentprocess^.errno:=3;
           IntBegin;
           RETURN;
        END;

        IF (s2^.wsp#NIL) AND s2^.active THEN 
           currentprocess^.errno:=0;
           IntBegin;
           RETURN; (* already awake *)
        END;

        IF s2^.wsp#NIL THEN 
           s2^.active:=TRUE;      (* set flag *)
           CPFlagptr:=ADR(s2^.gemsave[14]);
           EXCL(CPFlagptr^,sleep);
           currentprocess^.errno:=0;
        ELSE
           currentprocess^.errno:=3;
        END;
        IntBegin;
END             WakeupProcess;

(* V0.7 *)
PROCEDURE       ChangeProcessPriority(VAR id: INTEGER; VAR pri: INTEGER);
BEGIN
        IF id<2 THEN RETURN END;

        IntEnd;
        FindProcess(id,s2);
        IF s2=NIL THEN
           currentprocess^.errno:=3;
           IntBegin;
           RETURN;
        END;

        IF pri<1  THEN pri:=1 END;
        IF pri>10 THEN pri:=10 END;
        s2^.pri:=pri;
        IntBegin;
END             ChangeProcessPriority;

PROCEDURE       InitProcesses;
BEGIN
        CRON:=dummy;
        ALLOCATE(currentprocess,TSIZE(ProcessDescriptor));
        DEC(sysmemsize,TSIZE(ProcessDescriptor));
        processesid:=0;
        initproc:=currentprocess;
        lastproc:=initproc;
        WITH currentprocess^ DO
             next:=currentprocess;
             ready:=FALSE;
             active:=FALSE;
             name:="INIT";
             GetTime(time);
             GetDate(date);
        END;
        NEWPROCESS(dummy,ADR(wsp1),TSIZE(workspace),x);
        NEWPROCESS(dummy,ADR(wsp2),TSIZE(workspace),p);
        NEWPROCESS(dummy,ADR(wsp3),TSIZE(workspace),t);
        currentprocess^.wsp:=ADR(wsp2);
        currentprocess^.cor:=p;
END             InitProcesses;

PROCEDURE       EndProcesses;
BEGIN
        s0:=currentprocess;
        REPEAT
                currentprocess:=s0^.next;
                s0:=currentprocess;
        UNTIL currentprocess^.pid=0;
        SuperExec(restorebiosptr);
        INC(contextswitch);            (* update switch counter *)
        TRANSFER(currentprocess^.cor,currentprocess^.cor);
END     EndProcesses;

(* This is the scheduler which is called by newtrap *)
PROCEDURE       sched;  
BEGIN
        IOTRANSFER(cotick,x,ADDRESS(trapvec)); (* V1.1 baud rate timer *)
        LOOP                                (* interrupt not used by ST *)
             currentprocess^.cor:=x;
             currentprocess^.ready:=FALSE;
             currentprocess^.intflag:=TRUE; (* process interrupted *)
             INC(contextswitch);            (* update switch counter *)
             currentprocess:=s0; (* s0 set to new in newtrap procedure *)
             currentprocess^.ready:=TRUE;   (* process to start *)
             x:=currentprocess^.cor;
             IOTRANSFER(cotick,x,ADDRESS(offsetvec)); (* offset vector so not *)
        END;                                     (* to overwrite the     *)
END     sched;                                   (* newtrap vector       *)

PROCEDURE       SwapProcess; (* swap out processes *)
BEGIN
        IntEnd;
        SuperExec(UpdatecurrentProc);
        s0:=currentprocess;
        currentprocess^.ready:=FALSE;
        LOOP (* find next process *)
          currentprocess:=currentprocess^.next;
          IF currentprocess^.active AND (currentprocess^.wsp#NIL) THEN 
             EXIT 
          END;
        END; (* loop *)
        currentprocess^.ready:=TRUE;
        IF s0^.pid#currentprocess^.pid THEN
           SuperExec(UpdateProc);
           TRANSFER(s0^.cor,currentprocess^.cor);
        END;
        IntBegin;
END     SwapProcess;

(*$P- *)
PROCEDURE       UpdateProc; (* update all currentprocess values *)
BEGIN
        currentprocess^.slice:=hz200;
        ClrInt;
        SetTimer;
        setbiosptr;
        INC(contextswitch);            (* update switch counter *)
        CODE(4e75H); (* rts *)
END     UpdateProc;
(*$P+ *)

(*$P- *)
PROCEDURE       UpdatecurrentProc;
BEGIN
        getbiosptr;
        IncSlice;
        CODE(4e75H); (* rts *)
END             UpdatecurrentProc;
(*$P+ *)

PROCEDURE       dummy; (* dummy procedure to make newprocess *)
BEGIN
END             dummy;

PROCEDURE       d1(): BOOLEAN;
BEGIN
END             d1;

PROCEDURE       d2(c: CHAR);
BEGIN
END             d2;

PROCEDURE       d3(): LONGCARD;
BEGIN
END             d3;
(* check to see if process s0 is a ZOMBIE, if so return true else false *)
PROCEDURE       FindZombieProcess(VAR zombie: BOOLEAN);
BEGIN
          IF (NOT s0^.active) AND (s0^.pid#0) AND (s0^.wsp=NIL) THEN 
             zombie:=TRUE; (* found one *)
          ELSE
             zombie:=FALSE; (* nada it's alive! *)
          END;
END             FindZombieProcess;

PROCEDURE       FindProcess(VAR pid: INTEGER; VAR fp: SIGNAL);
BEGIN
        s:=schedproc;
        LOOP                    (* find  process id *)
          s:=s^.next;
          IF (s^.pid=pid) AND (s^.wsp#NIL) THEN     (* found id *)
             fp:=s;
             EXIT;
          END;
          IF s^.pid=schedproc^.pid THEN      (* id not found in list *)
             fp:=NIL;
             EXIT;
          END;
        END;
END     FindProcess;

PROCEDURE       FindChildProcess(VAR pid: INTEGER; VAR fp: SIGNAL);
BEGIN
        s:=schedproc;
        LOOP                    (* find  process child id *)
          s:=s^.next;
          IF (s^.ppid=pid) AND (s^.wsp#NIL) THEN     (* found id *)
             fp:=s;
             EXIT;
          END;
          IF s^.pid=schedproc^.pid THEN      (* id not found in list *)
             fp:=NIL;
             EXIT;
          END;
        END;
END     FindChildProcess;

(*$P- *)
PROCEDURE   IncSlice; (* UPDATE cpu time  *)
BEGIN
        INC(currentprocess^.tick,hz200-currentprocess^.slice);
        currentprocess^.slice:=hz200;
        CODE(4e75H); (* rts *)
END         IncSlice;
(*$P+ *)

(*$P- *)
PROCEDURE   SetSlice; (* start timeslice  *)
BEGIN
        temphz200:=hz200;
        CODE(4e75H); (* rts *)
END         SetSlice;
(*$P+ *)

(*$P- *)
PROCEDURE   SetTimer; (* setup number of ticks before switch V1.1  *)
BEGIN
        TICKS:=hz200+LONGCARD(currentprocess^.pri*10);
        CODE(4e75H);            (* rts *)
END         SetTimer;
(*$P+ *)

(*$P- *)
PROCEDURE   ClrInt; (* V1.2 change to int on mfp *)
BEGIN
        CODE(8b9H,intnum,0ffffH,0fa11H); (* BCLR intnum, ISRB *)
        CODE(8b9H,intnum,0ffffH,0fa15H); (* BCLR intnum, MASKB *)
        CODE(4e75H);               (* rts *)
END         ClrInt;
(*$P+ *)

(*$P- *)
PROCEDURE   EnableInterrupt;
BEGIN                           (* setup sched vector interrupt *)
        SETREG(8,0fffffa15H);   (* load a0 with adr of mfp reg *)
        CODE(8d0H,intnum);  (* set int mask bit *)
        CODE(4e75H);            (* rts *)
END         EnableInterrupt;
(*$P+ *)

PROCEDURE       MultiBegin;
BEGIN
        SuperExec(ClrInt);
        SuperExec(SetTimer);
        MULTI:=TRUE;
END             MultiBegin;

PROCEDURE       MultiEnd;
BEGIN
        MULTI:=FALSE;
        SuperExec(ClrInt);
END             MultiEnd;

PROCEDURE       IntBegin;
VAR     ssv     :       ADDRESS;
BEGIN
        ssv:=0H;
        Super(ssv);
        CODE(46fcH,2300H);  (* start interrupts *)
        Super(ssv);
END             IntBegin;

PROCEDURE       IntEnd;
VAR     ssv     :       ADDRESS;
BEGIN
        ssv:=0H;
        Super(ssv);
        CODE(46fcH,2700H);  (* stop interrupts *)
        Super(ssv);
END             IntEnd;

(*$P- *)
PROCEDURE       getbiosptr;
BEGIN
        WITH currentprocess^ DO
                biosval:=biospointer+46;
                termvec:=ptermvec;
                gemsave[0]:=gemsaveGvec^;
                gemsave[1]:=linea;
                gemsave[2]:=gemdos;
                gemsave[3]:=gsxgem;
                gemsave[4]:=tbios;
                gemsave[5]:=xbios;
                gemsave[6]:=linef;
                gemsave[7]:=level2;
                gemsave[8]:=level4;
                gemsave[9]:=shellp;
        END;
        CODE(4e75H);               (* rts *)
END             getbiosptr;
(*$P+ *)

(*$P- *)
PROCEDURE       setbiosptr;
BEGIN
        WITH currentprocess^ DO
        savefrom:=ADDRESS(biospointer);
        saveto:=ADDRESS(biosval-46);
        saveto^:=savefrom^;
        biospointer:=biosval-46;
        ptermvec:=termvec;
        gemsaveGvec^:=gemsave[0];
        linea:=gemsave[1];
        gemdos:=gemsave[2];
        gsxgem:=gemsave[3];
        tbios:=gemsave[4];
        xbios:=gemsave[5];
        linef:=gemsave[6];
        level2:=gemsave[7];
        level4:=gemsave[8];
        shellp:=gemsave[9];
        END;
        CODE(4e75H);               (* rts *)
END             setbiosptr;
(*$P+ *)

(*$P- *)
PROCEDURE       restorebiosptr;
BEGIN
        savefrom:=biospointer;
        saveto:=bios;
        saveto^:=savefrom^;
        biospointer:=bios;
        ptermvec:=oldtermvec;
        CODE(4e75H);               (* rts *)
END             restorebiosptr;
(*$P+ *)

(*$P- *)
PROCEDURE       intbiosptr;
BEGIN
        WITH currentprocess^ DO
        savefrom:=ADDRESS(biospointer);
        saveto:=ADR(biosave[199]);
        saveto^:=savefrom^;
        biosval:=ADR(biosave[199]);
        biospointer:=biosval;
        termvec:=ptermvec;
        gemsave[0]:=gemsaveGvec^;
        gemsave[1]:=linea;
        gemsave[2]:=gemdos;
        gemsave[3]:=gsxgem;
        gemsave[4]:=tbios;
        gemsave[5]:=xbios;
        gemsave[6]:=linef;
        gemsave[7]:=level2;
        gemsave[8]:=level4;
        gemsave[9]:=shellp;
        END;
        CODE(4e75H);               (* rts *)
END             intbiosptr;
(*$P+ *)

(*$P- *) 
PROCEDURE       newtrap; (* IOTRANSFER executes this code before its *)
BEGIN                    (* normal vector. *)

        CODE(46fcH,2700H);  (* stop interrupts *)
        CODE(8b9H,intnum,0ffffH,0fa11H); (* BCLR intnum, ISRB *)
        CODE(8b9H,intnum,0ffffH,0fa15H); (* BCLR intnum, MASKB *)
        CODE(817H,5);                 (* BTST 5, (a7) check supermode *)
        CODE(6700H+2);                (* BEQ.S over rte *)
        CODE(4e73H);                  (* RTE supermode return *)
        CODE(48e7H,0fffeH);   (* save regs movem  *)
        CODE(204fH);    (* move.l ssp,a0 *)
        currentprocess^.ssp:=REGISTER(8)+66;

        IF (currentprocess^.ssp#sspval)
           AND (currentprocess^.ssp#accsuperstack) THEN
           CODE(4cdfH,7fffH); (* restore regs movem *)
           CODE(4e73H);       (* rte *)
        ELSE

           IncSlice;   (* cpu time update *)
           s0:=currentprocess;
           LOOP                    (* find next process store in s0 *)
              s0:=s0^.next;
              WITH s0^ DO
                IF (gemsave[14]#0) THEN (* If flags set then process *)
                   CPFlagptr:=ADR(gemsave[14]);

                   IF sleep IN CPFlagptr^ THEN (* sleep flag *)
                      IF (gemsave[13]#0) AND
                         (ADDRESS(hz200) >= gemsave[13]) THEN
                         active:=TRUE;
                         gemsave[13]:=0;
                         EXCL(CPFlagptr^,wait);  (* clear wait flag *)
                         EXCL(CPFlagptr^,sleep); (* clear sleep flag *)
                      END;
                   END;
                   IF wait IN CPFlagptr^ THEN (* wait flag *)
                      IF (waitloc^ = LONGCARD(LAnd(gemsave[11],gemsave[12]))) THEN
                         active:=TRUE;
                         gemsave[13]:=0;
                         EXCL(CPFlagptr^,wait);  (* clear wait flag *)
                         EXCL(CPFlagptr^,sleep); (* clear sleep flag *)
                      END;
                   END;

                END;
                IF (active) AND (wsp#NIL) THEN
                   IF misc[0]>=highpri THEN
                      IF pri>highpri THEN highpri:=pri END;
                      misc[0]:=pri;
                      EXIT;
                   ELSE
                      INC(misc[0]); (* age process til it's ready to run *)
                   END;
                END;
              END; (* with *)
           END; (* end LOOP *)

        (* Swap GEM pointers for the processes *)
           WITH currentprocess^ DO
           gemsave[0]:=gemsaveGvec^;
           gemsave[1]:=linea;
           gemsave[2]:=gemdos;
           gemsave[3]:=gsxgem;
           gemsave[4]:=tbios;
           gemsave[5]:=xbios;
           gemsave[6]:=linef;
           gemsave[7]:=level2;
           gemsave[8]:=level4;
           gemsave[9]:=shellp;
           biosval:=biospointer;
           termvec:=ptermvec;
           END;
           WITH s0^ DO
           biospointer:=biosval;
           ptermvec:=termvec;
           gemsaveGvec^:=gemsave[0];
           linea:=gemsave[1];
           gemdos:=gemsave[2];
           gsxgem:=gemsave[3];
           tbios:=gemsave[4];
           xbios:=gemsave[5];
           linef:=gemsave[6];
           level2:=gemsave[7];
           level4:=gemsave[8];
           shellp:=gemsave[9];
           END;

           SetTimer;
           s0^.slice:=hz200; (* set next cycle start *)
           SETREG(8,oldtrap);  (* move IOTRANSFER trap adr *)
           CODE(43faH,10); (* lea 12(pc),a1 *)
           CODE(2288H); (* move.l a0,(a1) *)
           CODE(4cdfH,7fffH); (* restore regs movem *)
           CODE(4ef9H,0,0) (* jmp back to routine *)
        END;
END     newtrap;
(*$P+ *)

(*$P-,$S- *) 
PROCEDURE       NewEtimer;
BEGIN
        CODE(48e7H,0fffeH);   (* save regs movem  *)
           IF MULTI THEN 
              CODE(207cH,0ffffH,0fa15H);  (* load a0 with adr of mfp reg *)
              CODE(8d0H,intnum);      (* set int mask bit *) 
              CODE(5188H);         (* subq.l 8 adj a0 to adr of mfp reg *)
              CODE(5988H);         (* subq.l 4 adj a0 to adr of mfp reg *)
              CODE(8d0H,intnum);      (* set int enable bit *) 
           END;

           SETREG(8,OldEtimer);  (* move trap adr *)
           CODE(43faH,6); (* lea 8(pc),a1 *)
           CODE(2288H); (* move.l a0,(a1) *)
           CODE(4ef9H,0,0); (* jmp back to routine *)
END     NewEtimer;
(*$P+,$S- *)

(*$P- *) (*save trap and set up flag trap for IOTRANSFER to run my code *)
PROCEDURE       settrap;     (* before executing the IOTRANSFER.        *)
BEGIN
        CODE(46fcH,2700H);  (* stop interrupts  V1.1 use 200hz clock *) 
        TICKS:=10;
        OldEtimer:=etimer+4;
        etimer:=ADDRESS(NewEtimer);
        EnableInterrupt;
        MULTI:=FALSE;
        oldtrap:=trap+4;        (* add 4 to skip over set SR to 2700 *)
        trap:=ADDRESS(newtrap);
        CODE(46fcH,2300H);      (* allow interrupts V1.1 *) 
        accsuperstack:=sysvector; (* load value from MX2.ACC *)
        sysvector:=ADR(sysvar);         (* setup sysvar pointers *)
        sysvar.currentprocess:=ADR(currentprocess);
        sysvar.MULTI:=ADR(MULTI);
        sysvar.slicebegin:=ADR(slicebegin);
        sysvar.command:=ADR(command);
        sysvar.request:=ADR(request);
        sysvar.contextswitch:=ADR(contextswitch);
        sysvar.CRON:=ADR(CRON);
        sysvar.spintenable:=ADR(spintenable);
        sysvar.spintmask:=ADR(spintmask);

        sysvar.spint:=ADR(spint[0]);
        sysvar.bpsave:=ADR(bpsave);
        sysvar.pipes:=ADR(pipes);
        sysvar.sysmemsize:=ADR(sysmemsize);
        sysvar.gemsaveGvec:=ADR(gemsaveGvec);
        sysvar.StartProcess:=StartProcess;
        sysvar.SwapProcess:=SwapProcess;
        sysvar.TermProcess:=TermProcess;
        sysvar.NextPid:=NextPid;
        sysvar.SleepProcess:=SleepProcess;
        sysvar.WakeupProcess:=WakeupProcess;
        sysvar.ChangeProcessPriority:=ChangeProcessPriority;
        sysvar.MultiBegin:=MultiBegin;
        sysvar.MultiEnd:=MultiEnd;
        sysvar.DozeProcess:=DozeProcess;
        sysvar.WaitProcess:=WaitProcess;
        sysvar.CronActive:=ADR(CronActive);
        sysvar.DeviceTable:=ADR(DeviceTable);
        FOR I:=ORD(dev0) TO ORD(dev7) DO   (* setup user device table *)
            DeviceTable[I].bconstat:=devstattype(d1);
            DeviceTable[I].bcostat:=devstattype(d1);
            DeviceTable[I].bconin:=devintype(d3);
            DeviceTable[I].bconout:=devouttype(d2);
        END;
        FOR I:=0 TO 31 DO       (* clear all pipes *)
            pipes[I]:=NIL;
        END;
        FOR I:=0 TO 15 DO       (* clear all spints *)
            spint[I].proc:=PROC(NIL);
        END;
        slicebegin:=hz200;
        contextswitch:=0;
        bios:=biospointer;      (* save original pointer *)
        oldtermvec:=ptermvec;
        CODE(4e75H); (* rts *)

END     settrap;
(*$P+ *)

PROCEDURE       Initsked;
VAR             a,b,ssv     :       ADDRESS;
BEGIN
        MultiEnd;
        a:=ADDRESS(OTOS);
        b:=ADDRESS(MTOS);
        gemsaveGvec:=a;
        IF ROMDATE=NEWDATE THEN gemsaveGvec:=b END;
        SuperExec(SetTimer);
        NEWPROCESS(sched,ADR(wsp0),TSIZE(workspace),cotick);
        TRANSFER(x,cotick);
        schedproc:=currentprocess;
        SuperExec(settrap);
        ssv:=0H;
        Super(ssv);
        sspval:=ssv;
        Super(ssv);
END             Initsked;

PROCEDURE       CheckFlag(VAR flag: BOOLEAN): BOOLEAN;
BEGIN
        IF flag THEN
           RETURN TRUE;
        ELSE
           RETURN FALSE;
        END;
END     CheckFlag;

PROCEDURE       SetFlag(VAR flag: BOOLEAN);
BEGIN
        flag:=TRUE;
END     SetFlag;

PROCEDURE       ResetFlag(VAR flag: BOOLEAN);
BEGIN
        flag:=FALSE;
END     ResetFlag;

PROCEDURE       CheckResetFlag(VAR flag: BOOLEAN): BOOLEAN;
BEGIN
        IF flag THEN
           flag:=FALSE;
           RETURN TRUE;
        ELSE
           RETURN FALSE;
        END;
END     CheckResetFlag;

BEGIN
END     ATOMIC.

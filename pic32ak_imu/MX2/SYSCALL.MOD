
(*              Copyright 1987 fred brooks LogicTek             *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(* Added variable parm to StartProcess to pass info to process  *)
(* in currentprocess.gemsave[15]        1/1/88-FGB              *)
(* Fixed SpintInfo to give info anytime. It was giving info     *)
(* only after a spint was enabled before it was executed.       *)
(*                                      5/21/88-FGB             *)
(*                                                              *)

(*$S-,$T- *)
IMPLEMENTATION MODULE  SYSCALL;
FROM    ATOMIC  IMPORT  sysvariable,CheckFlag,SetFlag,MAGIC,SIGNAL,
                        spinttype;
FROM    XBIOS   IMPORT  SuperExec;
FROM    SYSTEM  IMPORT  CODE,ADDRESS;
FROM    GEMX    IMPORT  BasePageAddress;
FROM    GEMDOS  IMPORT  GetPath,GetDrv,Super;
FROM    Strings IMPORT  String;

VAR     sysvar                  :       sysvariable;
        sysvector [144H]        :       POINTER TO sysvariable;
        goodbye                 :       BOOLEAN;
        i,wait,drv              :       CARDINAL;
        currentprocess          :       SIGNAL;
        ssv                     :       ADDRESS;

(*$P- *)
PROCEDURE       submit;
BEGIN
        sysvar:=sysvector^;
        CODE(4e75H); (* rts *)
END     submit;
(*$P+ *)

PROCEDURE       SysCmd;
BEGIN
        MultiEnd;
        SuperExec(submit); 

        FOR i:=1 TO 79 DO
            sysvar.command^[i-1]:=BasePageAddress^.CmdLine[i];
        END;
        sysvar.command^[ORD(BasePageAddress^.CmdLine[0])]:=CHAR(0);

        MultiBegin;
        (* wait until no commands are being executed *)
        REPEAT
        UNTIL NOT CheckFlag(sysvar.request^.req);
        MultiEnd;

        (* tell SCHED that we want him to show his face *)
        sysvar.request^.magic:=MAGIC;
        currentprocess:=sysvar.currentprocess^;
        sysvar.request^.pid:=currentprocess^.pid;
        GetPath(currentprocess^.ipenvstr,0);
        GetDrv(drv);
        currentprocess^.flags[0]:=LONGCARD(drv);
        SetFlag(sysvar.request^.req);
        MultiBegin;
END     SysCmd;

PROCEDURE       SysReq(VAR command: ARRAY OF CHAR);
BEGIN
        MultiEnd;
        SuperExec(submit); 

        FOR i:=0 TO HIGH(command)-1 DO
            sysvar.command^[i]:=command[i];
        END;
        sysvar.command^[HIGH(command)]:=0C;

        MultiBegin;
        (* wait until no commands are being executed *)
        REPEAT
        UNTIL NOT CheckFlag(sysvar.request^.req);

        (* tell SCHED that we want him to show his face *)
        sysvar.request^.magic:=MAGIC;
        currentprocess:=sysvar.currentprocess^;
        sysvar.request^.pid:=currentprocess^.pid;
        GetPath(currentprocess^.ipenvstr,0);
        GetDrv(drv);
        currentprocess^.flags[0]:=LONGCARD(drv);
        SetFlag(sysvar.request^.req);
        MultiBegin;
END     SysReq;

PROCEDURE       SysDes(VAR cp: SIGNAL);
BEGIN
        SuperExec(submit); 
        cp:=sysvar.currentprocess^;
END     SysDes;

PROCEDURE       SysVar(VAR sv: sysvariable);
BEGIN
        SuperExec(submit); 
        sv:=sysvar;
END     SysVar;

PROCEDURE       ProcessPid(): INTEGER;
BEGIN
        SuperExec(submit);
        SysVar(sysvar);
        currentprocess:=sysvar.currentprocess^;
        RETURN currentprocess^.pid;
END             ProcessPid;

PROCEDURE       Sleep;
VAR             pid      :       INTEGER;
BEGIN
        pid:=ProcessPid();
        SleepProcess(pid);
END     Sleep;

PROCEDURE       FindProcess(pid: INTEGER; cp: SIGNAL): SIGNAL;
VAR             s                :         SIGNAL;
BEGIN
        s:=cp;
        LOOP                    (* find  process id *)
          s:=s^.next;
          IF s^.pid=pid THEN     (* found id *)
             RETURN s;
          END;
          IF s^.pid=cp^.pid THEN      (* id not found in list *)
             RETURN NIL;
          END;
        END;
END     FindProcess;

PROCEDURE       CheckSpint;
BEGIN
        SuperExec(submit);

        FOR i:=0 TO 15 DO (* check all spints and run if set *)
            IF (i IN sysvar.spintenable^)
               AND (i IN sysvar.spintmask^) 
               AND (ADDRESS(sysvar.spint^[i].proc)#NIL) THEN
               sysvar.spint^[i].proc;
            END;
            EXCL(sysvar.spintenable^,i); (* clear flag after complete *)
        END;
END     CheckSpint;

PROCEDURE       EnableSpint(spintid: CARDINAL; routine: PROC;
                            data: ADDRESS): BOOLEAN;
BEGIN
        SuperExec(submit);

        IF spintid>15 THEN RETURN FALSE END;
        sysvar.spint^[spintid].proc:=routine;
        sysvar.spint^[spintid].data:=data;
        INCL(sysvar.spintmask^,spintid);
        RETURN TRUE;
END     EnableSpint;

PROCEDURE       SpintInfo(spintid: CARDINAL; VAR data: ADDRESS): BOOLEAN;
BEGIN
        SuperExec(submit);
        IF spintid>15 THEN RETURN FALSE END;
        data:=sysvar.spint^[spintid].data;
        IF ADDRESS(sysvar.spint^[spintid].proc)#NIL THEN
           RETURN TRUE;
        ELSE;
           data:=NIL;
           RETURN FALSE;
        END;
END     SpintInfo;

PROCEDURE       DisableSpint(spintid: CARDINAL);
BEGIN
        SuperExec(submit);

        IF spintid>15 THEN RETURN END;
        sysvar.spint^[spintid].proc:=PROC(NIL);
        EXCL(sysvar.spintenable^,spintid);
        EXCL(sysvar.spintmask^,spintid);
END     DisableSpint;

PROCEDURE       HoldSpint(spintid: CARDINAL);
BEGIN
        SuperExec(submit);

        IF spintid>15 THEN RETURN END;
        EXCL(sysvar.spintmask^,spintid);
END     HoldSpint;

PROCEDURE       ReleaseSpint(spintid: CARDINAL);
BEGIN
        SuperExec(submit);

        IF spintid>15 THEN RETURN END;
        INCL(sysvar.spintmask^,spintid);
END     ReleaseSpint;

PROCEDURE       IntDelay(tick: LONGINT): INTEGER;
VAR             cp      :       SIGNAL;
BEGIN
        SysDes(cp);
        cp^.active:=FALSE; (* put process to sleep *)
        MultiBegin;
        REPEAT
        UNTIL cp^.active; (* wait until active *)
END     IntDelay;

PROCEDURE       Trigger(spintid: CARDINAL): BOOLEAN;
BEGIN
        SuperExec(submit);

        IF spintid>15 THEN RETURN FALSE END;
        INCL(sysvar.spintenable^,spintid);
        RETURN TRUE;
END     Trigger;

PROCEDURE StartProcess(VAR P: PROC; 
                       VAR n: LONGCARD; 
                       VAR priority: INTEGER; 
                       VAR pn: String;
                       VAR parm: ADDRESS);
BEGIN
        SuperExec(submit);
        currentprocess:=sysvar.currentprocess^;
        sysvar.request^.pid:=currentprocess^.pid;
        sysvar.StartProcess(P,n,priority,pn,parm);
END     StartProcess;

PROCEDURE SwapProcess;
BEGIN
        SuperExec(submit);
        sysvar.SwapProcess;
END     SwapProcess;

PROCEDURE TermProcess(VAR id: INTEGER);
BEGIN
        SuperExec(submit);
        sysvar.TermProcess(id);
END     TermProcess;

PROCEDURE NextPid(): INTEGER;
VAR     Pid     :       INTEGER;
BEGIN
        SuperExec(submit);
        Pid:=sysvar.NextPid();
        RETURN Pid;
END     NextPid;

PROCEDURE SleepProcess(VAR id: INTEGER);
BEGIN
        SuperExec(submit);
        sysvar.SleepProcess(id);
END     SleepProcess;

PROCEDURE DozeProcess(VAR id: INTEGER; VAR msec: LONGCARD);
BEGIN
        SuperExec(submit);
        sysvar.DozeProcess(id,msec);
END     DozeProcess;

PROCEDURE WaitProcess(VAR id: INTEGER; VAR loc: ADDRESS;
                      VAR value,mask,msec: LONGCARD);
BEGIN
        SuperExec(submit);
        sysvar.WaitProcess(id,loc,value,mask,msec);
END     WaitProcess;

PROCEDURE WakeupProcess(VAR id: INTEGER);
BEGIN
        SuperExec(submit);
        sysvar.WakeupProcess(id);
END     WakeupProcess;

PROCEDURE ChangeProcessPriority(VAR id: INTEGER; VAR pri: INTEGER);
BEGIN
        SuperExec(submit);
        sysvar.ChangeProcessPriority(id,pri);
END     ChangeProcessPriority;

PROCEDURE MultiBegin;
BEGIN
        SuperExec(submit);
        sysvar.MultiBegin;
END     MultiBegin;

PROCEDURE MultiEnd;
BEGIN
        SuperExec(submit);
        sysvar.MultiEnd;
END     MultiEnd;

BEGIN
END     SYSCALL.


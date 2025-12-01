
(*              Copyright 1987 fred brooks LogicTek             *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(* Correct Bad error in PipeOpen causing pipe to be closed if   *)
(* this routine is called               12/14/87                *)
(*                                                              *)

(*$S-,$T- *)
IMPLEMENTATION MODULE PIPE [7];
FROM    SYSTEM    IMPORT   BYTE,WORD,LONGWORD,ADDRESS,TSIZE,ADR;
FROM    ATOMIC    IMPORT   pipetype,sysvariable,PIPE,pipeptr,buflength;
FROM    SYSCALL   IMPORT   SysVar;
FROM    Storage   IMPORT   ALLOCATE,DEALLOCATE;
FROM    Strings   IMPORT   Assign,Compare,CompareResults;
FROM    TextIO    IMPORT   WriteString,WriteLn,ReadLn;
CONST             bufend = buflength-1;
VAR               pipe1,pipe          :       pipeptr;
                  junk                :       BYTE;
                  pipespointer        :       POINTER TO pipetype;
                  sysvar              :       sysvariable;
                  I                   :       CARDINAL;
                  found               :       BOOLEAN;
                b                :         POINTER TO ARRAY [0..1] OF BYTE;
                d                :         CARDINAL;
                b1              :         POINTER TO ARRAY [0..3] OF BYTE;
             newpipeptr         :     pipeptr;

PROCEDURE       PWriteByte(p: LONGCARD; b: BYTE): BOOLEAN;
BEGIN
        IF NOT PipeOpen(p) THEN RETURN FALSE END;
        pipe:=pipeptr(p);
        IF (NOT (pipe^.cnt < buflength)) THEN RETURN FALSE END;
        deposit(pipe,b);
        RETURN TRUE;
END     PWriteByte;

PROCEDURE       PReadByte(p: LONGCARD; VAR b: BYTE): BOOLEAN;
BEGIN
        IF NOT PipeOpen(p) THEN RETURN FALSE END;
        pipe:=pipeptr(p);
        IF (NOT (pipe^.cnt > 0)) THEN RETURN FALSE END;
        b:=withdraw(pipe);
        RETURN TRUE;
END     PReadByte;

PROCEDURE       PWriteWord(p: LONGCARD; w: WORD): BOOLEAN;
BEGIN
        IF NOT PipeOpen(p) THEN RETURN FALSE END;
        pipe:=pipeptr(p);
        IF (NOT (pipe^.cnt < buflength-1)) THEN RETURN FALSE END;
        b:=ADR(w);
        FOR d:=0 TO 1 DO
            deposit(pipe,b^[d]);
        END;
        RETURN TRUE;
END     PWriteWord;

PROCEDURE       PReadWord(p: LONGCARD; VAR w: WORD): BOOLEAN;
BEGIN
        IF NOT PipeOpen(p) THEN RETURN FALSE END;
        pipe:=pipeptr(p);
        IF (NOT (pipe^.cnt > 1)) THEN RETURN FALSE END;
        b:=ADR(w);
        FOR d:=0 TO 1 DO
            b^[d]:=withdraw(pipe);
        END;
        RETURN TRUE;
END     PReadWord;

PROCEDURE       PWriteLongWord(p: LONGCARD; lw: LONGWORD): BOOLEAN;
BEGIN
        IF NOT PipeOpen(p) THEN RETURN FALSE END;
        pipe:=pipeptr(p);
        IF (NOT (pipe^.cnt < buflength-3)) THEN RETURN FALSE END;
        b1:=ADR(lw);
        FOR d:=0 TO 3 DO
            deposit(pipe,b1^[d]);
        END;
        RETURN TRUE;
END     PWriteLongWord;

PROCEDURE       PReadLongWord(p: LONGCARD; VAR lw: LONGWORD): BOOLEAN;
BEGIN
        IF NOT PipeOpen(p) THEN RETURN FALSE END;
        pipe:=pipeptr(p);
        IF (NOT (pipe^.cnt > 3)) THEN RETURN FALSE END;
        b1:=ADR(lw);
        FOR d:=0 TO 3 DO
            b1^[d]:=withdraw(pipe);
        END;
        RETURN TRUE;
END     PReadLongWord;

PROCEDURE      deposit(VAR tpipe: pipeptr; byte: BYTE);
BEGIN
        IF tpipe^.cnt < buflength THEN
           INC(tpipe^.cnt);
        ELSE
           (* pipe full *)
           RETURN;
        END;
        tpipe^.buf[tpipe^.bufhead]:=byte;
        IF tpipe^.bufhead=bufend THEN
           tpipe^.bufhead:=0;
        ELSE
           INC(tpipe^.bufhead);
        END;
END     deposit;

PROCEDURE      withdraw(VAR tpipe: pipeptr): BYTE;
BEGIN
        IF tpipe^.cnt > 0 THEN
           DEC(tpipe^.cnt);
        ELSE
           (* pipe EMPTY *)
           RETURN BYTE(0);
        END;
        IF tpipe^.buftail = bufend THEN
           tpipe^.buftail:=0;
        ELSE
           INC(tpipe^.buftail);
        END;
        RETURN tpipe^.buf[tpipe^.buftail];
END     withdraw;

PROCEDURE       OpenPipe(pipeName: ARRAY OF CHAR): LONGCARD;
BEGIN
        SysVar(sysvar);
        pipespointer:=ADDRESS(sysvar.pipes);

        I:=0;   (* look for pipe name in system pipe list *)
        found:=FALSE;
        WHILE (I#32) AND (pipespointer^[I]#NIL) DO
              newpipeptr:=pipespointer^[I];
              INC(I);
              IF Compare(pipeName,newpipeptr^.pipename)=Equal THEN
                 I:=32;
                 found:=TRUE;
              END;
        END;

        IF (NOT found) THEN
           ALLOCATE(newpipeptr,LONGCARD(TSIZE(PIPE)));
           Assign(newpipeptr^.pipename,pipeName);
           newpipeptr^.bufhead:=0;
           newpipeptr^.buftail:=bufend;
           newpipeptr^.cnt:=0;
           newpipeptr^.bufsize:=buflength;

           (* put address of pipe in system list *)
           I:=0;
           LOOP
                IF I=32 THEN HALT END;
                IF pipespointer^[I]=NIL THEN
                   pipespointer^[I]:=newpipeptr;
                   EXIT;
                END; 
                INC(I);
           END;
        END;
        RETURN LONGCARD(newpipeptr);
END     OpenPipe;

PROCEDURE       ClosePipe(p: LONGCARD);
VAR             pipe          :     pipeptr;
BEGIN
           pipe:=pipeptr(p);
           SysVar(sysvar);
           pipespointer:=ADDRESS(sysvar.pipes);

           (* find address of pipe in system list *)
           found:=FALSE;
           I:=0;
           LOOP
                IF I=32 THEN EXIT END;
                IF pipespointer^[I]=pipe THEN
                   pipespointer^[I]:=NIL;
                   found:=TRUE;
                   EXIT;
                END; 
                INC(I);
           END;

        IF found THEN
           DEALLOCATE(pipe,LONGCARD(TSIZE(PIPE)));
        END;
END     ClosePipe;

PROCEDURE       PipeOpen(p: LONGCARD): BOOLEAN;
VAR             pipe          :     pipeptr;
BEGIN
           pipe:=pipeptr(p);
           SysVar(sysvar);
           pipespointer:=ADDRESS(sysvar.pipes);

           (* find address of pipe in system list *)
           I:=0;
           LOOP
                IF I=32 THEN RETURN FALSE END;
                IF pipespointer^[I]=pipe THEN
                   RETURN TRUE;
                END; 
                INC(I);
           END;
END     PipeOpen;

PROCEDURE       IsReadable(p: LONGCARD): BOOLEAN;
BEGIN
        pipe:=pipeptr(p);
        IF pipe^.cnt > 0 THEN
           RETURN TRUE;
        ELSE
           RETURN FALSE;
        END;
END     IsReadable;

PROCEDURE       IsWriteable(p: LONGCARD): BOOLEAN;
BEGIN
        pipe:=pipeptr(p);
        IF pipe^.cnt < buflength THEN
           RETURN TRUE;
        ELSE
           RETURN FALSE;
        END;
END     IsWriteable;

BEGIN
END                   PIPE.

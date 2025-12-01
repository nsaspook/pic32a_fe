
(*              Copyright 1987 fred brooks LogicTek             *)
(*                                                              *)
(*                                                              *)
(*   First Release                      12/8/87-FGB             *)
(*                                                              *)

IMPLEMENTATION MODULE  SCANNER;
(*$T-,$S-,$A+ *)
FROM    SYSTEM  IMPORT  ADDRESS,ADR;

TYPE 
        charptr         =       POINTER TO CHAR; 
        chset           =       SET OF CHAR;  
(*             internal state record
        scstate =
                RECORD
                        return          :       LONGINT;
                        auxreturn       :       LONGINT;
                        disp            :       CARDINAL;
                        prevdisp        :       CARDINAL;
                        delim           :       ADDRESS;
                        delimret        :       CARDINAL;
                        bufadr          :       ADDRESS;
                        buflen          :       CARDINAL;
                        mode            :       modes;
                END;
*)

VAR     chrptr                          :       charptr;
        cmdline,textline                :       ARRAY [0..81] OF CHAR;
        ch                              :       CHAR;

CONST   alpha   = chset{"A".."Z","a".."z"};
        num     = chset{"+","-","0".."9"};
(* Initialize the scanner and pass a buffer to be scanned. Only one buffer
may be processed by the scanner at a time.                          *)
PROCEDURE       scinit(bufadr: ADDRESS; buflen: CARDINAL);
BEGIN
        state.return:=0;
        state.auxreturn:=0;
        state.disp:=0;
        state.prevdisp:=0;
        state.delim:=NIL;
        state.bufadr:=bufadr;
        state.buflen:=buflen;
        state.mode:=modes{};
        state.delimret:=0;
END             scinit;

PROCEDURE       gtdisp(): CARDINAL;
BEGIN
END             gtdisp;

PROCEDURE       gbdisp(): CARDINAL;
BEGIN
END             gbdisp;

(* set new value as the current scanner displacement *)
PROCEDURE       stdisp(disp: CARDINAL);
BEGIN
        state.prevdisp:=state.disp;
        IF bufeol(disp)=(-2) THEN (* past end of line *)
           state.return:=(-2);
        ELSE
           state.prevdisp:=state.disp;
           state.disp:=disp;
           state.return:=0;
        END;
END             stdisp;

PROCEDURE       nxparm;
VAR                i       :       CARDINAL;
                   ch      :       CHAR;
BEGIN
        chrptr:=charptr(state.bufadr+ADDRESS(state.disp));
        i:=state.disp;
        LOOP
                IF bufeol(i)<0 THEN
                   state.return:=(-2); (* end of line *)
                   EXIT;
                END;
                IF NOT delimit(chrptr^) THEN
                   state.prevdisp:=state.disp;
                   state.disp:=i;
                   state.return:=0;
                   EXIT;
                END;
                INC(i);
                INC(chrptr);
        END;
END             nxparm;

(* return 0=not eol, -1=eol, -2=past eol *)
PROCEDURE       bufeol(pos: CARDINAL): INTEGER;
VAR             cptr        :          charptr;
                eol         :          BOOLEAN;
                i           :          CARDINAL;
BEGIN
        eol:=FALSE;
        i:=0;
        LOOP
        cptr:=charptr(state.bufadr+ADDRESS(i));
        IF i=state.buflen THEN
           EXIT;
        END;
        IF cptr^='$' THEN (* search for " $" sequence *)
           DEC(cptr);
           IF cptr^=' ' THEN
              DEC(i);
              EXIT; (* i = eol *)
           END;
        END;
        INC(i);
        END; (* loop *)

        IF (pos=i-1) THEN
           state.delimret:=2;
           RETURN (-1);
        END;
        IF (pos>i-1) THEN
           state.delimret:=2;
           RETURN (-2);
        END;
        RETURN 0;
END     bufeol;

PROCEDURE       delimit(ch: CHAR): BOOLEAN;
BEGIN
        IF (ch=' ') OR (ch=CHAR(0)) THEN
           state.delimret:=0;
           RETURN TRUE;
        END;
        IF ch=',' THEN
           state.delimret:=1;
           RETURN TRUE;
        END;
        RETURN FALSE;
END             delimit;

PROCEDURE       bkparm;
BEGIN
        state.disp:=state.prevdisp;
END             bkparm;

PROCEDURE       dlim;
BEGIN
END             dlim;

PROCEDURE       stmode(mode: modes);
BEGIN
END             stmode;

PROCEDURE       char(VAR ch: CHAR);
BEGIN
        state.return:=0;
        chrptr:=charptr(state.bufadr+ADDRESS(state.disp));
        IF chrptr^#CHAR(0) THEN
           IF state.disp<state.buflen-1 THEN
              INC(state.disp);
           ELSE
              state.return:=(-2);
           END;
        ELSE
           state.return:=(-2);
        END;
        ch:=chrptr^;
END             char;

PROCEDURE       bkchar(VAR ch: CHAR);
BEGIN
        state.return:=0;
        IF state.disp=0 THEN
           state.return:=(-2);
           ch:=CHAR(0);
           RETURN;
        END;
        chrptr:=charptr(state.bufadr+ADDRESS(state.disp-1));
        ch:=chrptr^;
END             bkchar;

PROCEDURE       nxchar(VAR ch: CHAR);
BEGIN
        state.return:=0;
        chrptr:=charptr(state.bufadr+ADDRESS(state.disp));
        IF chrptr^#CHAR(0) THEN
           IF state.disp<state.buflen-1 THEN
           ELSE
              state.return:=(-2);
           END;
        ELSE
           state.return:=(-2);
        END;
        ch:=chrptr^;
END             nxchar;

PROCEDURE       onenum;
BEGIN
END             onenum;

PROCEDURE       ltext(bufadr: ADDRESS; buflen: CARDINAL);
VAR                i,j     :       CARDINAL;
                   textbuf :       charptr;
BEGIN
        textbuf:=bufadr;
        j:=0;
        chrptr:=charptr(state.bufadr+ADDRESS(state.disp));
        i:=state.disp;
        state.prevdisp:=state.disp;
        IF delimit(chrptr^) THEN
           textbuf^:=CHAR(0);
           state.return:=(-1);
           RETURN;
        END;

        LOOP
                IF bufeol(i)=(-2) THEN (* past eol *)
                   state.return:=(-2);
                   EXIT;
                END;
                IF NOT delimit(chrptr^) THEN
                   IF j<buflen THEN (* stop at end of buffer *)
                      textbuf^:=chrptr^;
                   END;
                   state.disp:=i;
                ELSE
                   INC(j);
                   IF NOT (j>buflen) THEN
                      textbuf^:=CHAR(0);
                   END;
                   IF bufeol(i)=(-1) THEN (* if eol *)
                      state.return:=(-2);
                      EXIT;
                   END;
                   state.disp:=i;
                   state.return:=0;
                   EXIT;
                END;
                INC(i);
                INC(j);
                INC(chrptr);
                INC(textbuf);
        END;
END             ltext;

PROCEDURE       etext(bufadr: ADDRESS; buflen: CARDINAL);
VAR                i,j     :       CARDINAL;
                   textbuf :       charptr;
BEGIN
        textbuf:=bufadr;
        j:=0;
        chrptr:=charptr(state.bufadr+ADDRESS(state.disp));
        i:=state.disp;
        state.prevdisp:=state.disp;
        IF delimit(chrptr^) THEN
           textbuf^:=CHAR(0);
           state.return:=(-1);
           RETURN;
        END;

        LOOP
                IF bufeol(i)=(-2) THEN (* past eol *)
                   state.return:=(-2);
                   EXIT;
                END;
                IF chrptr^# 0C THEN
                   IF j<buflen THEN (* stop at end of buffer *)
                      textbuf^:=chrptr^;
                   END;
                   state.disp:=i;
                ELSE
                   INC(j);
                   IF NOT (j>buflen) THEN
                      textbuf^:=CHAR(0);
                   END;
                   IF bufeol(i)=(-1) THEN (* if eol *)
                      state.return:=(-2);
                      EXIT;
                   END;
                   state.disp:=i;
                   state.return:=0;
                   EXIT;
                END;
                INC(i);
                INC(j);
                INC(chrptr);
                INC(textbuf);
        END;
END             etext;

BEGIN
END                    SCANNER.

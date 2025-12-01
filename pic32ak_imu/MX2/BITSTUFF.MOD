(*  Some Functions to perform bit manipulation..  bitsets are a 'bit'
    clumsy (pun intended) to use and don't operate on LONGWORDS,
    so i wrote this.
      It may not be the most efficient, but it is effective, enjoy..
 
    Russ Damske
*)
(*$T-,$S-,$A+ *)
IMPLEMENTATION MODULE BitStuff;

FROM SYSTEM IMPORT CODE,BYTE,WORD,LONGWORD, SETREG, REGISTER;

(*** FOR LONGWORDS ***)

PROCEDURE LAnd( op1, op2 : LONGWORD):LONGWORD;
(* logically AND's 2 longwords *)
BEGIN
  SETREG( 6, op1 );
  SETREG( 7, op2 );
  CODE( 0CE86H );     (* and d6,d7 *)
  RETURN LONGWORD( REGISTER( 7 ) );
END LAnd;

PROCEDURE LOr(op1, op2 : LONGWORD):LONGWORD;
(* logically OR's 2 longwords *)
BEGIN
  SETREG( 6, op1 );
  SETREG( 7, op2 );
  CODE( 08E86H );     (* or d6,d7 *)
  RETURN LONGWORD( REGISTER( 7 ) );
END LOr;

PROCEDURE LEor(op1, op2 : LONGWORD):LONGWORD;
(* logically Exclusive OR of 2 longwords *)
BEGIN
  SETREG( 6, op1 );
  SETREG( 7, op2 );
  CODE( 0BD87H );     (* eor d6,d7 *)
  RETURN LONGWORD( REGISTER( 7 ) );
END LEor;

PROCEDURE LShl(number : LONGWORD; numbits : CARDINAL):LONGWORD;
(*  Shifts number an amount (numbits) left *)
BEGIN
  CODE ( 07C00H );    (* moveq.l #0.d6 *)
  SETREG( 6, numbits );
  SETREG( 7, number );
  CODE( 0EDAFH );    (* lsl d6,d7 *)
  RETURN LONGWORD( REGISTER( 7 ) );
END LShl;

PROCEDURE LShr(number : LONGWORD; numbits : CARDINAL):LONGWORD;
(*  Shifts number an amount (numbits) right *)
BEGIN
  CODE( 07C00H );    (* moveq.l #0.d6 *)
  SETREG( 6, numbits );
  SETREG( 7, number );
  CODE( 0ECAFH );    (* lsr d6,d7 *)
  RETURN LONGWORD( REGISTER( 7 ) );
END LShr;

(*** FOR WORDS ***)

PROCEDURE WAnd( op1, op2 : WORD):WORD;
(* logically AND's 2 words *)
BEGIN
  SETREG( 6, op1 );
  SETREG( 7, op2 );
  CODE( 0CE46H );     (* and d6,d7 *)
  RETURN WORD( REGISTER( 7 ) );
END WAnd;

PROCEDURE WOr(op1, op2 : WORD):WORD;
(* logically OR's 2 ords *)
BEGIN
  SETREG( 6, op1 );
  SETREG( 7, op2 );
  CODE( 08E46H );     (* or d6,d7 *)
  RETURN WORD( REGISTER( 7 ) );
END WOr;

PROCEDURE WEor(op1, op2 : WORD):WORD;
(* logically Exclusive OR of 2 words *)
BEGIN
  SETREG( 6, op1 );
  SETREG( 7, op2 );
  CODE( 0BD47H );     (* eor d6,d7 *)
  RETURN WORD( REGISTER( 7 ) );
END WEor;

PROCEDURE WShl(number : WORD; numbits : CARDINAL):WORD;
(*  Shifts number an amount (numbits) left *)
BEGIN
  CODE ( 07C00H );    (* moveq.l #0.d6 *)
  SETREG( 6, numbits );
  SETREG( 7, number );
  CODE( 0ED6FH );    (* lsl d6,d7 *)
  RETURN WORD( REGISTER( 7 ) );
END WShl;

PROCEDURE WShr(number : WORD; numbits : CARDINAL):WORD;
(*  Shifts number an amount (numbits) right *)
BEGIN
  CODE( 07C00H );    (* moveq.l #0.d6 *)
  SETREG( 6, numbits );
  SETREG( 7, number );
  CODE( 0EC6FH );    (* lsr d6,d7 *)
  RETURN WORD( REGISTER( 7 ) );
END WShr;

(*** FOR BYTES ***)

PROCEDURE BAnd( op1, op2 : BYTE):BYTE;
(* logically AND's 2 BYTES *)
BEGIN
  SETREG( 6, op1 );
  SETREG( 7, op2 );
  CODE( 0CE06H );     (* and d6,d7 *)
  RETURN BYTE( REGISTER( 7 ) );
END BAnd;

PROCEDURE BOr(op1, op2 : BYTE):BYTE;
(* logically OR's 2 BYTES *)
BEGIN
  SETREG( 6, op1 );
  SETREG( 7, op2 );
  CODE( 08E06H );     (* or d6,d7 *)
  RETURN BYTE( REGISTER( 7 ) );
END BOr;

PROCEDURE BEor(op1, op2 : BYTE):BYTE;
(* logically Exclusive OR of 2 BYTES *)
BEGIN
  SETREG( 6, op1 );
  SETREG( 7, op2 );
  CODE( 0BD07H );     (* eor d6,d7 *)
  RETURN BYTE( REGISTER( 7 ) );
END BEor;

PROCEDURE BShl(number : BYTE; numbits : CARDINAL):BYTE;
(*  Shifts number an amount (numbits) left *)
BEGIN
  CODE ( 07C00H );    (* moveq.l #0.d6 *)
  SETREG( 6, numbits );
  SETREG( 7, number );
  CODE( 0ED2FH );    (* lsl d6,d7 *)
  RETURN BYTE( REGISTER( 7 ) );
END BShl;

PROCEDURE BShr(number : BYTE; numbits : CARDINAL):BYTE;
(*  Shifts number an amount (numbits) right *)
BEGIN
  CODE( 07C00H );    (* moveq.l #0.d6 *)
  SETREG( 6, numbits );
  SETREG( 7, number );
  CODE( 0EC2FH );    (* lsr d6,d7 *)
  RETURN BYTE( REGISTER( 7 ) );
END BShr;

END BitStuff.

IMPLEMENTATION MODULE  LOGIN;
FROM    Terminal   IMPORT  ReadString,WriteString,WriteLn;
FROM    TermBase   IMPORT  DoWrite,WriteProc;
FROM    Strings    IMPORT  String,Compare,CompareResults,Pos,Copy,Concat,
                           Length;
FROM    GEMDOS     IMPORT  OldTerm,SetPath,GetPath,Exec,ExecMode,SetDrv;
IMPORT  TextIO;
FROM    Streams    IMPORT  StreamKinds,CloseStream;
FROM    SYSTEM     IMPORT  ADR;
CONST   USERS = 16;
        SEED1 = 3844364602;
        SEED2 = 1561798242;
TYPE    sarray  =       ARRAY [0..7] OF CHAR;
VAR     user,password,prg       :       ARRAY [0..USERS-1] OF String;
        path,com                :       ARRAY [0..USERS-1] OF String;
        input                   :       String;
        black,gulampath         :       String;
        clipath                 :       String;
        i,j,index,spos,epos     :       CARDINAL;
        userfound,ok            :       BOOLEAN;
        normal,noecho           :       WriteProc;
        result                  :       INTEGER;
        drvmap                  :       LONGCARD;

PROCEDURE       NoEcho(char: CHAR);
BEGIN
END             NoEcho;

PROCEDURE       login;
BEGIN
        TextIO.SetDefaultIO("PASSWD",READ,result);
        normal:=DoWrite;
        noecho:=NoEcho;
        FOR i:=0 TO USERS-1 DO               (* read in userfile *)
                TextIO.ReadString(input);
                spos:=0;
                ok:=Pos(input,":",spos,epos);
                Copy(input,spos,epos-spos,user[i]);
                spos:=epos+1;
                ok:=Pos(input,":",spos,epos);
                Copy(input,spos,epos-spos,password[i]);
                spos:=epos+1;
                ok:=Pos(input,":",spos,epos);
                Copy(input,spos,epos-spos,path[i]);
                spos:=epos+1;
                ok:=Pos(input,":",spos,epos);
                Copy(input,spos,epos-spos,prg[i]);
                spos:=epos+1;
                Copy(input,spos,Length(input)-spos,com[i]);
        END; (* for *)
        CloseStream(TextIO.in,result);
        CloseStream(TextIO.out,result);
        input[0]:=33c; input[1]:='e'; input[2]:=0c;
        WriteString(input);
        LOOP
           REPEAT
              userfound:=FALSE;
              WriteLn;
              WriteString("Login: ");
              ReadString(input);
              WriteLn;
           UNTIL input[0]#0c;
           FOR i:=0 TO USERS-1 DO
               IF Compare(input,user[i])=Equal THEN
                  userfound:=TRUE;
                  index:=i;
               END;
           END;
           IF (password[index][0]#0c) OR (NOT userfound) THEN
           WriteString("Password: ");
           DoWrite:=noecho;
           ReadString(input);
           DoWrite:=normal;
           WriteLn;
           black:=user[index];
           crypt(input,black);
           IF (Compare(black,password[index])=Equal) AND userfound THEN
              EXIT;
           END;
           END;
           IF (password[index][0]=0c) AND userfound THEN EXIT END;
           WriteLn;
           WriteString("Login incorrect");
        END; (* loop *)
        GetPath(gulampath,0);
        IF path[index][0]=0c THEN
           GetPath(clipath,0);
        ELSE
           clipath:=path[index];
           IF clipath[0]#'\' THEN
              IF ORD(clipath[0])>60H THEN
                 SetDrv(ORD(clipath[0])-61H,drvmap);
              ELSE
                 SetDrv(ORD(clipath[0])-41H,drvmap);
              END;
              j:=1;
              REPEAT
                clipath[j-1]:=clipath[j];
                INC(j);
              UNTIL (clipath[j-1]=0c);
           END;
        END;
        IF NOT ((clipath[0]='\') AND (clipath[1]=0c)) THEN
           Concat(clipath,"\",clipath);
        END;
        IF prg[index][0]=0c THEN
           prg[index]:=gulampath;
        IF NOT ((prg[index][0]='\') AND (prg[index][1]=0c)) THEN
           Concat(prg[index],"\",prg[index]);
        END;
           Concat(prg[index],"gulam.prg",prg[index]);
        END;
        ok:=SetPath(clipath);
        input[0]:=33c; input[1]:='f'; input[2]:=0c;
        WriteString(input);
        Exec(loadExecute,prg[index],"","",result);
END     login;

PROCEDURE       crypt(VAR red,crypto: ARRAY OF CHAR);
VAR     seed            :       ARRAY [0..1] OF LONGCARD;
        chptr           :       POINTER TO sarray;
        black           :       CHAR;
BEGIN
        seed[0]:=SEED1;
        seed[1]:=SEED2;
        chptr:=ADR(seed);
        FOR i:=0 TO 7 DO
            FOR j:=0 TO 7 DO
                chptr^[i]:=CHAR(BITSET(chptr^[i])/BITSET(red[j]));
                chptr^[i]:=CHAR(BITSET(chptr^[i])/BITSET(crypto[j]));
            END;
            black:=CHAR(40H+CARDINAL( BITSET(chptr^[i]) * BITSET(31) ));
            crypto[i]:=black;
        END;
        crypto[8]:=0c;
END             crypt;

BEGIN
END     LOGIN.


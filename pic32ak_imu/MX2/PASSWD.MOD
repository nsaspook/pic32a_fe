MODULE  PASSWD;
FROM    Terminal   IMPORT  ReadString,WriteString,WriteLn;
FROM    TermBase   IMPORT  DoWrite,WriteProc;
FROM    Strings    IMPORT  String,Compare,CompareResults,Pos,Copy,Concat,
                           Length;
FROM    GEMDOS     IMPORT  OldTerm,Rename,Delete,Open,Close;
IMPORT  TextIO;
FROM    Streams    IMPORT  StreamKinds,CloseStream;
FROM    GEMX       IMPORT  BasePageAddress;
FROM    LOGIN      IMPORT  crypt;
CONST   USERS = 16;
TYPE    sString =       ARRAY [0..13] OF CHAR;
        lString =       ARRAY [0..64] OF CHAR;
VAR     user,password,prg       :       ARRAY [0..USERS-1] OF sString;
        path,com                :       ARRAY [0..USERS-1] OF lString;
        input,clipath           :       String;
        black                   :       sString;
        i,index,spos,epos       :       CARDINAL;
        userfound,ok            :       BOOLEAN;
        normal,noecho           :       WriteProc;
        result                  :       INTEGER;

PROCEDURE       NoEcho(char: CHAR);
BEGIN
END             NoEcho;

BEGIN
        Open("passwd",0,result);
        IF result>0 THEN
           ok:=Close(result);
        ELSE
           OldTerm;
        END;
        TextIO.SetDefaultIO("PASSWD",READ,result);
        normal:=DoWrite;
        noecho:=NoEcho;
        FOR i:=0 TO USERS-1 DO               (* read in userfile *)
                TextIO.ReadString(input);
                IF input[0]#0c THEN
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
                END;
        END; (* for *)
        CloseStream(TextIO.in,result);
        CloseStream(TextIO.out,result);
        LOOP
           userfound:=FALSE;
           FOR i:=0 TO CARDINAL(BasePageAddress^.CmdLine[0]) DO
               input[i]:=BasePageAddress^.CmdLine[i+1]; (* read in command line *)
           END;
           input[i+1]:=0c;
           IF input[0]=0c THEN OldTerm END; (* no user exit *)
           FOR i:=0 TO USERS-1 DO
               IF Compare(input,user[i])=Equal THEN
                  userfound:=TRUE;
                  index:=i;
               END;
           END;
           IF (password[index][0]#0c) OR (NOT userfound) THEN
           WriteString("Old Password: ");
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
           WriteString("Incorrect Password not changed!");
           WriteLn;
           OldTerm;
        END; (* loop *)
        REPEAT
        WriteString("New Password: ");
        DoWrite:=noecho;
        ReadString(password[index]);
        DoWrite:=normal;
        WriteLn;
        IF Length(password[index])<4 THEN
           WriteString("Password too short. Please use a longer password.");
           WriteLn;
        END;
        UNTIL (Length(password[index])>=4);
        black:=user[index];
        crypt(password[index],black);
        password[index]:=black;
        ok:=Delete("passwd.old");
        Rename("passwd","passwd.old");
        ok:=Delete("passwd");
        TextIO.SetDefaultIO("PASSWD",READWRITE,result);
        FOR i:=0 TO USERS-1 DO               (* Write passwd file *)
            IF user[i][0]#0c THEN
                TextIO.WriteString(user[i]);
                TextIO.Write(':');
                TextIO.WriteString(password[i]);
                TextIO.Write(':');
                TextIO.WriteString(path[i]);
                TextIO.Write(':');
                TextIO.WriteString(prg[i]);
                TextIO.Write(':');
                TextIO.WriteString(com[i]);
                TextIO.WriteLn;
            END;
        END; (* for *)
        CloseStream(TextIO.in,result);
        CloseStream(TextIO.out,result);
        OldTerm;
END     PASSWD.


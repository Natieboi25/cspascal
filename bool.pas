PROGRAM bool;
USES crt;
VAR
   a, b : INTEGER;
   p, q : BOOLEAN;
   c : CHAR;
BEGIN
     p := 2 + 2 = 4;
     q := false;
     Writeln(p);
     IF p AND q THEN Writeln('if')
     ELSE Writeln('else');
     Readln(a);
     IF (a>=13) AND(a <= 19) THEN Writeln('Teenager')
     ELSE IF (a<13) THEN Writeln('Child')
     ELSE IF (a>=20) THEN Writeln('Adult');

     a := 1;
     REPEAT
     IF KeyPressed THEN
     BEGIN
     c := Readkey;
     ClrScr;
     a := 1;
     END;
     Writeln('a = ', a);
     a := a +1;
     UNTIL c = 'q';
     Writeln('Out of loop');

     Readln(a)
END.
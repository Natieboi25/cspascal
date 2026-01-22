PROGRAM AverageWeight;
CONST
    MAXSIZE = 20;

TYPE
    List = ARRAY[1..MAXSIZE] OF REAL;
VAR
   weights: List;
   teamSize : INTEGER;
   average : REAL;
   sum : REAL;
   i : INTEGER;
BEGIN
sum := 0;
Writeln ('How many players are on your team?');
readln(teamSize);
FOR i:=1 TO teamsize DO
BEGIN
writeln('What the weight of player #, ', i, ' : ');
Readln(weights[i]);
END;
sum := 0;
FOR i := 1 TO teamSize DO writeln(weights[i]);
sum = sum + num

END.
PROGRAM avgheight(input, ouitput);
CONST
 MAXSIZE=10;
TYPE
List = ARRAY[1..MAXSIZE] OF INTEGER;


VAR
heights : List;
teamsize : integer;
average: REAL;
sum, i : INTEGER;

BEGIN
Write('How many players are on your team? ');
Readln(teamsize);
FOR i := 1 TO teamsize DO
BEGIN
Write('What is the height of player # ', i , ' in inches? ' );
Readln(heights[i]);
Read(i);
END;
FOR i :=1 TO teamsize DO
Writeln('The average player is', sum/teamsize, 'inches tall');
END.
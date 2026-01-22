PROGRAM calcgrade;
CONST
MAXGRADES = 20;
TYPE
List = Array[1..MAXGRADES] OF REAL;
VAR
grades : List;
average, sum : REAL;
numgrades, i : INTEGER;

FUNCTION CalculateAverage(gradeList : List; num : INTEGER) : REAL;
VAR sum : INTEGER;
BEGIN
sum := 0;
FOR i := 1 to num Do sum := sum + gradeList[i];
Calculateaverage := sum/num;
END;

FUNCTION classifygrade(average : REAL) : CHAR;
IF average >= 89.5 THEN classifygrade := 'A'
ELSE If average >=79.5  THEN classifygrade := 'B'
ELSE IF average >= 69.5 then classifygrade:= 'C'
ELSE IF average >= 68.5 then classifygrade:= 'D'
ELSE classify grade:= 'F'
END;

BEGIN
Writeln('How many assigments do you have? ');
Readln(numgrades);
FOR i := 1 TO numgrades DO
BEGIN
Write('Enter grade for assignment #' , i, ': ');
Readln(grades[i]);
END;

average := calculateaverage(grades, numgrades);
Writeln('average = ', average);

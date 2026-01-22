PROGRAM GradeClassifier(Input, Output);
VAR
grade : integer;
class: char;

FUNCTION classifygrade(grade : INTEGER) : CHAR;
         BEGIN
         IF (grade>89) THEN classifygrade := 'A'
         ELSE IF (grade<90) AND (grade>79) THEN classifygrade := 'B'
         ELSE IF (grade<80) AND (grade>69) THEN classifygrade := 'C'
         ELSE IF (grade=69) THEN classifygrade := 'D'
         ELSE IF (grade<69) and (grade>=0) THEN classifygrade := 'F'
         END;
PROCEDURE Printgradeclass(class : CHAR);
          BEGIN
          IF class = 'A' THEN writeln ('Congratulations, you got an A')
          ELSE IF class = 'B' THEN writeln ('Nice, you got a B')
          ELSE IF class = 'C' THEN writeln ('Ouch, you got a C, maybe study')
          ELSE IF class = 'D' THEN writeln ('Thats rough, you got a D')
          ELSE IF class = 'F' THEN writeln ('You should probably just drop out at this point, you got an F')
          END;

BEGIN
     REPEAT
     Writeln('What grade did you get?');
     Read(grade);
     IF (grade<0) OR (grade>100) THEN writeln('This is an invalid grade, please put in your real grade.')
     UNTIL (grade>=0) AND (grade<=100);
     class := classifygrade(grade);
     printgradeclass(class);
     read(grade);
END.

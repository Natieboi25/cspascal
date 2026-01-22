PROGRAM AgeClassifier(Input, Output);
VAR
age : integer;
class : CHAR;

FUNCTION ClassifyAge(age : INTEGER) : CHAR;
  BEGIN
  IF (age>19) THEN ClassifyAge := 'a'
  ELSE IF (12<age) AND (age<20) THEN ClassifyAge := 't'
  ELSE IF (age<13) THEN ClassifyAge := 'c';
  END;

PROCEDURE PrintAgeClass(class : CHAR);
  BEGIN
  IF class = 'a' THEN writeln ('you are an adult')
  ELSE IF class = 't' THEN writeln('You are a teenager')
  ELSE IF class = 'c' THEN writeln('You are a child')
  END;

BEGIN
  Writeln('How old are you?');
  Read(age);
  class := ClassifyAge(age);
  PrintAgeClass(class);
  Read(age);
END.
PROGRAM stats;
USES csp;
VAR
  myLIST : LIST;
  n : INTEGER;
BEGIN
  REPEAT
  Writeln('How many random numbers for you list?');
  Readln(n);
  IF (n <= 0) OR (n > SIZE) THEN
    Writeln(' You number ust be between 1 and ', SIZE);
  UNTIL (n > 0) AND (N<= SIZE);
  RandomList(myList, n);
  PrintList(myList);
  Readln;

END.
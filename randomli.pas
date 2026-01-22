PROGRAM TestRandom;
USES csp;
VAR
  myList: LIST;
BEGIN
  RandomList(myList, 10);
  PrintList(myList);
END.
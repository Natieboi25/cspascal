PROGRAm RandList;
USES csp;
VAR
  myList : List;
  i : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 TO 20 DO
    Append(myList, Random(67) +1);
    PrintList(myList);
    Readln;


    FOR i:= 1 to 20 do
      IF mylist[i] = 67 THEN
      Writeln('67777777');

      Readln;


END.
PROGRAM listtest;
USES csp;
VAR
myList : List;
i : INTEGER;
PROCEDURE PrintList(aList : LIST);
BEGIN
FOR i := 1 TO Length(myList) DO
Writeln('Element #', i, ' = ', aList[i]);
END;

BEGIN
Writeln('Lenght of list is ', Length(mylist));

Append(myList, 5);
Append(myList, 10);
Writeln('Now length is ', Length(myList));
Readln(i);
PrintList(myList);
readln(i);
Append(mylist, 90);
Append(myList, 25);
END.
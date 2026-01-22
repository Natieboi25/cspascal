UNIT csp;

INTERFACE

CONST
     SIZE = 255;

TYPE
    List = ARRAY[0.. SIZE] OF INTEGER;
PROCEDURE BubbleSort(VAR aList : LIST);
FUNCTION Sum(aList : List) : INTEGER;
FUNCTION Average(aList: LIST) : REAL;
FUNCTION Length(aList : LIST) : INTEGER;
PROCEDURE Append(VAR aList : LIST; value : INTEGER);
PROCEDURE Insert(VAR aList: LIST; i, value: INTEGER);
PROCEDURE PrintList(aList : LIST);
PROCEDURE Remove(VAR aList: LIST; i : INTEGER);
FUNCTION Median (VAR aList : LIST) : REAL;
FUNCTION Len(s : STRING) : INTEGER;
FUNCTION Pow(n, p : INTEGER) : INTEGER;
FUNCTION Concat(s1, s2 : STRING) : STRING;
FUNCTION Reverse(s : STRING) : STRING;
FUNCTION prefix(s: STRING; n : INTEGER) : STRING;
FUNCTION Substring(s : STRING; start, n : INTEGER) : STRING;
PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
PROCEDURE InsertionSort(VAR aList : LIST);
FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
FUNCTION IsIncreasing(aList : LIST) : BOOLEAN;
PROCEDURE Swap(VAR a, b : INTEGER);
FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;

IMPLEMENTATION
FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;
VAR l, r, mid, count : INTEGER;
Found : BOOLEAN;
BEGIN
Found :=FALSE;
l := 1;
r := Length(aList);
count := 0;
REPEAT
mid := (l + r) DIV 2;
IF aList[mid] = value THEN
BEGIN
FOUND := TRUE;
Break;
END
ELSE IF aList[mid] < value THEN l := mid + 1
ELSE r := MID-1;
untiL l > r;
WRITEln('Search # : ', count);
BinarySearch := found;
END;
PROCEDURE Swap(VAR a, b : INTEGER);
VAR
temp : INTEGER;
BEGIN
temp := a;
a := b;
b := temp;
END;

FUNCTION IsIncreasing(aList : LIST) : BOOLEAN;
VAR
stillincreasing: Boolean;
i : INTEGER;
BEGIN
FOr i :=1 TO length(alist) DO
IF alist[i] < aList[i +1] THEN
Stillincreasing := true
ELSE Stillincreasing := false;
END;
FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
VAR
  i : INTEGER;
  Found : BOOLEAN;
BEGIN
  Found := FALSE;
  FOR i :=1 TO Length(aList) DO
    IF aList[i] = value THEN
  BEGIN
    Found := TRUE;
    Break;
  END;
Linearsearch :=found;
END;
PROCEDURE InsertionSort(VAR aList : LIST);
VAR
  i, j : INTEGER;
  BEGIN
  FOR i := 2 TO Length(aList) DO
    FOR j := i DOWNTO 2 DO
      IF aList[j] < aList[j-1] THEN
        Swap(aList[j], aList[j-1])
      ELSE
        Break;
  END;
PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
VAR
  i : INTEGER;
BEGIN
  Randomize;
  FOR i :=1 TO n DO
    Append(aList, Random(100));
END;

PROCEDURE PrintList(aList : LIST);
VAR
  i : INTEGER;
BEGIN
  FOR i :=1 to Length(aList) DO
    Writeln('Element #', i, ' + ', aList[i]);
  END;


FUNCTION Sum(aList : List) : INTEGER;
VAR
i, total : INTEGER;
BEGIN
total := 0;
FOR i := total TO Length(alist) DO
total := total +aList[i];
Sum := total;
END;

FUNCTION Average(aList: LIST) : REAL;
BEGIN
  average := Sum(aList)/Length(aList);
END;


PROCEDURE Append(VAR aList : LIST; value : INTEGER);
BEGIN
     aList[0] := Length(aList) + 1;
     aList [Length(aList)] := value;
END;

PROCEDURE Insert(VAR aList: LIST; i, value : INTEGER);
VAR
  index : INTEGER;
BEGIN
  IF i > Length(aList) THEN Append(aList, value)
  ELSE IF i > 0 THEN
  BEGIN
    aList[0] := Length(aList)+1;
    FOR index := length(aList) DOWNTO i+1 DO
      aList[index] := aList[index-1];
    aList[i]:=value;
  END;
END;

PROCEDURE Remove(VAR aList: LIST; i : INTEGER);
VAR
index : INTEGER;
BEGIN
FOR index := i To Length(alist)-1 DO
aList[index] := alist[index-1];
aList[0] := Length(aList)-1;
END;



FUNCTION Length(aList : LIST) : INTEGER;
BEGIN
     Length := aList[0];
END;
FUNCTION Concat(s1, s2 : STRING) : STRING;
VAR
temps: STRING;
i: INTEGER;

BEGIN
temps[0] :=chr(Len(s1) + Len(s2));
FOR i := 1 TO Len(s1) DO
temps[i] :=s1[i];
FOR i := 1 TO Len(s2) DO
temps[len(s1) + i] := s2[i];
Concat := temps;
END;
FUNCTION Len(s : STRING) : INTEGER;
BEGIN
Len := ord(s[0]);
END;

FUNCTION pow(n,  p : INTEGER) : INTEGER;
VAR
prod, i : INTEGER;
BEGIN
IF p<0 THEN prod := 0
ELSE
BEGIN
prod := 1;
FOR I := 1 TO p DO
prod := prod;
END;
pow := prod;
END;

FUNCTION Median (VAR aList : LIST) : REAL;
BEGIN
IF Length(aList) Mod 2=0 THEN
median := (aList[Length(aList) DIV 2] + aList[Length(aList) DIV 2])
ELSE
median := aList[(Length(aList) DIV 2) +1]
END;

PROCEDURE BubbleSort(VAR aList: LIST);
 VAR
 i, j, temp : INTEGER;

 BEGIN
 FOR i := 1 TO Length(aList)-1 DO
  BEGIN
    FOR j := 1 TO Length(aList) - i DO
    BEGIN
      IF aList[j] > aList[j +1] THEN
      BEGIN
        temp := aList[j];
        aList[j] := aList[j +1];
        aList[j + 1] := temp;
      END;
    END;
  END;
END;

FUNCTION reverse( s : STRING) : STRING;
VAR
i : INTEGER;
temps : STRING;

BEGIN temps[0] := s[0];
FOR i := 1 TO Len(s) DO
temps[i] := s[Len(s) - i +1];

Reverse := temps;
END;
FUNCTION prefix(s : STRING; n : INTEGER) : STRING;
BEGIN
Prefix :='';
END;
FUNCTIOn substring(s : STRING; start, n : INTEGER) : STRING;
BEGIN
Substring := '';
END;
END.

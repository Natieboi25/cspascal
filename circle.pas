Program Graphics;
uses Graph, Crt;
TYPE

Triangle = ARRAY[1..4] OF PointType;var
  Gd, Gm: Integer;
  c: Char;
  x, y, i: Integer;
  myColor, numcolor : word;
  myTri : Triangle;
begin
  Gd := Detect;
  InitGraph(Gd, Gm, 'C:\DOS\TP7\BGI');
  SetColor(Red);
  x := 0;
  y := 0;
  numcolor :=getmaxcolor;
  Randomize;
  REPEAT
  FOR I:= 1 to 3 do
  BEGIN
    mytri[i].x := Random(640);
    MyTri[i].y := Random(480);
  END;
  Mycolor := Random(numcolor);
  setcolor(mycolor);
  mytri[4] := mytri[1];
  setfillstyle(1, mycolor);

  fillpoly(4, mytri);
  UNTIL KeyPressed;
  Repeat
    if KeyPressed then
    begin
      c := ReadKey;
      ClearDevice;
      CASE c OF
        'w' : y := y-5;
        's' : y := y+5;
        'a' : x := x-5;
        'd' : x := x+5;
      end;
      Circle(x + 150, y + 150, 50);
    end;
  Until c = 'q';
  CloseGraph;
end.

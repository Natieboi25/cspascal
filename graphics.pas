PROGRAM graphics;
USES Graph;
VAR
   gd, gm : INTEGER;
BEGIN
     gd := Detect;
     InitGraph(gd, gm, 'C:\TPWDB/BGI');

     SetColor(8);
     Rectangle (400, 400, 100, 150);

     SetColor(8);
     Rectangle (300, 400, 200, 250);

     SetColor(8);
     Line(100, 150, 250, 50);

     SetColor(8);
     Line(250, 50, 400, 150);

     SetColor(8);
     Rectangle (300, 170, 200, 220);

     SetColor(8);
     Line(250, 170, 250, 220);

     SetColor(8);
     Line(300, 195, 200, 195);

     Readln(gd);
     CloseGraph;
END.
PROGRAM circles;  { Draw 10 circles with random center and random radius on screen }
USES graph;
VAR
  gm, gd, i : INTEGER;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');

  FOR i :=1 TO 10 DO
  BEGIN
  SetColor(random(16));
  Circle (random(480), random(480), random(480));

  SetCOlor(random(16));
  Rectangle (random(500), random(500), random(500), random(500));

  END;
  Read(i);
  CloseGraph;

END.
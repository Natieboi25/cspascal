PROGRAM testconcat;
USES csp;
VAR
s : STRING;

BEGIN
 IF Concat('Mr', 'Murry') = 'Mrmurry' THEN
 Writeln('pass');
 ELSE
 Writeln('fail');

END.
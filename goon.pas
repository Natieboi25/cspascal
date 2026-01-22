PROGRAM strings;
VAR
   name, msg : STRING;
   age : INTEGER;
BEGIN
  Writeln ('What is your name?');
   Readln (name);
  Writeln ('What is your age?');
   Readln (age);
   msg := 'Hi ' + name;
  Writeln ('Your message is ', ord(msg[0]), ' long');
  Readln;

END.
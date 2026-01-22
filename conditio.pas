PROGRAM Conditionals;
VAR
    num, guess, i : INTEGER;
BEGIN
    Randomize;
    num := RANDOM(10);


     REPEAT
     Write('Guess a number between 0 and 10: ');
     Read(guess);
     IF guess = num THEN writeln ('You guessed it!')
     ELSE IF guess < num THEN writeln ('Nope, the answer is above that')
     ELSE IF guess > num THEN writeln ('Nope, the answer is below that');
     UNTIL num = guess;

    Read(guess);
END.
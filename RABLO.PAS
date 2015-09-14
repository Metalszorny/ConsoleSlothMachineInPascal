program felkaru_rablo;

uses crt;

var 
	a : integer; { The first fruit. }
	b : integer; { The second fruit. }
	c : integer; { The third fruit. }
	penz : integer; { The money variable. }
	szoveg : string; { The user input variable. }
	
begin
	textbackground(13); { The text's background color. }
	textcolor(black); { The text's color. }
	penz := 500; { Set the money. }
	
	repeat
		randomize; { Use random. }
		clrscr; { Clear the screen.}
		
		a := random(3) + 1; { Generate the first fruit. }
		gotoxy(20, 12); { The first fruit's position. }
		
		if a = 1 then
			writeln('alma');
		if a = 2 then
			writeln('szilva');
		if a = 3 then
			writeln('cseresznye');
		
		b := random(3) + 1; { Generate the second fruit. }
		gotoxy(35, 12); { The second fruit's position. }
		
		if b = 1 then
			writeln('alma');
		if b = 2 then
			writeln('szilva');
		if b = 3 then
			writeln('cseresznye');
		
		c := random(3) + 1; { Generate the third fruit. }
		gotoxy(50, 12); { The third fruit's position. }
		
		if c = 1 then
			writeln('alma');
		if c = 2 then
			writeln('szilva');
		if c = 3 then
			writeln('cseresznye');
		
		gotoxy(10, 5); { The exit text's position. }
		writeln('Kil‚p‚s: Q'); { The exit text. }
		
		gotoxy(25, 20); { The money text's position. }
		writeln('P‚nzed:'); { The money text. }
		
		gotoxy(35, 20); { The money value's position. }
		penz := penz - 30; { Subtract the bet from the money. }
		writeln(penz); { The money value. }
		
		gotoxy(38, 20); { The currency text's position. }
		writeln('Ft'); { The currency text. }
		
		gotoxy(35, 25); { The iteration outcome's text position. }
		
		if (a = b) and (b = c) then
		begin
			writeln('nyert‚l!'); { Winning scenario for the iteration. }
			penz := penz + 100; { Add the winning to the money. }
		end;
		
		if penz <= 0 then
			writeln('vesztett‚l!'); { Loosing scenario for the game. }

		readln(szoveg); { Wait for the user's input. }
		
	until (szoveg = 'q') or (penz <= 0); { Exit if the user request's it or the money is gone. }
end.
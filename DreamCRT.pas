unit DreamCrt;
interface


uses crt;

procedure cWord(color : integer; s : string);
procedure cGotoxy(y, r, gotoxyY, dop:integer);
procedure dWind();


implementation

procedure cWord(color : integer; s : string);
 begin
  textcolor(color);
  write(s);
  textcolor(White);
 end;


procedure cGotoxy(y, r, gotoxyY, dop:integer);
 begin
   gotoxy(dop + (y - r), gotoxyY);
 end;


procedure dWind();
 begin 
   setwindowsize(120, 25);
   for var  i:= 1 to 120 do begin gotoxy(i, 1); write('█'); end;
   for var  i:= 2 to 25 do begin gotoxy(1, i); writeln('█'); end;
   for var  i:= 2 to 25 do begin gotoxy(120, i); writeln('█'); end;
   for var  i:= 1 to 120 do begin gotoxy(i, 25); write('█'); end;
   for var  i:= 2 to 25 do begin gotoxy(80, i); writeln('█'); end;
   for var  i := 80 to 120 do begin gotoxy(i, 7); writeln('█'); end;
   for var  i := 80 to 120 do begin gotoxy(i, 13); writeln('█'); end;
   gotoxy(1,1);
 end; 



end.

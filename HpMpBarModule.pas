unit HpMpBarModule;

interface
	uses crt, DreamCRT;

procedure HpMpBar(x, y, regim:integer);



implementation
procedure HpMpBar(x, y, regim:integer);
 var color : array[1..2] of integer;	
	begin
	gotoxy(x, y); 
	 if (y = 3) or (y = 9) then begin color[1] := 4; color[2] := 12 end;
	 if (y = 4) or (y = 10) then begin color[1] := 1; color[2] := 9 end;
	 if (regim <> 0) and (regim <> 10) 
	  then 
	 	begin
	 	for var i := 1 to regim do cWord(color[1], '██');
	 	for var i := 1 to (10 - regim) do cWord(LightGray, '██');
	 	end;
	 if regim = 0 then cWord(DarkGray, '████████████████████');
	 if regim = 10 then cWord(color[2], '████████████████████');
	end;

end.
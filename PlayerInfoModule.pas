unit PlayerInfoModule;
interface
  uses HpMpBarModule, crt, DreamCRT;
//Обьект Игрока
type Player = record
  //Кастом
  NickName : string;
  
  //Здоровье, выживаемость
  Hp : integer;
  MaxHp := 100; 
  Def : integer;
  
  //Энергия, атака
  Mp : integer;
  MaxMp := 100;   
  Atk : integer;
 end;

procedure PlayerHPBar(x : Player);
procedure PlayerMpBar(x : Player);
procedure PlayerAtkInfo(x : Player);
procedure PlayerDefInfo(x : Player);
Procedure PlayerNick(x : Player);
Procedure PlayerInfoNew(x : Player);



implementation
procedure PlayerHPBar(x : Player);
  var d : integer;
   begin
     x.MaxHp := 100; 
	 d:= round(x.Hp/x.MaxHp*100);
	 case d of
	    0: 		 HpMpBar(90,3, 0);
	 	1..10:   HpMpBar(90,3, 1);
		11..20:  HpMpBar(90,3, 2);
		21..30:  HpMpBar(90,3, 3); 
		31..40:  HpMpBar(90,3, 4);
		41..50:  HpMpBar(90,3, 5);
		51..60:  HpMpBar(90,3, 6);
		61..70:  HpMpBar(90,3, 7);
		71..80:  HpMpBar(90,3, 8);
		81..90:  HpMpBar(90,3, 9);
		91..100: HpMpBar(90,3, 10);
	end;
   end;
procedure PlayerMpBar(x : Player);
  var d : integer;
   begin
	x.MaxMP := 100; 
	d:= round(x.Mp/x.MaxMp*100);
	 case d of
	    0: 		 HpMpBar(90,4, 0);
	 	1..10:   HpMpBar(90,4, 1);
		11..20:  HpMpBar(90,4, 2);
		21..30:  HpMpBar(90,4, 3); 
		31..40:  HpMpBar(90,4, 4);
		41..50:  HpMpBar(90,4, 5);
		51..60:  HpMpBar(90,4, 6);
		61..70:  HpMpBar(90,4, 7);
		71..80:  HpMpBar(90,4, 8);
		81..90:  HpMpBar(90,4, 9);
		91..100: HpMpBar(90,4, 10);
	end;
   end;
procedure PlayerAtkInfo(x : Player);
  begin
    gotoxy(98, 5); 
    cWord(LightGray, '&&&');
  end;
procedure PlayerDefInfo(x : Player);
  begin
    gotoxy(98, 6); 
    cWord(LightGray, '&&&');
  end;
Procedure PlayerNick(x : Player);
  Begin
	cGotoxy(20,length(x.NickName), 2, 81);
	cWord(Yellow, x.NickName);    
  end;
Procedure PlayerInfoNew(x : Player);
  Begin
	PlayerNick(x);
	PlayerHPBar(x);
	PlayerMpBar(x);    
	PlayerDefInfo(x);
	PlayerAtkInfo(x);
  end;

end.
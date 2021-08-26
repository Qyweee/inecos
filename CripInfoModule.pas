unit CripInfoModule;
interface
    uses HpMpBarModule, crt, DreamCRT;

type Сrip = record
  //Кастом
  cName : string;
  
  //Здоровье, выживаемость
  Hp : integer;
  MaxHp := 100; 
  Def : integer;
  
  //Энергия, атака
  Mp : integer;
  MaxMp := 100;   
  Atk : integer;
 end;


procedure CripHPBar(x : Сrip);
procedure CripMpBar(x : Сrip);
procedure CripAtkInfo(x : Сrip);
procedure CripDefInfo(x : Сrip);
Procedure CripName(x : Сrip);
Procedure CripInfoNew(x : Сrip);


implementation

procedure CripHPBar(x : Сrip);
  var d : integer;
   begin
     x.MaxHp := 100; 
	 d:= round(x.Hp/x.MaxHp*100);
	 case d of
	    0: 		 HpMpBar(90,9, 0);
	 	1..10:   HpMpBar(90,9, 1);
		11..20:  HpMpBar(90,9, 2);
		21..30:  HpMpBar(90,9, 3); 
		31..40:  HpMpBar(90,9, 4);
		41..50:  HpMpBar(90,9, 5);
		51..60:  HpMpBar(90,9, 6);
		61..70:  HpMpBar(90,9, 7);
		71..80:  HpMpBar(90,9, 8);
		81..90:  HpMpBar(90,9, 9);
		91..100: HpMpBar(90,9, 10);
	end;
   end;
procedure CripMpBar(x : Сrip);
  var d : integer;
   begin
	x.MaxMP := 100; 
	d:= round(x.Mp/x.MaxMp*100);
	 case d of
	    0: 		 HpMpBar(90,10, 0);
	 	1..10:   HpMpBar(90,10, 1);
		11..20:  HpMpBar(90,10, 2);
		21..30:  HpMpBar(90,10, 3); 
		31..40:  HpMpBar(90,10, 4);
		41..50:  HpMpBar(90,10, 5);
		51..60:  HpMpBar(90,10, 6);
		61..70:  HpMpBar(90,10, 7);
		71..80:  HpMpBar(90,10, 8);
		81..90:  HpMpBar(90,10, 9);
		91..100: HpMpBar(90,10, 10);
	end;
   end;

procedure CripAtkInfo(x : Сrip);
  begin
    gotoxy(98, 11); 
    cWord(LightGray, '&&&');
  end;
procedure CripDefInfo(x : Сrip);
  begin  
    gotoxy(98, 12);
    cWord(LightGray, '&&&');
  end;
Procedure CripName(x : Сrip);
  Begin
	cGotoxy(20,length(x.cName), 8, 81);
	cWord(Yellow, x.cName);    
  end;
Procedure CripInfoNew(x : Сrip);
  Begin
	CripName(x);
	CripHPBar(x);
	CripMpBar(x);    
	CripDefInfo(x);
	CripAtkInfo(x);
  end;


end.
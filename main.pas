uses crt, DreamCRT, NickNameModule, PlayerInfoModule, HpMpBarModule, CripInfoModule;
//Переменные
var 
  p : Player; 
  c : Сrip;

Begin 
setwindowsize (80, 25);
//Ввод никнейма
  repeat
  write('Введите ');
  cWord(LightGreen , 'Имя');
  write(' вашего героя ');
  textcolor(LightGreen);
  readln(p.NickName);
  textcolor(White);
  if wExamin(p.NickName, 8) = 1 
    then break
    else
     begin
      clrscr;
      write('['); cWord(LightRed, '!'); write(']'); write('Введите ваше '); cWord(LightRed, 'имя'); write(' еще раз');
      delay(1000);
      clrscr;
     end;
  until wExamin(p.NickName, 8) = 1;


c.cName:= '12';
c.Hp := random(1, 100);
c.Mp := random(1, 100);

//Само приложение
clrscr;
dWind();
PlayerInfoNew(p);
gotoxy(2,2);

p.Hp := random(1, 100);
p.Mp := random(1, 100);
PlayerInfoNew(p);
CripInfoNew(c);


gotoxy(2,2);
readkey;
end.
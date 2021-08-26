unit NickNameModule;

interface
	uses crt;

function wExaminColit(slovo : string; n:integer):integer;
function wExaminSost(slovo : string):integer;
function wExamin(slovo : string; n:integer):integer; 


implementation
function wExaminColit(slovo : string; n:integer):integer;
 begin
   if (length(slovo)<1) or (length(slovo)>n) then wExaminColit := 0 else wExaminColit := 1
 end;
function wExaminSost(slovo : string):integer;
 var 
   ABC := ['a'..'z', 'A'..'Z', 'А', 'Б', 'В', 'Г', 'Д', 'Е', 'Ё', 'Ж', 'З', 'И', 'К', 'Л', 'М', 'Н', 'О', 'П', 'Р', 'С', 'Т', 'У', 'ф', 'Х', 'Ц', 'Ч', 'Ш', 'Щ', 'Ъ', 'Ы', 'Ь', 'Э', 'Ю', 'Я','а', 'б', 'в', 'г', 'д', 'е', 'ё', 'ж', 'з', 'и', 'й', 'к', 'л', 'м', 'н', 'о', 'п', 'р', 'с',  'т', 'у', 'ф', 'х', 'ц', 'ч', 'ш', 'щ', 'ъ', 'ы', 'ь', 'э', 'ю', 'я' ];
   i : integer;
 begin
   for i:= 1 to length(slovo) do
   if not(slovo[i] in ABC) then begin wExaminSost := 0; exit; end else wExaminSost := 1;
 end;
function wExamin(slovo : string; n:integer):integer; 
 begin 
  if (wExaminColit(slovo, n) = 1) and (wExaminSost(slovo) = 1)
    then 
      begin 
        wExamin := 1;
        exit;
        end
     else wExamin := 0;
  end;

end.
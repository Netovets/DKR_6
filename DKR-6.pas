uses crt;
const
  n = 10;
type
  treker = record
    mas : array[1..n] of integer;
    count : integer;
  end;
var
  l : treker;
  menu : char;
  
procedure show(var l : treker);
var 
  i : integer;
begin
  writeln('Созданный список :');
  for i := 1 to l.count do 
    writeln(l.mas[i]);
    writeln;
end;

procedure add(var l : treker);
var
  i : integer;
begin
  if l.count < n then 
  begin
    write('Добавить элемент: ');
    readln(i);
    l.mas[l.count + 1] := i;
    l.count := l.count + 1;
    writeln;
  end
  else writeln('Лист заполнен');
end;

procedure del(var l : treker);
var
  d : integer;
  i : integer;
begin
  if l.count <> 0 then 
  begin
    writeln('Напишите индекс удаляемого элемента: ');
    readln(d);
    l.count := l.count - 1;
    for i := d to l.count do
      l.mas[i] := l.mas[i + 1];
    writeln('Элемент удалён');
    writeln;
  end
  else writeln('Список пуст');
end;

procedure vvod;
    begin
      writeln('1) Посмотреть список');
      writeln('2) Добавить элемент');
      writeln('3) Удалить элемент');
      writeln('0) Выход');
      writeln;
      menu := readkey;
    end;

begin
  l.count := 0;
  repeat
    vvod;
    case menu of
      '1': show(l);
      '2': add(l);
      '3': del(l);
    end;
  until menu = '0';
end.
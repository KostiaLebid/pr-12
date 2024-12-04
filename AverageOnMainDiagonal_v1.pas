program DiagonalAverage;

const
  n = 5;  {Розмірність масиву}

var
  arr: array[1..n, 1..n] of integer;
  i, j: integer;  {Оголошення змінної j для циклів}
  sum: integer;
  avg: real;

begin
  {Введення елементів масиву}
  writeln('Введіть елементи масиву розміром ', n, ' x ', n);
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      write('arr[', i, ',', j, ']: ');
      read(arr[i, j]);
    end;
  end;

  {Обчислення суми елементів головної діагоналі}
  sum := 0;
  for i := 1 to n do
  begin
    sum := sum + arr[i, i];  {Елементи головної діагоналі мають однакові індекси i = j}
  end;

  {Обчислення середнього арифметичного}
  avg := sum / n;

  {Виведення результату}
  writeln('Середнє арифметичне елементів головної діагоналі: ', avg:0:2);
end.

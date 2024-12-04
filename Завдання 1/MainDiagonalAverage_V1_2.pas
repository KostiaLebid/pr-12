program MainDiagonalAverage;
uses crt;

var
  matrix: array[1..100, 1..100] of integer;
  n, i, j, sum: integer;
  avg: real;
  f: text;

begin
  clrscr;
  writeln('Програма для обчислення середнього арифметичного елементів головної діагоналі.');
  write('Введіть розмір квадратного масиву (n): ');
  readln(n);

  if (n <= 0) or (n > 100) then
  begin
    writeln('Розмір масиву має бути від 1 до 100.');
    exit;
  end;

  writeln('Введіть елементи масиву:');
  for i := 1 to n do
  begin
    write('Елементи ', i, '-го рядка: ');
    for j := 1 to n do
      read(matrix[i, j]);
  end;

  sum := 0;
  for i := 1 to n do
    sum := sum + matrix[i, i];

  avg := sum / n;

  writeln('Середнє арифметичне елементів головної діагоналі: ', avg:0:2);

  assign(f, 'result.txt');
  rewrite(f);
  writeln(f, 'Середнє арифметичне елементів головної діагоналі: ', avg:0:2);
  close(f);

  writeln('Результат збережено у файлі "result.txt".');
  readln;
end.
program MainDiagonalAverage;

uses crt;

var
  matrix: array[1..100, 1..100] of real;  { Об'явлення масиву для збереження матриці }
  n, i, j: integer;                       { Змінні для розміру матриці та циклів }
  sum: real;                              { Змінна для обчислення суми елементів діагоналі }
  average: real;                          { Змінна для обчислення середнього арифметичного }

begin
  clrscr;

  { Введення розміру матриці }
  write('Введіть розмірність матриці (n): ');
  readln(n);

  { Введення елементів матриці }
  writeln('Введіть елементи матриці: ');
  for i := 1 to n do
    for j := 1 to n do
    begin
      write('matrix[', i, ',', j, ']: ');
      readln(matrix[i, j]);
    end;

  { Обчислення суми елементів головної діагоналі }
  sum := 0;
  for i := 1 to n do
    sum := sum + matrix[i, i];

  { Обчислення середнього арифметичного }
  average := sum / n;

  { Виведення результату }
  writeln('Середнє арифметичне елементів на головній діагоналі: ', average:0:2);

  readln;
end.

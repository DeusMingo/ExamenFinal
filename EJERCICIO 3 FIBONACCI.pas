program fibo;
uses crt;
var
ans1, temp, f1, f2, i : integer;
file : text;
begin
writeln ('Introduce las veces que se repetirá la secuencia Fibonacci');
readln(ans1);
f2 := 1;
assign (file, 'ejercicio3.txt');
rewrite (file);
for i:= 1 to ans1 do
begin
temp := F2;
F2 := F1 + F2;
F1 := Temp;
writeln(file,i,'.',f2);
end;
close(file);
writeln('Documento generado satisfactoriamente');
readln;
end.

program pregunta1;
uses crt;
var
file : text;
reporte : record
id : integer;
titulo, categoria, contenido, fecha : String;
status : boolean;
end;
ans1, ans2: integer;
error : boolean;
regnum : integer;
doc, fac, se , hh: String;

begin
regnum:= 1;
repeat
clrscr;
writeln('Bienvenido');
writeln ('A que categoria anexar un registro?');
writeln(' 1 = Documentos ');
writeln (' 2 = Facturas ');
writeln (' 3 = Sin especificar');
WRITELN ('9 = Salir');
str(regnum, hh);
doc := 'doc_'+hh+'.txt';
fac := 'fac_'+hh+'.txt';
se:= 'se_'+hh+'.txt';
readln(ans1);
case ans1 of
1 : assign(file, doc);
2 : assign(file, fac);
3 : assign(file, se);
9 : continue;
else 
begin
writeln('opcion invalida');
readln;
error:= true;
end;
end;
if error = false then begin
writeln ('Introduce fecha del registro');
readln(reporte.fecha);
writeln('titulo del registro');
readln(reporte.titulo);
writeln('Contenido del registro');
readln(reporte.contenido);
writeln('Status del registro');
writeln('1= True');
writeln('2= false');
readln(ans1);
if ans1 = 1 then reporte.status := true else reporte.status:= false;
writeln;
rewrite (file);
writeln (file,'Registro ',regnum);
writeln (file,'titulo : ',reporte.titulo);
writeln (file,'contenido : ',reporte.contenido);
writeln (file,'status : ',reporte.status);

writeln('registrado con exito');
readln;
regnum:= regnum+1;
end;



until ans1= 9;
close(file);
end.

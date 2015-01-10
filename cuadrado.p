program cuadrado;

types:
	TipoChar = char 'A'..'Z';
	TipoCuadrado = record
	{
		x: TipoChar;
		o: TipoChar;
		lado: int;
	};
	
procedure leercuadrado(ref C: TipoCuadrado)
{
	writeln("Escribe el lado del cuadrado");
	readln(C.lado);
	writeln("Escribe los caracteres en MAYUSCULAS:");
	writeln("Caracter Triangulo Inferior");
	readln(C.x);
	writeln("Caracter Triangulo Superior");
	readln(C.o);
}


procedure escribircuadrado(ref C: TipoCuadrado)
	i: int;
	j: int;
	lado: int;
{
	for( i = 1, i <= C.lado){
		for(j = 1, j <= C.lado){
			if(j < i){
				write(C.x);
			}else{
				write(C.o);
			}
		}
		writeeol();
	}
}


procedure main()
	i: int;
	j: int;
	C:TipoCuadrado;
{
	writeeol();
	do{
		leercuadrado(C);
		escribircuadrado(C);
	}while(not((C.lado <= 0) or (C.x == C.o)) == True);
	write("Datos incorrectos. FIN DEL PROGRAMA");
	writeeol();
}
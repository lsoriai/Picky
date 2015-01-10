program cuadrado;

consts:
	NumMax = 10;

types:
	TipoCuadrado = record
	{
		x: char;
		o: char;
		lado: int;
	};
	TipoCollection = array[1..NumMax] of TipoCuadrado;


function valido(C: TipoCuadrado): bool
{
	return (not(C.lado <= 0) and not(C.x == C.o));
}


procedure leercuadrado(ref C: TipoCuadrado)
{
	writeln("Escribe el lado del cuadrado");
	readln(C.lado);
	writeln("Escribe los caracteres:");
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


procedure leerenarray(ref c: TipoCollection, ref tope: int)
	
	i: int;
{	
	i = 0;
	tope = 0;
	do{
		i = i + 1;
		leercuadrado(c[i]);		
		if(valido(c[i])){
			tope = tope + 1;
		}
	}while(valido(c[i]) and i < NumMax);	
}


procedure imprimircuadrados(ref c: TipoCollection, ref tope: int)
	i: int;
{
	
	for(i = tope, i >= 1){
		escribircuadrado(c[i]);
		writeeol();
	}
}

procedure main()
	c: TipoCollection;
	t: int;
	
{
	writeeol();
	leerenarray(c, t);
	imprimircuadrados(c, t);
	
}

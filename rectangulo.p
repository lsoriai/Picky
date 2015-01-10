/*Programa para expresar si existe o no la interseccion entre dos rect·ngulos*/

program rectangulo;

types:
	TipoPunto = record
	{
		x: int;
		y: int;
	};
	
	TipoRectangulo = record
	{
		superizq: TipoPunto;
		inferderch: TipoPunto;
	};

procedure leerrect(ref rect: TipoRectangulo)
{
	writeln("Coordenadas del primer punto");
	read(rect.superizq.x);
	read(rect.superizq.y);
	writeln("Coordenadas del segundo punto");
	read(rect.inferderch.x);
	read(rect.inferderch.y);
}

function rectcorrecto(rect: TipoRectangulo): bool
{
	return ((rect.inferderch.x >= rect.superizq.x) and (rect.superizq.y >= rect.inferderch.y));
}	

procedure interseccion(rect1: TipoRectangulo, rect2: TipoRectangulo)
{
	if((rect1.inferderch.x >= rect2.inferderch.x) or (rect2.superizq.x <= rect1.inferderch.x)){
		write("Hay interseccion");
	}else if((rect2.superizq.x >= rect1.superizq.x) or (rect1.superizq.x <= rect2.inferderch.x)){
		write("Hay interseccion");
	}else if((rect1.superizq.y >= rect2.superizq.y) or (rect2.inferderch.y <= rect1.superizq.y)){
		write("Hay interseccion");
	}else if((rect2.inferderch.y >= rect1.inferderch.y) or (rect1.inferderch.y <= rect2.superizq.y)){
		write("Hay interseccion");
	}else{
		write("No hay interseccion");
	}
}
	
procedure main()
	rect1: TipoRectangulo;
	rect2: TipoRectangulo;
{
	writeeol();
	writeln("Introduce las coordenadas del primer rectangulo: ");
	leerrect(rect1);
	writeln("Introduce las coordenadas del segundo rectangulo: ");
	leerrect(rect2);
	write("Rectangulo 1: Esquina Superior Izquierda (");
	write(rect1.superizq.x);
	write(",");
	write(rect1.superizq.y);
	write(") ");
	write("Esquina Inferior Derecha (");
	write(rect1.inferderch.x);
	write(",");	
	write(rect1.inferderch.y);
	writeln("). ");
	write("Rectangulo 2: Esquina Superior Izquierda (");
	write(rect2.superizq.x);
	write(",");
	write(rect2.superizq.y);
	write(") ");
	write("Esquina Inferior Derecha (");
	write(rect2.inferderch.x);
	write(",");	
	write(rect2.inferderch.y);
	writeln("). ");
	if(((rectcorrecto(rect1)) and (rectcorrecto(rect2)))== True){
		writeln("Datos correctos");
		interseccion(rect1, rect2);
	}else{
		write("Datos incorrectos");
	}
	writeeol();
}



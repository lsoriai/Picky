/*	Programa para ver en que cuadrante se encuentra 
 *	un punto. Expresa tambien si se encuentra en los 
 *	ejes de coordenada  
 */
 
 program puntos;
 
 function ejesdecoord (x: int, y: int): int
 {
	if ( x == 0 and y != 0 ){
		write ("Eje de coordenadas, x = ");
		return 0;
	} else if ( x != 0 and y == 0 ){
		write ("Eje de abscisas, y =  ");
		return 0;
	} else{ 
		write ("Esta en el origen ");
		return 0;
	}
}
 
 
 function cuadrante (x: int, y: int): int
{
	if ( x > 0 and y > 0){
		write ("Cuadrante  ");
		return 1;
	} else if (x < 0 and y > 0){
		write ("Cuadrante  ");
		return 2;
	} else if (x < 0 and y < 0){
		write ("Cuadrante  ");
		return 3;
	} else if (x > 0 and y < 0){
		write ("Cuadrante  ");
		return 4;
	} else{
		return ejesdecoord (x, y);
	}
}

procedure main ()
{
	writeln (" ");
	writeln ("Donde esta el punto P?");
	writeln (cuadrante (1, 0));
}

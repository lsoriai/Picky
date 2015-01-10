
/* 	Programa para calcular la diferencia entre horas,
 *	expresarlo en horas, minutos y segundos 
 * 	y en microsegundos
 */

program horas;

/* 	A es una constante que expresa los segundos que 
 * 	hay en una hora. B es una constante que expresa
 * 	los segundos que hay en un min.
 */
consts:
	A = 3600;
	B = 60;
	C = 10**6;
	
function todoensegundos (H: int, Min: int, Seg: int): int
{
	return H * A + Min * B + Seg;
} 
function segundos (todoensegundos: int): int
{
	return ((todoensegundos % A) % 60);
}



function todoensegundos2 (H: int, Min: int): int
{
	return H * A + Min * B;
}
function minutos (todoensegundos2: int): int
{
	return ((todoensegundos2 % A) / B);
}



function todoensegundos3 (H: int): int
{
	return H * A;
}
function horas (todoensegundos3: int): int
{
	return todoensegundos3 / A;
}



function microsegundos (H: int, Min: int, Seg: int): int
{
	return (H + A + Min * B + Seg) * C;
}

consts:
	H = 5 - 3;
	Min = 25 - 39;
	Seg = 2 - 29;
	H1 = 2 - 1;
	Min1 = 58 - 30;
	Seg1 = 45 - 28;
	H3 = 22 - 24;
	Min3 = 56 - 13;
	Seg3 = 45 - 37;

procedure main ()
{
	writeln (" ");
	writeln ("Programa generico para expresar la diferencia entre horas");
	writeln (" ");
	writeln ("Ejemplo 1");
	write ("5h 25min 02seg - 3h 39min 29seg = ");
	write (horas (todoensegundos3 (H)));
	write ("h ");
	write (minutos (todoensegundos2 (H, Min)));
	write ("min ");
	write (segundos (todoensegundos (H, Min, Seg)));
	write("seg");
	write (" = ");
	write (microsegundos (H, Min, Seg));
	writeln (" microsegundos");
	writeln (" ");
	writeln ("Ejemplo 2");
	write ("2h 58min 45seg - 1h 30min 28seg = ");
	write (horas (todoensegundos3 (H1)));
	write ("h ");
	write (minutos (todoensegundos2 (H1, Min1)));
	write ("min ");
	write (segundos (todoensegundos (H1, Min1, Seg1)));
	write("seg");
	write (" = ");
	write (microsegundos (H1, Min1, Seg1));
	writeln (" microsegundos");
	writeln (" ");
	writeln ("Ejemplo 3");
	write ("22h 56min 45seg - 24h 13min 37seg = ");
	write (horas (todoensegundos3 (H3)));
	write ("h ");
	write (minutos (todoensegundos2 (H3, Min3)));
	write ("min ");
	write (segundos (todoensegundos (H3, Min3, Seg3)));
	write("seg");
	write (" = ");
	write (microsegundos (H3, Min3, Seg3));
	writeln (" microsegundos");
	writeln (" ");
	
}
/*
	programas para realizar unas operaciones
*/

program expresiones;

consts:
	Pi = 3.1415926;
	R1 = 1.0;
	R2 = 2.5;
	R3 = 1.5;
	X = 2.0;
	PrimeraOperacion = (2 )* (7**2) + (-3)*(2**2);
	SegundaOperacion1 = (4.0/3.0) * Pi * (R1**3.0);
	SegundaOperacion2 = (4.0/3.0) * Pi * (R2**3.0);
	SegundaOperacion3 = (4.0/3.0) * Pi * (R3**3.0);
	TerceraOperacion = 5 * 4 * 3 * 2 * 1;
	Afactorial = 4 * 3 * 2 * 1;
	Bfactorial =  3 * 2 * 1;
	AmenosB = 1;
	CuartaOperacion = 24 / (6 * 1);
	QuintaOperacion = sqrt(Pi);
	SextaOperacion1 = (sin (Pi/2.0))**2.0 + (cos (Pi/2.0))**2.0;
	SextaOperacion2 = (sin ((3.0 * Pi)/4.0))**2.0 + (cos ((3.0 * Pi)/4.0))**2.0;
	SextaOperacion3 = (sin (Pi))**2.0 + (cos (Pi))**2.0;
	SeptimaOperacion = 1.0/(sqrt(3.0 * 5.0 * X**2.0 + 4.0 * 7.0 * X + 9.0 * 3.0));
	

procedure main()
{
	writeln (" ");
	writeln (" ");
	writeln ("Primera Operacion : 2 * 7^2 - 3 * 2^2 ");
	write ("Solucion = ");
	writeln (PrimeraOperacion);
	writeln (" ");
	writeln ("Vol. esfera : 4/3 * Pi * R^3");
	write ("	(R = 1.0) = ");
	writeln (SegundaOperacion1);
	write ("	(R = 2.5) = ");
	writeln (SegundaOperacion2);
	write ("	(R = 1.5) = ");
	writeln (SegundaOperacion3);
	writeln (" ");
	write ("5 Factorial = ");
	writeln (TerceraOperacion);
	writeln (" ");
	writeln ("Cuarta Operacion");
	write ("	a(factorial de 4) = ");
	writeln (Afactorial);
	write ("	b(factorial de 3) = ");
	writeln (Bfactorial);
	write ("	a - b = ");
	writeln (AmenosB);
	write ("	a / (b * (a - b)) = ");
	writeln (CuartaOperacion);
	writeln (" ");
	write ("Raiz cuadrada de pi = ");
	writeln (QuintaOperacion);
	writeln (" ");
	writeln ("Operaciones trigonometricas : sen (x)^2 + cos (x)^2");
	write ("	(X = Pi/2) = ");
	writeln (SextaOperacion1);
	write ("	(X = (3 * Pi)/4) = ");
	writeln (SextaOperacion2);
	write ("	(X = Pi) = ");
	writeln (SextaOperacion3);
	writeln (" ");
	writeln ("Operacion : 1 / (sqrt (3 * 5 * X^2 + 4 * 7 * X +9 * 3))");
	write ("	(X = 2) = ");
	writeln (SeptimaOperacion);
	writeln (" ");
	
}
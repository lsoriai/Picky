/*programa que calcula la media
 * de tres numeros que se leen del
 * teclado
 */
 
program media;

 
procedure hacermedia()
	numero1: float;
	numero2: float;	
	numero3: float;
{
	write ("escribe un numero: ");
	readln (numero1);
	write ("escribe otro numero: ");
	readln (numero2);
	write ("escribe otro numero: ");
	readln (numero3);
	write ((numero1 + numero2 + numero3) / 3.0);
}


 procedure main()
{
	hacermedia();
}
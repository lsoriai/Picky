/*Realiza un programa que escriba en la salida
 * el número de cada una de las letras minúsculas 
 *(de la 'a' a la 'z') que tiene la entrada. Se debe 
 *realizar una lectura controlada de la entrada. 
 */

program letras;

types:
	TipoCollection = array['a'..'z'] of int;

function esminuscula(c: char): bool
{
	return (c >= 'a' and c <= 'z');
}

procedure inicializararray(ref collection: TipoCollection)
	letra: char;
{
	for(letra = 'a', letra <= 'z'){
		collection[letra] = 0;
	}
}


procedure guardarrepeticiones(ref collection: TipoCollection)
	c: char;
	terminado: bool;
	letra: char;
{
	terminado = False;
	do{
		read(c);
		switch(c){
		case Eol:
			readeol();
		case Eof:
			terminado = True;
		default:
			if(esminuscula(c)){
				for(letra = 'a', letra <= 'z'){
					if(letra == c){
						collection[letra] = collection[letra] + 1;
					}
				}
			}
		}
	}while(not terminado);
} 

procedure escribirrepeticiones(collection: TipoCollection)
	letra: char;
{
	for(letra = 'a', letra <= 'z'){
		write(letra);
		write(": ");
		writeln(collection[letra]);
	}
}
		
procedure main()
	collection: TipoCollection;
{
	inicializararray(collection);
	guardarrepeticiones(collection);
	escribirrepeticiones(collection);
}


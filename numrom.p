program numrom;

consts:
	NumMax = 6;
	
types:
	TipoRomano = (I, V, X, L, C, D, M);
	TipoNumEsp = array[1..NumMax] of int;

procedure leernumrom (ref rom: TipoRomano)
{
	readln(rom);
}


procedure asignarvalor(ref rom: TipoRomano, ref numero: TipoNumEsp)
	i: int;
{
	for(i = 1, i <= NumMax){
		leernumrom(rom);
		if(rom == I){
			numero[i] = 1;
		}else if(rom == V){
			numero[i] = 5;
		}else if(rom == X){
			numero[i] = 10;
		}else if(rom == L){
			numero[i] = 50;
		}else if(rom == C){
			numero[i] = 100;
		}else if(rom == D){
			numero[i] = 500;
		}else{
			numero[i] = 1000;
		}
	}
}

function valor(numero : TipoNumEsp): int
	sum: int;
	i: int;
{
	sum = 0;
	for(i = 1, i <= NumMax){
		if(i == 1){
			sum = numero[i];
		}else if(i == NumMax){
			if(numero[i] > numero[i - 1]){
				sum = sum + numero[i] - numero[i - 1] - numero[i - 1];
			}else{
				sum = sum + numero[i];
			}
		}else if(numero[i] > numero[i - 1]){
			sum = sum + numero[i] - numero[i - 1] - numero[i - 1];
		}else{
			sum = sum + numero[i];
		}
	}
	return sum;
}
			
		

procedure main()
	rom: TipoRomano;
	numero: TipoNumEsp;
{
	asignarvalor(rom, numero);
	write(valor(numero));
}

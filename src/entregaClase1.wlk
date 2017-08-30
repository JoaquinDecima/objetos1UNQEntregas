/* 	Contador
*	Creado por Pato (Joaquin Decima)
* 	17 de Agosto de 2017	
*/

object contador {
	var valor = 0
	var ultimoComando = ''
	
	//Se reinicia el Contador
	method reset(){
		valor = 0
		ultimoComando = 'Reset'
	}
	
	//Incrementa el contador en 1
	method inc(){
		valor += 1
		ultimoComando = 'Incremento'
	}
	
	//Decrementa el contador en 1
	method dec(){
		valor -= 1
		ultimoComando = 'Decremento'
	}
	
	//Retorna el Valor Actual
	method valorActual(){
		return (valor)
	}
	
	//Modifica el Valor actual
	method valorActual(num){
		valor = num
		ultimoComando = 'Actualizacion'
	}
	
	//Retorna el Ultimo Comando
	method ultimoComando(){
		return (ultimoComando)
	}
}
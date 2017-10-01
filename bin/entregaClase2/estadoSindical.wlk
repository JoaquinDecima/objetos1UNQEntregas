/* 	Estado Sindical (Pepe)
*	Creado por Pato (Joaquin Decima)
* 	27 de Agosto de 2017	
*/

object noSindicalizado{
	
	// Recibiendo el Salario por parametro
	// Nos indica el descuento a realizar
	method descuentoSindical(salario){
		return (0)
	} 
}

object comprometido{
	
	// Recibiendo el Salario por parametro
	// Nos indica el descuento a realizar
	method descuentoSindical(salario){
		return (1500 + (salario / 100))
	} 
}

object porcentual{
	
	// Recibiendo el Salario por parametro
	// Nos indica el descuento a realizar
	method descuentoSindical(salario){
		return ((salario / 100)*3)
	}
}
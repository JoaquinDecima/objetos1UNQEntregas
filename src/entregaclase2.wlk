
object pepe {
	var categoria = gerente					// Pepe sabe su categoria
	var estadoSindical = noSindicalizado	// Pepe conoce su estaodo Sindical
	var presentismo = presentismoNormal		// Pepe conoce su estado de presentismo
	var ausencias = 0						// Pepe conoce su ausencias
	
	// Nos retorna el salario actual de Pepe
	method salario(){
		return (categoria.salario() - estadoSindical.descuentoSindical(categoria.salario()) - presentismo.adicionalPorPresentismo(ausencias,categoria.salario()))	// modifica su estado salarial dependiendo de su Estado sindical y del presentismo
	}
	
	// Es promovido a gerente y cambia su categoria
	method promover(){
		categoria = gerente
	}
	
	// Es degradado a cadete y cambia su categoria
	method degradar(){
		categoria = cadete
	}
	
	// Se afilia al Sindicato y cambia su estado a comprometido
	method afiliarseComprometido(){ 
		estadoSindical = comprometido
	}
	
	// Se afilia al Sindicato y cambia su estado a porcentual
	method afiliarsePorcentual(){ 
		estadoSindical = porcentual
	}
	
	// Se desafilia al Sindicato
	method desafiliarse(){ 
		estadoSindical = noSindicalizado
	}
	
	// Cambia el tipo de Presentismo a Normal
	method presentismoNormal(){
		presentismo = presentismoNormal
	}
	
	// Cambia el tipo de Presentismo a Epoca de Ajuste
	method presentismoEpocaDeAjuste(){
		presentismo = presentismoEpocaDeAjuste
	}
	
	// Cambia el tipo de Presentismo a Demagogico
	method presentismoDemagogico(){
		presentismo = presentismoDemagogico
	}
}

object gerente {
	var salario = 15000
	
	// Retorna el salario del puesto
	method salario(){
		return(salario)
	}
}

object cadete {
	var salario = 20000
	
	// Retoran el salrio del puesto
	method salario(){
		return(salario)
	}
}

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

object presentismoNormal{
	
	// Retorna en valor adicional del presentismo
	method adicionalPorPresentismo(ausentismo, neto){
		var adicional = 0				// No se apica adicionales
		
		if (ausentismo == 0){			// Si el empleado no tiene ausentismo
			adicional = 2000			// Se les aplica el adicional
		}else if (ausentismo == 1){		// Si solo falto un dia
			adicional = 1000			// Se aplica adicional menor
		}
		
		return(adicional)				// Retorno el adicional dependediendo el caso
	}
}

object presentismoEpocaDeAjuste{
	
	// Retorna en valor adicional del presentismo
	method adicionalPorPresentismo(ausentismo, neto){
		var adicional = 0				// No se aplican adicionales
		
		if (ausentismo == 0){			// Si el empleado no tiene Ausentismo
			adicional = 10				// Se le aplica el adicional
		}
		
		return(adicional)				// Se retorna el Adicional indicado dependiendo de las ausencias
	}
}

object presentismoDemagogico{
	
	// Retorna en valor adicional del presentismo
	method adicionalPorPresentismo(ausentismo, neto){
		var adicional = 350				// Se setea adicional minimo
			
		if ( neto < 18000){				// En caso de que gane menos de 18000
			adicional = 500				// se setea nuevo adicional
		}
		
		return(adicional)				// Se retorna adiconal correspondiente
	}	
}
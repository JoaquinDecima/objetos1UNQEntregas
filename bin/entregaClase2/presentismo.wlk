/* 	Presentismo (Pepe)
*	Creado por Pato (Joaquin Decima)
* 	27 de Agosto de 2017	
*/

object presentismoNormal{
	
	// Retorna en valor adicional del presentismo
	method adicionalPorPresentismo(pepe){
		var adicional = 0				// No se apica adicionales
		
		if (pepe.ausencias() == 0){			// Si el empleado no tiene ausentismo
			adicional = 2000			// Se les aplica el adicional
		}else if (pepe.ausencias() == 1){		// Si solo falto un dia
			adicional = 1000			// Se aplica adicional menor
		}
		
		return(adicional)				// Retorno el adicional dependediendo el caso
	}
}

object presentismoEpocaDeAjuste{
	
	// Retorna en valor adicional del presentismo
	method adicionalPorPresentismo(pepe){
		var adicional = 0				// No se aplican adicionales
		
		if (pepe.ausencias() == 0){			// Si el empleado no tiene Ausentismo
			adicional = 10				// Se le aplica el adicional
		}
		
		return(adicional)				// Se retorna el Adicional indicado dependiendo de las ausencias
	}
}

object presentismoDemagogico{
	
	// Retorna en valor adicional del presentismo
	method adicionalPorPresentismo(pepe){
		var adicional = 350				// Se setea adicional minimo
			
		if ( pepe.neto() < 18000){				// En caso de que gane menos de 18000
			adicional = 500				// se setea nuevo adicional
		}
		
		return(adicional)				// Se retorna adiconal correspondiente
	}	
}
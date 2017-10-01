/* 	Pepe
*	Creado por Pato (Joaquin Decima)
* 	27 de Agosto de 2017	
*/

import categorias.*
import estadoSindical.*
import presentismo.*

object pepe {
	var categoria = gerente					// Pepe sabe su categoria
	var estadoSindical = noSindicalizado	// Pepe conoce su estaodo Sindical
	var presentismo = presentismoNormal		// Pepe conoce su estado de presentismo
	var ausencias = 0						// Pepe conoce su ausencias
	
	// Nos retorna el salario actual de Pepe
	method salario(){
		return (self.neto() - estadoSindical.descuentoSindical(self.neto()) + presentismo.adicionalPorPresentismo(self))	// modifica su estado salarial dependiendo de su Estado sindical y del presentismo
	}
	
	// Retorna las ausencias de Pepe
	method ausencias(){
		return (ausencias)
	}
	
	// Retorna el neto de pepe
	method neto(){
		return (categoria.salrio())
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
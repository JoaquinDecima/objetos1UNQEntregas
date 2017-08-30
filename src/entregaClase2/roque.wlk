/* 	Pepe
*	Creado por Pato (Joaquin Decima)
* 	30 de Agosto de 2017	
*/

import estadoSindical.*

object roque {
	var neto = 28000
	var estadoSindical = noSindicalizado
	
	// Retorna el Salaio
	method salario(){
		return (self.neto() - estadoSindical.descuentoSindical(self.neto()) + 9500)	// modifica su estado salarial dependiendo de su Estado sindical 
	}
	
	// Retorna el Neto de Roque
	method neto(){
		return (neto)
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
}
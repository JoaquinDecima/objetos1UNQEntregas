/* 	Ernesto
*	Creado por Pato (Joaquin Decima)
* 	30 de Agosto de 2017	
*/

import pepe.*
import roque.*
import presentismo.*

object ernesto {
	var presentismo = presentismoNormal		// Ernesto conoce su estado de presentismo
	var ausencias = 0						// Ernesto conoce su ausencias
	var compain = pepe					// Ernesto conoce a tu amigo
	
	// Retorna el Salaio
	method salario(){
		return (self.neto() + presentismo.adicionalPorPresentismo(self))	// modifica su estado salarial dependiendo de su Estado sindical 
	}
	
	method setCompain(newCompain){
		compain = newCompain
	}
	
	// Retorna el Neto de Roque
	method neto(){
		return (compain.neto())
	}
	
	// Retorna las ausencias de Pepe
	method ausencias(){
		return (ausencias)
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
/* 	Remiseroa
 *	Creado por Pato (Joaquin Decima)
 *  01 de Octubre de 2017
 */	

import remis.*

class Remiseria {
	var flota = []

	// Agrear un Auto a la Flota
	method agregaAFlota(veiculo){
		flota.add(veiculo)
	}
	
	// Quitar un Auto a la Flota
	method quitarAFlota(veiculo){
		flota.remove(veiculo)
	}
	
	// Retorna el peso total de la flota
	method pesoTotalFlota(){
		return(flota.sum({auto => auto.peso()}))
	}
	
	// Es recomendable
	method esRecomendable(){
		return (flota.size() >= 3 or flota.all({auto => auto.velocidadMax() >= 100}))
	}
	
	// Autos que pueden ir a...
	method puedenIrA(velocidad){
		return (flota.filter({auto => auto.velocidadMax() >= velocidad}))
	}
	
	// Capacidad Total Yendo A
	method capacidadTotalYendoA(velocidad){
		return(self.puedenIrA(velocidad).sum({auto => auto.capacidad()}))
	}
	
	// Auto Mas Rapido
	method autoMasRapido(){
		return(flota.max({auto => auto.velocidadMax()}))
	}
	
	// Color del Auto mas Rapido
	method colorDelAutoMasRapido(){
		return(self.autoMasRapido().color())
	}
}
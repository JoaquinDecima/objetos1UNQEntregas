/* 	Viajero
 *	Creado por Pato (Joaquin Decima)
 *  08 de Octubre de 2017
 */	


class Viajero {
	var viajes = []

	// Retorna los viajes
	method viajes(){
		return viajes
	}
	
	// Viajes echos en X fecha
	method viajesEn(nFecha){
		return self.viajes().filter({viaje => viaje.fecha() == nFecha})
	}
	
	// Lista con lugares en X Fecha 
	method lugaresEn(nFecha){
		return self.viajesEn(nFecha).map({viaje => viaje.lugar()})
	}
}

class Establecido inherits Viajero{
	var vivio = []
	
	// Retorna lista de paices en los que vivio
	method vivio(){ return vivio}
	
	// Retorna el pais en el que vivio ese año
	method vivio(anio){
		return self.vivio().filter({viaje => viaje.fecha() == anio }).lugar()
	}
}

class Migrante inherits Viajero{}

class Doctor inherits Viajero{}

class Menor inherits Viajero{}
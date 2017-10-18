/* 	Viajero
 *	Creado por Pato (Joaquin Decima)
 *  08 de Octubre de 2017
 */	


class Viajero {
	var viajes = []
	var paisNatal
	
	constructor(sPaisNatal){
		paisNatal = sPaisNatal
	}
	
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
	
	method viajar(viaje){
		viajes.add(viaje)
	}
	
	method dondeVivio(fecha){ return [paisNatal]}
}

class Establecido inherits Viajero{
}

class Migrante inherits Viajero{
	var paisMudado
	var anioMudanza
	
	constructor (sPaisNatal, sPaisMudado, nAnioMudanza)= super(sPaisNatal){
		paisMudado = sPaisMudado
		anioMudanza = nAnioMudanza
	}
	
	override method dondeVivio(fecha){
		
		if(fecha == anioMudanza){
			return [paisNatal, paisMudado]
		}else if(fecha > anioMudanza){
			return [paisMudado]
		}else{
			return super(fecha)
		}
	}
}

class Doctor inherits Viajero{
	var paisDoctorado
	var anioInicioDoc
	var anioFinDoc
	
	constructor(sPaisNatal, sPais, nFechaIni, nFechaFin)= super(sPaisNatal){
		paisDoctorado = sPais
		anioInicioDoc = nFechaIni
		anioFinDoc = nFechaFin
	}
	
	override method dondeVivio(fecha){
		
		if(fecha > anioInicioDoc and fecha <= anioFinDoc){
			return [paisDoctorado]
		}else{
			return super(fecha)
		}
	}
}

class Menor inherits Viajero{
	var madre
	
	constructor(sPaisNatal, oMadre)= super(sPaisNatal){
		madre = oMadre
	}
	
	override method dondeVivio(fecha){ return madre.dondeVivio(fecha) }
	
	method viajarConMadre(viaje){
		self.viajar(viaje)
		madre.viajar(viaje)
	}
}
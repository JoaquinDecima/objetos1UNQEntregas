/* 	Remis
 *	Creado por Pato (Joaquin Decima)
 *  01 de Octubre de 2017
 */	


class Remis {
	var capacidad
	var velocidadMax
	var color
	var peso
	
	constructor(nCapacidad, nVelocidadMax, sColor, nPeso){
		capacidad = nCapacidad
		velocidadMax = nVelocidadMax
		color = sColor
		peso = nPeso
	}
	
	//Retorna la Velocidad
	method velocidadMax(){
		return(velocidadMax)
	}
	
	//Retorna la Color
	method color(){
		return(color)
	}
	
	//Retorna la capacidad
	method capacidad(){
		return(capacidad)
	}
	
	//Retorna la capacidad
	method peso(){
		return(peso)
	}
}		

class Corsa{
	var velocidadMax = 150
	var color 
		
	const capacidad = 4
	const peso = 1300
	
	constructor(sColor){
		color = sColor
	} 
	
	//Retorna la Velocidad
	method velocidadMax(){
		return(velocidadMax)
	}
	
	//Retorna la Color
	method color(){
		return(color)
	}
	
	//Retorna la capacidad
	method capacidad(){
		return(capacidad)
	}
	
	//Retorna la capacidad
	method peso(){
		return(peso)
	}
}

class Standar{
	var capacidad 
	var velocidadMax 
	var peso 
	
	const color = "Azul"
	
	constructor(tieneTanqueAdicional){
		
		capacidad = 4
		velocidadMax = 120
		peso = 1200
		
		if (tieneTanqueAdicional){
			capacidad -= 1
			velocidadMax -= 10
			peso += 150
		}
	}
	
	//Retorna la Velocidad
	method velocidadMax(){
		return(velocidadMax)
	}
	
	//Retorna la Color
	method color(){
		return(color)
	}
	
	//Retorna la capacidad
	method capacidad(){
		return(capacidad)
	}
	
	//Retorna la capacidad
	method peso(){
		return(peso)
	}
}

object trafic{
	var capacidad 
	var velocidadMax 
	var peso = 4000
	
	const color = "Blaco"
	
	//Interior Es comodo
	method	interiorEsComodo(){
		peso += 700
		capacidad = 5
	}
	
	//Interior Es Popular
	method	interiorEsPopular(){
		peso += 1000
		capacidad = 12
	}
	
	//Motor es Pulenta
	method motorEsPulenta(){
		peso += 800
		velocidadMax = 130
	}
	
	//Motor es Baraton
	method motorEsBaraton(){
		peso += 500
		velocidadMax = 80
	}
	
	//Retorna la Velocidad
	method velocidadMax(){
		return(velocidadMax)
	}
	
	//Retorna la Color
	method color(){
		return(color)
	}
	
	//Retorna la capacidad
	method capacidad(){
		return(capacidad)
	}
	
	//Retorna la capacidad
	method peso(){
		return(peso)
	}
}


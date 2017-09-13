/* 	Objetos
*	Creado por Pato (Joaquin Decima)
* 	9 de Septiembre de 2017	
*/

/* 	Knight Rider
*	Creado por Pato (Joaquin Decima)
*/
object knightRider {
	const peso = 500
	const nivelDePeligrocidad = 10

	// Retorna el Peso del Objeto
	method peso(){
		return(peso)
	}
	
	// Retorna la Peligrocidad del Objeto
	method nivelDePeligrocidad(){
		return(nivelDePeligrocidad)
	}
}

/* 	Bumblebee
*	Creado por Pato (Joaquin Decima)
*/
object bumblebee {
	var nivelDePeligrocidad = 15
	const peso = 800

//CORRECCION: Lo más prolijo es que bumblebee tenga modelado si está convertido en robot o no (por ejemplo con un boolean)
//CORRECCION: y calcular su nivel de peligrosidad en base a esa información:
//	method nivelDePeligrocidad(){
//		return if (self.estaRobot)  30 else 15
//	}

	
	// Transforma en Robot
	method tranformarRobot(){
		nivelDePeligrocidad = 30
	}
	
	// Transforma en Auto
	method tranformarAuto(){
		nivelDePeligrocidad = 15
	}

	// Retorna el Peso del Objeto
	method peso(){
		return(peso)
	}
	
	// Retorna la Peligrocidad del Objeto
	method nivelDePeligrocidad(){
		return(nivelDePeligrocidad)
	}
}

/* 	Paquete De Ladrillos
*	Creado por Pato (Joaquin Decima)
*/
object paqueteDeLadrillos {
	var cantDeLadrillos 
	const nivelDePeligrocidad = 2
	
	// Cambia la cantidad de Ladrillos
	method setLadrillos(n){
		cantDeLadrillos = n
	}
	
	// Retorna el Peso del Objeto
	method peso(){
		return(cantDeLadrillos * 2)
	}
	
	// Retorna la Peligrocidad del Objeto
	method nivelDePeligrocidad(){
		return(nivelDePeligrocidad)
	}
}

/* 	Arena a Granel
*	Creado por Pato (Joaquin Decima)
*/
object arenaAGranel {
	var peso = 0
	const nivelDePeligrocidad = 1

	// Modifica el Peso
	method setPeso(n){
		peso = n
	}
	
	// Retorna el Peso del Objeto
	method peso(){
		return(peso)
	}
	
	// Retorna la Peligrocidad del Objeto
	method nivelDePeligrocidad(){
		return(nivelDePeligrocidad)
	}
}

/* 	Bateria antiaera
*	Creado por Pato (Joaquin Decima)
*/
object bateriaAntiaera {
	var peso = 200
	var nivelDePeligrocidad = 0

//CORRECCION: Misma correccion que bumblebee, modelar si tiene misiles o no, y resolver las preguntas en base a esa info.
	
	// Tiene Misiles
	method conMisiles(){
		peso = 300
		nivelDePeligrocidad = 100
	}
	
	// No tiene Misiles
	method sinMisiles(){
		peso = 200
		nivelDePeligrocidad = 0
	}
	
	// Retorna el Peso del Objeto
	method peso(){
		return(peso)
	}
	
	// Retorna la Peligrocidad del Objeto
	method nivelDePeligrocidad(){
		return(nivelDePeligrocidad)
	}
}

/* 	Contenedor portuario
*	Creado por Pato (Joaquin Decima)
*/
object contenedorPortuario {
	var contenido= []
	
	const pesoDelContenedor = 100
	const peligrocidadDelContenedor = 0

	// Retorna el Peso del Objeto
	method peso(){
		return(pesoDelContenedor + contenido.sum({elem => elem.peso()}))
	}
	
	// Retorna la Peligrocidad del Objeto
	method nivelDePeligrocidad(){
		if (contenido.isEmpty()){
			return(peligrocidadDelContenedor)
		}else{
//CORRECCION: Ojo, esto está devolviendo el elemento mas peligroso, no su peligrosidad
			return(contenido.max({elem => elem.nivelDePeligrocidad()}))
		}
	}
}

/* 	Residuos Radioactivos
*	Creado por Pato (Joaquin Decima)
*/
object residuosRadioactivos {
	var peso = 0
	const nivelDePeligrocidad = 200

	// Setea el valor del Peso
	method setPeso(n){
		peso = n
	}
	
	// Retorna el Peso del Objeto
	method peso(){
		return(peso)
	}
	
	// Retorna la Peligrocidad del Objeto
	method nivelDePeligrocidad(){
		return(nivelDePeligrocidad)
	}
}

/* 	Knight Rider //CORRECICON embalaje!!
*	Creado por Pato (Joaquin Decima)
*/
object embalajeDeSeguridad {
	var contiene 
	
	//Embala un objeto
	method embalar(cosa){
		contiene = cosa
	}
	
	// Retorna el Peso del Objeto
	method peso(){
		return(contiene.peso())
	}
	
	// Retorna la Peligrocidad del Objeto
	method nivelDePeligrocidad(){
		return(contiene.nivelDePeligrocidad() / 2)
	}
}

/* 	Camion
*	Creado por Pato (Joaquin Decima)
* 	9 de Septiembre de 2017	
*/

object camion {
	var cosasCargadas = []
	
	const tara = 1000
	const pesoMaximo = 2500
	
	// Permite cargar "una cosa" en el camion
	method carga(cosa){
		cosasCargadas.add(cosa)
	}
	
	// Elimina "una cosa" de las cargas del camion
	method descarga(cosa){
		cosasCargadas.remove(cosa)
	}
	
	// Permite saber el peso total del camion
	method pesoTotal(){
		return(tara + cosasCargadas.sum({elem => elem.peso()}))
	}
	
	// Retorna True si el camion esta "sobrecargado"
	method excedidoDePeso(){
		return (self.pesoTotal()>pesoMaximo)
	}
	
	// Retorna todos los objetos que superan el nivel de peligrocidad N
	method objetosPeligrosos(n){
		return(cosasCargadas.filter({elem => elem.nivelDePeligrocidad() > n}))
	}
	
	// Retornas todos los objetos cuyo nivel de peligrocidad sea mayor que el de "la cosa"
	method objetosMasPeligrososQue(cosa){
		return(self.objetosPeligrosos(cosa.nivelDePeligrocidad()))
	}
	
	// Verifica si puede circular por una Ruta dependiendo el Nivel de Peligrocidad
	method puedeCircularEnRuta(nivelMaximoDePeligrocidad){
		return(self.objetosPeligrosos(nivelMaximoDePeligrocidad).isEmpty())
	}
}
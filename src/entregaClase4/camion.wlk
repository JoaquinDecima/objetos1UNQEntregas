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
//CORRECCION: generalmente, al usar un método de una colección, se está resolviendo un problema  concreto.
//CORRECCION: Conviene extraer eso a su propio método, de manera que este código sería:
// return(tara + self.pesoCarga({)), y en pesoCarga hacés el sum 

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
//CORRECCION: una alternativa que deberías tener en cuenta, sobre todo para futuros casos, es:
// - hacer un método que te diga si un elemento es peligroso (mayor a n)
// - Que el mentodo objetos peligrosos uses ese método
// - Que en puede circularEnRuta, en lugar de filtrar y preguntar por vacío, lo resuelvas con un all/any usando el método que te dice si un elemento es peligroso:
//	method puedeCircularEnRuta(nivelMaximoDePeligrocidad){
//		return not cosasCargadas.any({cosa => cosa.esMasPeligrosaQue(nivelMaximoDePeligrocidad))
//	}



}

import cuentas.*
import objetos.*

object casaJulianPepe{
	var cuentaQuePaga = cuentaCombinada
	var cosasCompradas = []

	method extraerDinero(gastoEnPesos){
		cuentaQuePaga.extraer(gastoEnPesos)
	}

	method setCuentaQuePaga(cuenta){
		cuentaQuePaga = cuenta
	}

	method esDerrochona(){
		return(cosasCompradas.sum({elem => elem.precio()})>5000)
	}

	method esBacan(){
		return (cuentaQuePaga.saldo()>=40000)
	}

	method comprar(cosa){
		cuentaQuePaga.extraer(cosa.precio())
		cosasCompradas.add(cosa)
	}

	method tieneComida(){
		return(cosasCompradas.any({elem => elem.esComida()}))
	}

	method vieneDeEquiparse(){
		return (cosasCompradas.any({elem => elem.esElectrodomestico()}))
	}

	method puedeComprar(cosa){
		return(cuentaQuePaga.saldo()>=cosa.precio())
	}

	method cuentaParaCompras(){
		return(cuentaQuePaga)
	}
	
	method compraMasCara(){
		return (cosasCompradas.max({elem => elem.precio()}))
	}
	
	method electrodomesticosComprados(){
		return(cosasCompradas.filter({elem => elem.esElectrodomestico()}))
	}
	
	method malaEpoca(){
		return(cosasCompradas.all({elem => elem.esComida()}))
	}
		
}

import cuentas.*
import objetos.*

object casaJulianPepe{
	var cuentaQuePaga = cuentaCombinada
	var sumaDeCompras = 0
	var tieneComida = false
	var vieneDeEquiparse = false

	method extraerDinero(gastoEnPesos){
		cuentaQuePaga.extraer(gastoEnPesos)
	}

	method setCuentaQuePaga(cuenta){
		cuentaQuePaga = cuenta
	}

	method esDerrochona(){
		return(sumaDeCompras>5000)
	}

	method esBacan(){
		return (cuentaQuePaga.saldo()>=40000)
	}

	method comprar(cosa){
		if (cosa.esComida()){
			tieneComida = true
		}
		if (cosa.esElectrodomestico() || cosa.precio()>5000){
			vieneDeEquiparse = true
		}
		cuentaQuePaga.extraer(cosa.precio())
	}

	method tieneComida(){
		return(tieneComida)
	}

	method vieneDeEquiparse(){
		return (vieneDeEquiparse)
	}

	method puedeComprar(cosa){
		return(cuentaQuePaga.saldo()>=cosa.precio())
	}

	method cuentaParaCompras(){
		return(cuentaQuePaga)
	}
}

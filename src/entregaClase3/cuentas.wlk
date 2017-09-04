object cuentaPepe{
	var saldo 

	method saldo(){
		return(saldo)
	}

	method depositar(cantidadEnPesos){
		saldo += cantidadEnPesos
	}

	method extraer(cantidadEnPesos){
		saldo -= cantidadEnPesos
	}
}

object cuentaJulian{
	var saldo 

	method saldo(){
		return(saldo)
	}

	method depositar(cantidadEnPesos){
		saldo += (cantidadEnPesos * 0.8)
	}

	method extraer(cantidadEnPesos){
		saldo -= cantidadEnPesos
		if (saldo >4){
			saldo -= 5
		}
	}
}

object cuentaPapa{
	var saldo 
	var precioVenta = 15.10
	var precioCompra = 14.70

	method saldo(){
		return(saldo * precioCompra)
	}

	method depositar(cantidadEnPesos){
		saldo += (cantidadEnPesos / precioVenta)
	}

	method extraer(cantidadEnPesos){
		saldo -= (cantidadEnPesos / precioCompra)
	}
}

object cuentaCombinada{
	var cuentaPrimaria
	var cuentaSecundaria

	method saldo(){
		return(cuentaPrimaria.saldo() + cuentaSecundaria.saldo())
	}

	method depositar(cantidadEnPesos){
		if (cuentaSecundaria.saldo()>1000){
			cuentaSecundaria.depositar(cantidadEnPesos)
		}else{
			cuentaPrimaria.depositar(cantidadEnPesos)
		}
	}

	method extraer(cantidadEnPesos){
		if (cuentaPrimaria.saldo()<cantidadEnPesos){
			cuentaSecundaria.extraer(cantidadEnPesos - cuentaPrimaria.saldo())
			cuentaPrimaria.extraer(cuentaPrimaria.saldo())
		}else{
			cuentaPrimaria.extraer(cantidadEnPesos)
		}
	}

	method setCuentaPrimaria(cuenta){
		cuentaPrimaria = cuenta
	}

	method setCuentaSecundaria(cuenta){
		cuentaSecundaria = cuenta
	}
}
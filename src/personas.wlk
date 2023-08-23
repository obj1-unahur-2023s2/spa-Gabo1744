object olivia {
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion() = gradoDeConcentracion
	method recibirMasaje(){
		gradoDeConcentracion = gradoDeConcentracion + 3
	}
	method discutir(){
		gradoDeConcentracion = gradoDeConcentracion - 1
	}
	method darBanioDeVapor(){}
}

object bruno {
	var estaFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method recibirMasaje(){
		estaFeliz = true
	}
	method tomarAgua(){
		tieneSed = false
	}
	method darBanioDeVapor(){
		peso = peso - 500
		tieneSed = true
	}
	method comerFideos(){
		peso = peso + 250
		tieneSed = true
	}
	method correr(){
		peso = peso - 300
	}
	method verNoticiero(){
		estaFeliz = false
	}
	method estaPerfecto(){
		return estaFeliz and not tieneSed and peso.between(50000,70000)
	}
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro {
	var nivelDeConstractura = 0
	var tieneLaPielGrasosa
	
	method recibirMasaje(){
		nivelDeConstractura = 0.max(nivelDeConstractura - 2)
	}
	method comerBigMac(){
		tieneLaPielGrasosa = true
	}
	method darBanioDeVapor(){
		tieneLaPielGrasosa = false
	}
	method bajarALaFosa(){
		tieneLaPielGrasosa = true
		nivelDeConstractura = nivelDeConstractura + 1
	}
	method jugarPaddle(){
		nivelDeConstractura = nivelDeConstractura + 3
	}
	
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}
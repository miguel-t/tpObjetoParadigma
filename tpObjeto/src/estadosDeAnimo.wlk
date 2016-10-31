
object euforico{
	method influir(unSim){
		unSim.setNivelDeFelicidadAdicional(1000)
		unSim.olvidarConocimientos()
	}
	
	method normalizar(unSim){
		unSim.setNivelDeFelicidadAdicional(-1000)
		unSim.recordarConocimientos()
	}
}

object melancolico{
	method influir(unSim){
		unSim.setNivelDeFelicidadAdicional(-200)
	}
	
	method normalizar(unSim){
		unSim.setNivelDeFelicidadAdicional(200)
	}
}

object normal{
	method influir(unSim) {
		
	}
	
	method normalizar(unSim){
		
	}
}
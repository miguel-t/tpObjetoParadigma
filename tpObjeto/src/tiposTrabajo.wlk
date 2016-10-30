
object copado{
	method influir(unSim, unTrabajo){
		unSim.setNivelDeFelicidad(unSim.getNivelDeFelicidad()+1)
		unSim.setDinero(unSim.getDinero() + unTrabajo.getSueldo())
	}
}

object mercenario{
	method influir(unSim, unTrabajo){
		unSim.setDinero(unSim.getDinero()*0.02 + 100)
	}
}

object aburrido{
	method influir(unSim, unTrabajo){
		unSim.setDinero(unSim.getDinero() + unTrabajo.getSueldo())
		var restarFelicidad = unTrabajo.getNivelDeInfluencia()
		unSim.setNivelDeFelicidad(unSim.getNivelDeFelicidad() - restarFelicidad)
	}
}

object aburridoHastaLaMuerte{
	method influir(unSim, unTrabajo){
		var restarFelicidad = unTrabajo.getNivelDeInfluencia()* unTrabajo.getFactorDeFelicidad()
		console.println("va a restar -> "+restarFelicidad)
		console.println("felicidad actual -> "+ unSim.getNivelDeFelicidad())
		unSim.setDinero(unSim.getDinero() + unTrabajo.getSueldo())
		unSim.setNivelDeFelicidad(unSim.getNivelDeFelicidad() - restarFelicidad)
	}
}

object mercenarioSocial{
	method influir(unSim, unTrabajo){
		var ganancia = (unSim.getDinero()*0.02 + 100) + unSim.getAmigos().size()
		unSim.setDinero(ganancia)
	}
}

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
		unSim.setDinero()
		unSim.setNivelDeFelicidad(unSim.getNivelDeFelicidad())
	}
}

object euforico{
	method influir(unSim){
		unSim.setNivelDeFelicidad(unSim.getNivelDeFelicidad() + 1000)
	}
}

object melancolico{
	method influir(unSim){
		unSim.setNivelDeFelicidad(unSim.getNivelDeFelicidad() - 200)
	}
}

object normal{}

object interesado {
	method valoracion(elQueValora, elValorado){
		return (elValorado.getAmigos().sum({amigo => amigo.getDinero()}))*0.1
	}
}

object superficial{
	method valoracion(elQueValora, elValorado){
		return elValorado.popularidad()*20
	}
}

object buenazo{
	method valoracion(elQueValora, elValorado){
		return elQueValora.getNivelDeFelicidad() * 0.5
	}
}


object peleadoConLaVida{
	method valoracion(elQueValora, elValorado){
		return 0
	}
}

/** Delegamos en el objeto establecer el nivel
 *  de felicidad cuando un sim 
 *  agrega un nuevo amigo
 */
object interesado {
	method valoracion(elQueValora, elValorado){
		
		var sumDineroAmigos =  elValorado.getAmigos().sum({amigo => amigo.getDinero()})*0.1
		elQueValora.setNivelDeFelicidad(elQueValora.getNivelDeFelicidad() + sumDineroAmigos)
		return sumDineroAmigos
	}
}

object superficial{
	method valoracion(elQueValora, elValorado){
		var valoracion = elValorado.getPopularidad()*20
		elQueValora.setNivelDeFelicidad(valoracion + elQueValora.getNivelDeFelicidad());
		return valoracion
	}
}

object buenazo{
	method valoracion(elQueValora, elValorado){
	 var valoracion = elQueValora.getNivelDeFelicidad() * 0.5
	 elQueValora.setNivelDeFelicidad(valoracion + elQueValora.getNivelDeFelicidad());
	 return valoracion
	}
}


object peleadoConLaVida{
	method valoracion(elQueValora, elValorado){
		return 0
	}
}
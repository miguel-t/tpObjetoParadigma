
/** Delegamos en el objeto establecer el nivel
 *  de felicidad cuando un sim 
 *  agrega un nuevo amigo
 */
object interesado {
	method valoracion(elQueValora, elValorado){
		
		var sumDineroAmigos =  elValorado.getAmigos().sum({amigo => amigo.getDinero()})*0.1
		elQueValora.setNivelDeFelicidad(elQueValora.getNivelDeFelicidad() + sumDineroAmigos);
		
	}
}

object superficial{
	method valoracion(elQueValora, elValorado){
		 elQueValora.setNivelFelicidad(elValorado.popularidad()*20 + elQueValora.getNivelDeFelicidad());
	}
}

object buenazo{
	method valoracion(elQueValora, elValorado){
	 elQueValora.setNivelDeFelicidad(elQueValora.getNivelDeFelicidad() * 0.5 + elQueValora.getNivelDeFelicidad());
	}
}


object peleadoConLaVida{
	method valoracion(elQueValora, elValorado){
		//No hacemos Nada
	}
}
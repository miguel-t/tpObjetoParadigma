object culpa{
	method actuar(personaje){
		personaje.reducirVida(5)
	}
}

object experiencia{
	method actuar(personaje){
		personaje.aumentarVida(10)
	}
}

object absorcion{
	method actuar(personaje, atacado){
		atacado.obtenerPoderes().forEach({
			poder => personaje.obtenerPoderes().add(poder)
		})
	}
}

object caraDeNaipe{
	method actuar(personaje){
		
	}
}
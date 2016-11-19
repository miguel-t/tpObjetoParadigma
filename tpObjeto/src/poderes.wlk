object fuerza{
	method actuar(atacante, victima){
		victima.reducirVida(40);
	}
}

object vuelo{
	method actuar(atacante, victima){
		atacante.aumentarVida(20)
	}
}

object telequinesis{
	method actuar(atacante, victima){
		atacante.reducirVida(1)
		victima.reducirVida(50)
	}
}

object objetosCortantes{
	method actuar(atacante, victima){
		victima.reducirVida(30)
	}
}


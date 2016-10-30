
object libro {
	var capitulos = new List()
	method setCapitulos(_capitulos){
		capitulos = _capitulos
	}
	
	method getInformacion(){
		return capitulos.get(0)
	}
}

object tinelli{
	method getInformacion(){
		return "Toto"
	}
}

object rial{
	method getInformacion(){
		return "Escandalo"
	}
}
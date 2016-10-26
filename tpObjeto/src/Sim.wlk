import mensajeUsuario.*

class Sim {
	const posicion_0=0
	var nombre
	var sexo
	var edad
	var nivelDeFelicidad
	var amigos = new List()
	var empleo
	var personalidad
	var dinero = 0

	constructor(_nombre, _sexo, _edad, _personalidad, _felicidad) {
		nombre = _nombre
		sexo = _sexo 
		personalidad = _personalidad
		edad = _edad
		nivelDeFelicidad = _felicidad
	}
	
	method getNombre(){
		return nombre
	}
	
	method getSexo() {
		return sexo
	}

	method getEdad() {
		return edad
	}
	
	method getPersonalidad(){
		return personalidad
	}
	
	method setPersonalidad(_personalidad){
		personalidad = _personalidad
	}

	method getNivelDeFelicidad() {
		return nivelDeFelicidad
	}

	method setNivelDeFelicidad(_nivel) {
		nivelDeFelicidad = _nivel
	}
	
	method getDinero(){
		return dinero
	}
	
	method setDinero(_dinero){
		dinero = _dinero
	}
	
	method setEmpleo(_empleo){
		empleo =_empleo
	}
	
	method getEmpleo(){
		return empleo
	}
	
	method trabajar(){
		empleo.getTipo().influir(self, empleo)
	}

	method hacerAmigo(_amigo) {
		
		if(!amigos.contains(_amigo)){
			self.valorarAmigo(_amigo)
			amigos.add(_amigo)
			
		}else{
			console.println(_amigo.getNombre() +  mensajeUsuario.getExisteAmigo())
		}
		
	}

	method getAmigos() {
		return amigos
	}

	method popularidad() {
		return amigos.sum({ amigo => amigo.getNivelDeFelicidad() })
	}

	method valorarAmigo(_amigo) {
	    personalidad.valoracion(self, _amigo)
	}

 	method esAmigo(otroSim){
		return amigos.contains(otroSim)
	}
	
	method ultimoNAmigos(cantidadN){
		var cantAmigos  = amigos.size()
		if( cantAmigos < cantidadN){
			return self.getAmigos()
		}else{
			return self.getAmigos().subList(cantAmigos - cantidadN , cantAmigos)
		}
	}
	method masAntiguos(cantidadAntiguos){
		var cantAmigos  = amigos.size()
		if( cantAmigos < cantidadAntiguos){
			return self.getAmigos()
		}else{
			return self.getAmigos().subList(posicion_0, cantidadAntiguos)
		}
	}
	
	//9
	method esElMasPopular(){
		var nivelPopularidad = self.popularidad();
	
		return amigos.all({amigo => amigo.popularidad()<= nivelPopularidad})
	}
}

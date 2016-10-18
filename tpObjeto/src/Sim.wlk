import mensajeUsuario.*

class Sim {
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

 	//5.Saber si un Sim es amigo de otro.
	method esAmigo(otroSim){
		return amigos.contains(otroSim)
	}
}

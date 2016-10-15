
class Sim {
	var nombre
	var sexo
	var edad
	var nivelDeFelicidad
	var conjuntoDeAmigos = []
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
		empleo.getTipo().influir(self, empleo);
	}

	method hacerAmigo(_amigo) {
		try{
			nivelDeFelicidad += self.valorar(_amigo)
		}
		catch e : Exception{ } 
		conjuntoDeAmigos.add(_amigo)
	}

	method getAmigos() {
		return conjuntoDeAmigos
	}

	method popularidad() {
		return conjuntoDeAmigos.sum({ amigo => amigo.getNivelDeFelicidad() })
	}

	method valorar(_amigo) {
		return personalidad.valoracion(self, _amigo)
	}
}
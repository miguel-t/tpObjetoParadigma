import mensajeUsuario.*
import personalidades.*
import estadosDeAnimo.*

class Sim {
	const posicion_0=0
	var nombre
	var sexo
	var edad
	var nivelDeFelicidad
	var popularidad = 0
	var amigos = new List()
	var empleo
	var personalidad = 0
	var dinero = 0
	var dineroMaximoAPrestar = 0
	var nivelDeFelicidadAdicional = 0
	var estadoDeAnimo = normal
	var fuentesDeInformacion = new List()
	var conocimientos = new List()
	var conocimientosOlvidados = new List()

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
	
	method setEdad(_edad) {
		edad = _edad
	}
	
	
	method getPersonalidad(){
		return personalidad
	}
	
	method setPersonalidad(_personalidad){
		personalidad = _personalidad
	}

	method getNivelDeFelicidad() {
		return nivelDeFelicidad + nivelDeFelicidadAdicional
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
	
	method setNivelDeFelicidadAdicional(_nivel) {
		nivelDeFelicidadAdicional = _nivel
	}
	
	method trabajar(){
		self.setEstadoDeAnimo(normal)
		if( empleo != null ){
			empleo.getTipo().influir(self, empleo)
		}
	}

	method hacerAmigo(_amigo) {
		
		if(!amigos.contains(_amigo)){
			self.valorarSim(_amigo)
			amigos.add(_amigo)
			self.calcularPopularidad()
		}else{
			console.println(_amigo.getNombre() +  mensajeUsuario.getExisteAmigo())
		}
		
	}

	method getAmigos() {
		return amigos
	}
	
	method calcularPopularidad(){
		var _popularidad = amigos.sum({ amigo => amigo.getNivelDeFelicidad() })
		self.setPopularidad(_popularidad)
	}
	
	method getPopularidad(){
		return popularidad
	}
	
	method setPopularidad(_popularidad){
		popularidad = _popularidad
	}

	method valorarSim(_amigo) {
	    return personalidad.valoracion(self, _amigo)
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
		var nivelPopularidad = self.getPopularidad();
		var amigosPopulares = amigos.all({amigo => amigo.getPopularidad() <= nivelPopularidad})
		return amigosPopulares
	}
	
	method ordenarSegunValoracion(){
		amigos = amigos.sortedBy({ amigo1, amigo2 => self.valorarSim(amigo1) >= self.valorarSim(amigo2) })
	}
	
	method amigoMasValorado(){
		self.ordenarSegunValoracion()
		return amigos.get(0)
	}
	
	method getDineroMaximoAPrestar(unPersonaje){
		dineroMaximoAPrestar = 10*self.valorarSim(unPersonaje)
		if( self.getPersonalidad() == interesado){
			dineroMaximoAPrestar = unPersonaje.getDinero()
		}
		return dineroMaximoAPrestar
	}
	
	method prestarDinero(unPersonaje, cantidadAPrestar){
		if( dinero < cantidadAPrestar){
			error.throwWithMessage("Dinero insuficiente para realizar el prestamo.")
		}
		if( self.getDineroMaximoAPrestar(unPersonaje) <= cantidadAPrestar){
			error.throwWithMessage("Cantidad solicitada mayor a la dispuesta a prestar.")
		}
		self.setDinero( self.getDinero() - cantidadAPrestar )
		unPersonaje.setDinero(cantidadAPrestar)
	}
	
	method setEstadoDeAnimo(_estadoDeAnimo){
		estadoDeAnimo.normalizar(self)
		estadoDeAnimo = _estadoDeAnimo
		estadoDeAnimo.influir(self)
	}
	
	method getEstadoDeAnimo(){
		return estadoDeAnimo
	}
	
	method setFuenteDeInformacion(_fuente){
		fuentesDeInformacion.add(_fuente)
	}
	
	method getFuentesDeInformacion(){
		return fuentesDeInformacion
	}
	
	method getInformacion(){
		return ("Chisme de: "+amigos.get(0).getNombre())
	}
	
	method setConocimiento(_conocimiento){
		conocimientos.add(_conocimiento)
	}
	
	method getConocimientos(){
		return conocimientos
	}
	
	method informarse(){
		conocimientos = fuentesDeInformacion.map({ fuente => fuente.getInformacion()})
	}
	
	method cumplirAnio(){
		self.setEdad(self.getEdad()+1)
	}
	
	method olvidarConocimientos() {
		conocimientosOlvidados = conocimientos
		conocimientos = new List()
	}
	
	method recordarConocimientos() {
		conocimientos = conocimientosOlvidados
		conocimientosOlvidados = new List()
	}
}

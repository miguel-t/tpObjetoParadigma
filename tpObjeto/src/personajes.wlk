import poderes.*
import reacciones.*

//superheroes

class SuperPersonajes {
	var peleo = false
	var poderes = []

	method obtenerPoderes() = poderes
	
	method borrarPoderes(){
		poderes.clear()
	}
	
		method esAmigo(unPersonaje) {
		return false
	}
	// El SuperPersonaje obtiene la fuerza de sus poderes
	method getFuerza() = poderes.size() * 100
	
	method setPeleo(unBoolean) {
		peleo = unBoolean
	}
	
	method getPeleo() = peleo
	method atacar(victima)
	
	method esSuper() = true
}
	
object hulk inherits SuperPersonajes {
	
	var vida = 50
	
	method obtenerVida() = vida	
	
	method estaVivo() = vida>0
	
	method reducirVida(valor){
		if(vida>valor){
			vida = vida - valor
		}else{
			vida = 0
		} 
	}
	
	method aumentarVida(valor){
		vida = vida + valor
	}
	
	method reaccionar(){
		if(peleo){
			culpa.actuar(self)
		}else{
			experiencia.actuar(self)
		}
	}
	
	method calcularVida(){
		vida = vida + (100*poderes.size())
	}
	
	method molestar(){
		poderes.add(fuerza)
		self.calcularVida();
	}
	
	method acariciar(){
		self.borrarPoderes()
	}
	
	override method atacar(victima){
		poderes.forEach({
			poder => poder.actuar(self, victima)
		})
		self.setPeleo(true)
		self.reaccionar()
		
		//si la victima tiene energia, contraataca
		if(victima.estaVivo()){
			victima.atacar(self);
		}
	}
	
	//Si un Personaje es atacado por un Sim y pierde, pierde tanta vida como fuerza
	// tenía el Oponente
	method pierde(fuerzaOponente) {
		self.reducirVida(fuerzaOponente)
	}
	
}

object wolverine inherits SuperPersonajes {
	
	var vida = 100
	
	method obtenerVida() = vida
		
	method estaVivo() = vida>0
	
	override method obtenerPoderes() = [fuerza, objetosCortantes]
	
	method reducirVida(valor){
		if(vida>=valor){
			vida = vida - valor
			self.regenerar()
		}else{
			vida = 0
		} 
	}
	
	
	method caraDeNaipe(){
			
	}
	
	method regenerar(){
		vida = vida+35
		if( vida > 100) vida = 100
	}
	
	override method atacar(victima){
		self.obtenerPoderes().forEach({
			poder => poder.actuar(self, victima)
		})
		self.caraDeNaipe();
		//si la victima tiene energia, contraataca
		if(victima.estaVivo()){
			victima.atacar(self);
		}
	}
	
	//Si un Personaje es atacado por un Sim y pierde, pierde tanta vida como fuerza
	// tenía el Oponente
	method pierde(fuerzaOponente) {
		self.reducirVida(fuerzaOponente)
	}
}

//villanos
object magneto inherits SuperPersonajes {
	
	var vida = 100
	
	method obtenerVida() = vida
	
	method estaVivo() = vida>0
		
	override method obtenerPoderes() = [vuelo, telequinesis, objetosCortantes]
	
	method reducirVida(valor){
		if(vida>valor){
			vida = vida - valor
		}else{
			vida = 0
		} 
	}
	
	method aumentarVida(valor){
		vida = vida + valor
	}
	
	method obtenerExperiencia(){
		vida = vida + 10
	}
	
	method ponerCasco(){
		vida = vida * 10
	}
	
	method sacarCasco(){
		vida = vida/10
	}
	
	override method atacar(victima){
		self.obtenerPoderes().forEach({
			poder => poder.actuar(self, victima)
		})
		self.obtenerExperiencia()
		//si la victima tiene energia, contraataca
		if(victima.estaVivo()){
			victima.atacar(self);
		}
	}
	
	//Si un Personaje es atacado por un Sim y pierde, pierde tanta vida como fuerza
	// tenía el Oponente
	method pierde(fuerzaOponente) {
		self.reducirVida(fuerzaOponente)
	}

}

object hombreAbsorbente inherits SuperPersonajes {
	
	var vida = 50
	
	method obtenerVida() = vida	
	
	method estaVivo() = vida>0
	
	override method obtenerPoderes() = [fuerza]
	
	method absorberPoder(victima){
		if (victima.esSuper() && victima.obtenerPoderes().size() > 0){
			victima.obtenerPoderes().forEach({
			poder => poderes.add(poder)
		})
		victima.borrarPoderes()
		
		}
	}
	
	override method atacar(victima){
		self.obtenerPoderes().forEach({
			poder => poder.actuar(self, victima)
		})
		self.absorberPoder(victima)
		//si la victima tiene energia, contraataca
		if(victima.estaVivo()){
			victima.atacar(self);
		}
	}
	
	method reducirVida(valor){
		if(vida>valor){
			vida = vida - valor
		}else{
			vida = 0
		} 
	}
	
	method aumentarVida(valor){
		vida = vida + valor
	}
	
	//Si un Personaje es atacado por un Sim y pierde, pierde tanta vida como fuerza
	// tenía el Oponente
	method pierde(fuerzaOponente) {
		self.reducirVida(fuerzaOponente)
	}
}
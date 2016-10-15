import Sim.*
import Trabajo.*
import personalidades.*
import tiposTrabajo.*

object testSimFixture {
	method getAmigo1() = new Sim("sim2", "femenino", 25, interesado, 10)
	method getAmigo2() = new Sim("sim3", "masculino", 30, superficial, 10)
	method getAmigo3() = new Sim("sim4", "femenino", 35, peleadoConLaVida, 10)
	method getTrabajoCopado() = new Trabajo("musico", copado, 50000)
	method getTrabajoMercenario() = new Trabajo("programador", mercenario, 20000)
	method getTrabajoAburrido() = new Trabajo("data entry", aburrido, 15000)
}
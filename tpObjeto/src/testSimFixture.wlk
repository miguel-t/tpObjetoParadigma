import Sim.*
import Trabajo.*
import personalidades.*
import tiposTrabajo.*

object testSimFixture {
	method getAmigo1() = new Sim("sim1", "femenino", 25, interesado, 10)
	method getAmigo2() = new Sim("sim2", "masculino", 30, superficial, 10)
	method getAmigo3() = new Sim("sim3", "femenino", 35, peleadoConLaVida, 10)
	method getAmigo4() = new Sim("sim4", "femenino", 25, interesado, 10)
	method getAmigo5() = new Sim("sim5", "masculino", 30, superficial, 20)
	method getAmigo6() = new Sim("sim6", "femenino", 35, peleadoConLaVida, 30)
	method getTrabajoCopado() = new Trabajo("musico", copado, 50000)
	method getTrabajoMercenario() = new Trabajo("programador", mercenario, 20000)
	method getTrabajoAburrido() = new Trabajo("data entry", aburrido, 15000)
	method getSimPedro() = new Sim("pedro", "masculino", 25, interesado, 10)
	method getSimHernan() = new Sim("hernan", "masculino", 26, interesado, 10)
	method getSimJuan() = new Sim("juan", "masculino", 27, interesado, 10)
	method getSimMartin() = new Sim("martin", "masculino", 28, interesado, 10)
	method getSimSamuel() = new Sim("samuel", "masculino", 29, interesado, 10)
	method getSimEmiliano() = new Sim("emiliano", "masculino", 30, interesado, 10)
	method getSimGuillermo() = new Sim("guillermo", "masculino", 31, interesado, 10)
		

}
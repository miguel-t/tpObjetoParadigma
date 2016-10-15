
class Trabajo {
	var nombre
	var tipo
	var sueldo
	
	constructor(_nombre, _tipo, _sueldo){
		nombre = _nombre
		tipo = _tipo
		sueldo = _sueldo
	}
	
	method setSueldo(_sueldo){
		sueldo = _sueldo
	}
	
	method getSueldo(){
		return sueldo
	}
	
	method setTip(_tipo){
		tipo = _tipo
	}
	
	method getNombre(){
		return nombre
	}
	
	method setNombre(_nombre){
		nombre = _nombre
	}
	
	method getTipo(){
		return tipo
	}
}
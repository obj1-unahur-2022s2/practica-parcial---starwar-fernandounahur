import persona.*

class Pistolete {
	var property largo
	
	method potencia(persona) {
		if (persona.edad() > 30) {
			return largo * 3
		} else {
			return largo * 2
		}
	}
}

class Espadon {
	var property peso
	
	method potencia(persona) {
		if (persona.edad() < 40) {
			return peso / 2
		} else {
			return 6
		}
	}
}

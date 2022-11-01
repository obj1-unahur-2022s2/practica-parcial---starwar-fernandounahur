import armas.*

class PersonaGenerica {
	var edad
	
	method edad() = edad
	
	method inteligencia() {
		if (edad.between(20, 40)) {
			return 12
		} else {
			return 8
		}
	}
	
	method potencia() = 20
	
	method esDestacada() {
		return edad == 25 or edad == 35
	}
	
	method darTributos(planeta) {}
	
	method valor() = self.potencia() + self.inteligencia()
}

class Atleta inherits PersonaGenerica {
	var masaMuscular = 4
	var cantidadDeTecnicas = 2
	
	method masaMuscular() = masaMuscular
	method cantidadDeTecnicas() = cantidadDeTecnicas
	
	override method potencia() {
		return super() + (masaMuscular * cantidadDeTecnicas) 
	}
	
	override method esDestacada() {
		return super() or cantidadDeTecnicas > 5
	}
	
	method entrenar(cantDias) {
			masaMuscular += cantDias.div(5)
	}
	
	method aprenderTecnica() {
		return cantidadDeTecnicas++
	}
	
	override method darTributos(planeta) {
		planeta.construirMuralla(2)
	}
}

class Docente inherits PersonaGenerica {
	var cantidadDeCursos = 0
	
	method cantidadDeCursos() = cantidadDeCursos
	
	override method inteligencia() {
		return super() + (cantidadDeCursos * 2)
	}
	
	override method esDestacada() {
		return cantidadDeCursos > 3
	}
	
	override method darTributos(planeta) {
		planeta.fundarMuseo()
	}
	
	override method valor() = super() + 5
}

class Soldado inherits PersonaGenerica {
	const property coleccionDeArmas = []
	
	method agregarArma(unArma) {
		return coleccionDeArmas.add(unArma)
	}
	
	method potenciaDeArmas() {
		return coleccionDeArmas.sum({
			a => a.potencia(self)
		})
	}
	
	override method potencia() = super() + self.potenciaDeArmas()
	
	override method darTributos(planeta) {
		planeta.construirMuralla(5)
	}
}

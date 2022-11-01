import persona.*

class Planeta {
	const property habitantes = #{}
	var property museos = 0
	var property longitudMurallas = 0
	
	method ingresarPersona(persona) {
		return habitantes.add(persona)
	}
	
	method construirMuralla(cantidad) {
		longitudMurallas += cantidad
	}
	
	method fundarMuseo() {
		museos++
	}
	
	method delegacionDiplomatica() {
		return habitantes.filter({
			h => h.esDestacada()
		}) 
	}
	
	method valorInicialDefensa() {
		return habitantes.count({
			h => h.potencia() > 30
		})
	}
	
	method hay10DeIntMinimo() {
		return habitantes.all({
			h => h.inteligencia() >= 10
		}) 
	}
	
	method esCulto() {
		return museos > 2 and self.hay10DeIntMinimo()
	}
	
	method potenciaReal() {
		return habitantes.sum({
			h => h.potencia()
		})
	}
	
	method potenciaAparente() {
		return habitantes.max({
			h => h.potencia() * habitantes.size()
		})
	}
	
	method necesitaReforzarse() {
		return self.potenciaAparente() > self.potenciaReal() * 2
	}
	
	method recibirTributos() {
		return habitantes.forEach({
			h => h.darTributos(self)
		})
	}
	
	method habitantesValiosos() {
		return habitantes.filter({
			h => h.valor() >= 40
		})
	}
	
	method apaciguarPlaneta(planeta) {
		return self.habitantesValiosos().forEach({
			h => h.darTributos(planeta)
		})
	}
	
}

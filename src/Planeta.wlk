import Personas.*

class Planeta{
	
	const property cantHabitantes = #{}
	const cantaMuseos  = 0
	
	method  delegacionDiplomatica(){
		cantHabitantes.filter({hab=>hab.esDestacada()}) 
	}
	method valorInicialDeDefensa(){
		cantHabitantes.count({hab=>hab.potencia()>= 30})
	}
	method esCulto()= cantaMuseos <= 2 or cantHabitantes.inteligencia()<= 10
	
	method potenciaReal()= cantHabitantes.sum({s=>s. potencia()})
	
	
	
	
}

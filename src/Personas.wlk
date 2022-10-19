class Persona {
	var property edad 
	
	
	var property destacado = false 
	
	method inteligencia(){
		if (edad.between(20,40))
		 return 12
		else 
		 return 8 
	}	
	
	method potencia()=20
	
		
	method esDestacada()= edad ==25 or edad ==35
	
}
class Atleta inherits Persona {
	var property  masaMuscular = 4
	var property  cantidadTecnicas = 2
	
	override method potencia()=
		super() +  masaMuscular * cantidadTecnicas
		
	
	override method esDestacada()= super() or cantidadTecnicas > 5
	
	method entrenarUna(cantidadDeDias){
		 masaMuscular += cantidadDeDias/5
		
	}
	method aprenderUnaTecnica (){
		cantidadTecnicas += 1
		
	}

}	
class Docente inherits Persona {
	var property cantDeCursos = 0
	
	override method inteligencia ()= super() +  cantDeCursos*2
	
	override method esDestacada()= cantDeCursos  > 3
	
  }
 
 
 	
	

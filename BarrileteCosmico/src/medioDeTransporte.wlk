class MedioDeTransporte {
	const velocidad
	const precioPorKilometro
	const nombre
	
	method nombre() = nombre
	
	method precioPorKilometro() = precioPorKilometro
	
	method tardanza(unaDistancia){
		return velocidad*unaDistancia
	}
	
	method precioPorDistancia(unaDistancia){
		return precioPorKilometro*unaDistancia
	}	
}

const avion = new MedioDeTransporte(velocidad = 5, precioPorKilometro = 10, nombre='avion')

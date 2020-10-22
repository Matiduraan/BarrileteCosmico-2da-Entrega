class Localidad{
	const nombre 
	const equipajeImprescindible 
	var precio 
	const kilometraje
		
	method nombre() = nombre
	
	method precio() = precio
	
	method kilometraje() = kilometraje
	
	method esDestacada() = precio > 2000
	
	method cantidadDeElementos() = equipajeImprescindible.size()
	
	method ultimoElementoDelEquipaje() = equipajeImprescindible.last()
	
	method esPeligrosa() = self.tieneEnElEquipaje("vacuna")
	
	method aplicarDescuento(unValor) {
		equipajeImprescindible.add("certificado de descuento")
		precio -= unValor
	}
	
	method tieneEnElEquipaje(unElemento) {
		return equipajeImprescindible.any({elemento=>elemento.contains(unElemento)})
	}	
	
	method distanciaAOtraLocalidad(otraLocalidad){
		return (otraLocalidad.kilometraje() - kilometraje).abs()
	}
}

const garlic = new Localidad(
	nombre = "Garlic's Sea", 
	equipajeImprescindible = ["cania de pescar","piloto"], 
	precio = 2500, 
	kilometraje = 24
)

const silver = new Localidad(
	nombre = "Silver's Sea", 
	equipajeImprescindible = ["protector solar","equipo de buceo"], 
	precio = 1350, 
	kilometraje = 15
)

const toninas = new Localidad(
	nombre = "Last Toninas", 
	equipajeImprescindible = ["vacuna gripal","vacuna B","necronomicon"], 
	precio = 3500, 
	kilometraje = 120
)

const goodAirs = new Localidad(
	nombre = "Good Airs", 
	equipajeImprescindible = ["cerveza","protector solar"], 
	precio = 1500, 
	kilometraje = 350
)

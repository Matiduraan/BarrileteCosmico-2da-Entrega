import destinos.*
import viaje.*
import medioDeTransporte.*

object barrileteCosmico {
	
	var localidades = #{garlic,silver,toninas,goodAirs}
	var transportes = #{avion}
	
	method localidadesMasImportantes() {
		return localidades.filter({unaLocalidad => unaLocalidad.esDestacada()})
	}
	
	method aplicarlesDescuento(unDescuento) {
		localidades.forEach({unaLocalidad => unaLocalidad.aplicarDescuento((unaLocalidad.precio())*unDescuento)})
	}
	
	method esExtrema() {
		return localidades.any({unaLocalidad => unaLocalidad.esPeligrosa()})
	}
	
	method localidadesPeligrosas() {
		return localidades.filter({unaLocalidad => unaLocalidad.esPeligrosa()})
	}
	
	method cartaDeLocalidades() {
		return localidades.map({unaLocalidad => unaLocalidad.nombre()})
	}
	
	method armarViaje(usuario,destino) {
		const nuevoViaje = new Viaje(origen = usuario.localidadDeOrigen(), destino = destino, transporte = self.transporteRandom())
		return nuevoViaje
	}
			
	
	method transporteRandom(){
		return transportes.anyOne()
	}
	
}

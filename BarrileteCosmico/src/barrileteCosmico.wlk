import localidad.*
import viaje.*
import medioDeTransporte.*

object barrileteCosmico {
	
	var localidades = #{garlic,silver,toninas,goodAirs}
	var transportes = #{avion}
	
	method destinosMasImportantes() {
		return localidades.filter({unaLocalidad => unaLocalidad.esDestacada()})
	}
	
	method aplicarlesDescuento(unDescuento) {
		localidades.forEach({unaLocalidad => unaLocalidad.aplicarDescuento((unaLocalidad.precio())*unDescuento)})
	}
	
	method esExtrema() {
		return localidades.any({unaLocalidad => unaLocalidad.esPeligrosa()})
	}
	
	method destinosPeligrosos() {
		return localidades.filter({unaLocalidad => unaLocalidad.esPeligrosa()})
	}
	
	method cartaDeDestinos() {
		return localidades.map({unaLocalidad => unaLocalidad.nombre()})
	}
	
	method armarViaje(usuario,destino) {
		return new Viaje(origen = usuario.localidadDeOrigen(), destino = destino, transporte = transportes.anyOne())
	}

	
}

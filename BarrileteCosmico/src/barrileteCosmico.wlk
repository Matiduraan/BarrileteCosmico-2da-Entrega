import destinos.*
import viaje.*
import usuarios.*

object barrileteCosmico {
	
	var destinos = #{garlic,goodAirs,silver,toninas}
	var transportes = #{}
	
	method destinosMasImportantes() {
		return destinos.filter({unDestino => unDestino.esDestacado()})
	}
	
	method aplicarlesDescuento(unDescuento) {
		destinos.forEach({unDestino => unDestino.aplicarDescuento((unDestino.precio())*unDescuento)})
	}
	
	method esExtrema() {
		return destinos.any({unDestino => unDestino.esPeligroso()})
	}
	
	method destinosPeligrosos() {
		return destinos.filter({unDestino => unDestino.esPeligroso()})
	}
	
	method cartaDeDestinos() {
		return destinos.map({unDestino => unDestino.nombre()})
	}
	
	method armarViaje(unUsuario,unDestino){
		const unViaje = new Viaje(origen = unUsuario.localidadDeOrigen(), destino = unDestino, transporte = self.transporteRandom())
	}
	
	method transporteRandom(){
		return transportes.anyOne()
	}
	
}
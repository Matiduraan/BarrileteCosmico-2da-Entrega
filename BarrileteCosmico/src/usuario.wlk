import localidad.*
import medioDeTransporte.*
import viaje.*
import barrileteCosmico.*

class Usuario{
	
	var historial
	var listaUsuarios
	var dineroEnCuenta
	var localidadDeOrigen
	
	method localidadDeOrigen() = localidadDeOrigen
	
	method historial() = historial
		
	method dineroEnCuenta() = dineroEnCuenta

	method viajar(destino){
		var nuevoViaje = barrileteCosmico.armarViaje(self,destino)
		if (self.puedeViajar(nuevoViaje)){
			historial.add(nuevoViaje)
		    dineroEnCuenta -= nuevoViaje.precioDelViaje()
		    localidadDeOrigen = destino
		}
	}	
	
	method puedeViajar(viaje){
		return viaje.precioDelViaje() < dineroEnCuenta
	}
	
	
	method kilometrosRecorridos() {
		var kilometrosTotales = 0
		historial.forEach({viaje => kilometrosTotales += viaje.distanciaEntreLocalidades()})
		return kilometrosTotales
	}
	
	method seguirA(unUsuario) {
		self.agregarSeguido(unUsuario)
		unUsuario.agregarSeguido(self)
	}
	
	method agregarSeguido(unUsuario) {
		listaUsuarios.add(unUsuario)
	}
	
}

const pabloHari = new Usuario(
	historial = [viaje1,viaje2], 
	listaUsuarios = #{}, 
	dineroEnCuenta = 7500, 
	localidadDeOrigen = goodAirs
)


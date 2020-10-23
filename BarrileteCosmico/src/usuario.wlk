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
		return historial.sum({viaje => viaje.distanciaEntreLocalidades()})
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


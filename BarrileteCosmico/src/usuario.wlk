import localidad.*
import medioDeTransporte.*
import viaje.*
import destinos.*

class Usuario{
	
	var historial 
	var listaUsuarios 
	var dineroEnCuenta 
	var localidadDeOrigen
	
	method historial() = historial
		
	method dineroEnCuenta() = dineroEnCuenta
	
	method localidadDeOrigen() = localidadDeOrigen
	
	method kilometrosRecorridos() {
		return historial.sum({unViaje => unViaje.distanciaEntreLocalidades()})
	}
		
	method seguirA(unUsuario) {
		self.agregarSeguido(unUsuario)
		unUsuario.agregarSeguido(self)
	}
	
	method agregarSeguido(unUsuario) {
		listaUsuarios.add(unUsuario)
	}
	
	method viajar(unViaje){
		if (self.puedeViajar(unViaje)){
			historial.add(unViaje)
			dineroEnCuenta -= unViaje.precioDelViaje()
			localidadDeOrigen = unViaje.destino()
		}
	}
	
	method puedeViajar(unViaje) {
		return dineroEnCuenta > unViaje.precioDelViaje()
	}
	
}


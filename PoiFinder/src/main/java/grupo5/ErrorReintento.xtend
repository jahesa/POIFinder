package grupo5

class ErrorReintento extends Error {

	int cantidad
	int i

	new(int cant) {
		cantidad = cant
	}

	override errorProc(Proceso proceso, ObserverBusqueda algo) {
		for (i = 0; i < cantidad; i++) {
			if (!proceso.hacer(algo)) {
				System.out.println("Pasada numero " + i)
			}
		}
		System.out.println("Se reintentó " + i + " veces")
	}

	override errorProc(Proceso proceso, String algo) {
		for (i = 0; i < cantidad; i++) {
			if (!proceso.hacer(algo)) {
				System.out.println("Pasada numero " + i)
			}
		}
		System.out.println("Se reintentó " + i + " veces")
	}

	override errorProc(ProcesoAgregarAccionesParaTodosLosUsuarios acciones, Usuario user) {
		for (i = 0; i < cantidad; i++) {
			if (!acciones.checkeo()) {
				System.out.println("Pasada numero " + i)
			}
		}
		System.out.println("Se reintentó " + i + " veces")
	}
}
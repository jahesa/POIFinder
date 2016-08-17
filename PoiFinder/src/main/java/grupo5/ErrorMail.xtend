package grupo5

class ErrorMail extends Error {

	override errorProc(Proceso proceso, ObserverBusqueda algo) {
		System.out.println("Send mail")

	}

	override errorProc(Proceso proceso, String algo) {
		System.out.println("Send mail")

	}

	override errorProc(ProcesoAgregarAccionesParaTodosLosUsuarios acciones, Usuario user) {
		System.out.println("Send mail")

	}
}

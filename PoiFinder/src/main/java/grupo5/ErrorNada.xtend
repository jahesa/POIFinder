package grupo5

class ErrorNada extends Error {
	override errorProc(Proceso proceso, ObserverBusqueda algo) {
		System.out.println("Dio error, no hago nada")
	}

	override errorProc(Proceso proceso, String algo) {
		System.out.println("Dio error, no hago nada")
	}

	override errorProc(ProcesoAgregarAccionesParaTodosLosUsuarios acciones, Usuario user) {
		System.out.println("Dio error, no hago nada")
	}
}

package grupo5

class Error extends Exception {

	def errorProc(Proceso proceso, ObserverBusqueda algo) { System.out.println("hola") }

	def errorProc(Proceso proceso, String algo) { System.out.println("hola") }
	
	def errorProc(ProcesoAgregarAccionesParaTodosLosUsuarios acciones, Usuario usuario) { System.out.println("hola") }

}

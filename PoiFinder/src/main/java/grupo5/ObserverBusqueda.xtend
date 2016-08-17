package grupo5

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
abstract class ObserverBusqueda {
	
	Busqueda busqueda
	
	def void update(Busqueda busqueda){}
}
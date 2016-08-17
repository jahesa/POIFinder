package grupo5

import java.util.Date
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
abstract class Proceso
{
	Date init 
	Date fin
	def boolean hacer(String algo){true}
	def boolean hacer(ObserverBusqueda algo){true}	

	def boolean ejecutarProceso(String string,ObserverBusqueda ob)

}
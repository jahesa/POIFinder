package grupo5

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.Date

@Accessors
class ProcesoEjecutado {
	String proceso
	Date inicioProceso
	Date finProceso
	//Usuario user
	new(String pros,Date init,Date fin){
		proceso = pros
		inicioProceso = init
		finProceso = fin
	}
}
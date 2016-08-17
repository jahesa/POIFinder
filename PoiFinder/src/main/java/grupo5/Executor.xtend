package grupo5

import java.util.List
import java.util.ArrayList
import org.eclipse.xtend.lib.annotations.Accessors


@Accessors
class Executor {
	Error errorDo
	ProcesoAgregarAccionesParaTodosLosUsuarios acciones
	List<ProcesoEjecutado> procesosEjecutados = new ArrayList
	
	new(Error error){
		errorDo= error
	}
	
	def ejecutar(Proceso proceso, String algo){

			if (!proceso.hacer(algo))
				errorDo.errorProc(proceso,algo)
		
			this.guardar(proceso)
		}
		
	def ejecutar(Proceso proceso,ObserverBusqueda algo){

			if (!proceso.hacer(algo))
				errorDo.errorProc(proceso,algo)
			
			this.guardar(proceso)
			
		}
		

	def guardar(Proceso proceso) {
			procesosEjecutados.add(new ProcesoEjecutado(proceso.class.toString,proceso.init,proceso.fin))
	
			}
		
	def ejecutar10(ProcesoAgregarAccionesParaTodosLosUsuarios acciones, ObserverBusqueda algo){
		acciones.adObs(algo)
	}
		
	def ejecutar22(ProcesoAgregarAccionesParaTodosLosUsuarios acciones,Usuario usuario){
		
		acciones.addUsuario(usuario)
	
		if(!acciones.checkeo()){
		errorDo.errorProc(acciones,usuario)
			}
			else{
				this.guardar(acciones)
			}
		}
		
	


}

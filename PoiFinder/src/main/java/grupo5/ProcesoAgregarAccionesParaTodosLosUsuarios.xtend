package grupo5

import java.util.List
import java.util.ArrayList
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.Date

@Accessors
class ProcesoAgregarAccionesParaTodosLosUsuarios extends Proceso {
	


	List<Usuario> usr = new ArrayList<Usuario>
	List<ObserverBusqueda> acciones = new ArrayList

	//
	//
	
		override boolean hacer(ObserverBusqueda observer) {
			this.init = new Date
			val message = (acciones.add(observer)) && (this.addObserver(observer))
			this.fin = new Date
			return message
		}
	
	//
	//
	
	def void addUsuario(Usuario user) {
		usr.add(user)
	}

	def boolean removeUsuario(Usuario user) {
		usr.remove(user)
	}
	def adObs(ObserverBusqueda observer){
		acciones.add(observer)
	}

	def boolean addObserver(ObserverBusqueda observer) {
		usr.forEach[n|n.addObserver(observer)]
		return usr.exists[n|n.busqueda.observer.equals(acciones)]
	}


	def boolean undo()
	{
//		acciones.forEach[accion|usr.forEach[user|user.removeObserver(accion)]]
		usr.forEach[n|n.borrarObservers(acciones)]
		return usr.exists[n|n.busqueda.observer != (acciones)]
	}
	
	def boolean checkeo(){
		return usr.exists[n|n.busqueda.observer ==(acciones)]
	}
	
	override ejecutarProceso(String string,ObserverBusqueda ob)
	{
		//this.addObserver(ob)
		hacer(ob)
	}

}

package grupo5

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import java.util.ArrayList

@Accessors
class Usuario {
	
	String nombre
	Busqueda busqueda 
	Administrador admin
	List<Integer> busquedasRealizadas =new ArrayList
	
	new(Repo rep, String name) {
		busqueda = new Busqueda(rep, this)
		nombre=name
	}
	def buscar(String algo){
		busqueda.buscar(algo)
		
	}
	
	def borrarObservers(List<ObserverBusqueda> observer){
		observer.forEach[ob|busqueda.removeObserver(ob)]
	}
	
	def String showNombre(){
		nombre
	}
	
	def addObserver(ObserverBusqueda obs){
		busqueda.addObserver(obs)
	}
	def removeObserver(ObserverBusqueda obs){
		busqueda.removeObserver(obs)
	}
	
	def nuevaBusqueda(int i) {
		busquedasRealizadas.add(i)
	}
	
}
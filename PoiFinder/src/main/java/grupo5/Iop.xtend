package grupo5

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.Entity
import org.uqbar.commons.utils.Observable
import org.uqbar.geodds.Point

@Accessors
@Observable
abstract class Iop extends Entity {

	String nombre
	String Barrio
	String direccion
	int numero
	Horario horarios
	Point coordenada
	double distanciaMinCercania
	List<String> diasAtencion = newArrayList
	List<String> palabrasClaves = new ArrayList

	
	
	def estaAbierto(String nombre, String dia, int hora, int minuto) {
		(horarios.checkHora(hora, minuto) && diasAtencion.contains(dia))
	}

	def estaCercaDe(Point point) {
		coordenada.distance(point) <= distanciaMinCercania
	}
	
	def Boolean matcherXNombre(String _nombre){
		nombre.startsWith(_nombre)
	}
	

	
}

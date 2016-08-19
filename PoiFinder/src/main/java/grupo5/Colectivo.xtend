package grupo5

import java.util.ArrayList
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.geodds.Point
import org.uqbar.commons.utils.TransactionalAndObservable

@Accessors
@TransactionalAndObservable
class Colectivo extends Iop {
	String linea
	List<Point> parada
	List<String> dias

	new(int nombre) {
		linea = nombre.toString
		parada = new ArrayList<Point>()
	}

	def addParada(double x, double y) {
		parada.add(Point.and(x, y))
	}

	override estaCercaDe(Point point) {
		(parada.exists[paradas|paradas.distance(point) <= 0.1])
		
	}

	override estaAbierto(String nombre, String dia, int hora, int minuto) {
		true
	}
	

	override Boolean matcherXNombre(String _nombre){
		linea ==_nombre
	}
}

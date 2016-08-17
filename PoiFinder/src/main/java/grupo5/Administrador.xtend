package grupo5

import java.util.ArrayList
import java.util.List
import java.util.Map
import java.util.HashMap
import org.joda.time.LocalDate
import org.eclipse.xtend.lib.annotations.Accessors
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

@Accessors
class Administrador {
	List<Usuario> user = new ArrayList
	List<String> busquedasLargas = new ArrayList
	Map<LocalDate, Integer> busquedasRealizadas = new HashMap

	def mailBusquedaLarga(String busqueda) {
		busquedasLargas.add(busqueda)
		var Logger log = LogManager.getLogger(this)
		log.warn("Llego mail por busqueda larga")
	}
	

	def nuevaBuquedaDelDia(LocalDate key) {
		if (busquedasRealizadas.containsKey(key))
			busquedasRealizadas.put(key, busquedasRealizadas.get(key) + 1)
		else
			busquedasRealizadas.put(key, 1)
	}

}

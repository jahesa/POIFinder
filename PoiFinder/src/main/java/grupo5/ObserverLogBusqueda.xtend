package grupo5

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

class ObserverLogBusqueda extends ObserverBusqueda {

	override update(Busqueda busqueda) {
		var Logger log = LogManager.getLogger(busqueda.usuario.nombre)
		log.info("Nombre buscado : " + busqueda.nombre)
		log.info("Cantidad de resultados : " + busqueda.results.size)
		log.info("Tiempo de busqueda " + busqueda.time + " ms ")
	}

}

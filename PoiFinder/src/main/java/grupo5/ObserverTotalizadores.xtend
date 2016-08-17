package grupo5

import org.joda.time.LocalDate

class ObserverTotalizadores extends ObserverBusqueda {

	override update(Busqueda busqueda) {
		this.diaDeBusqueda(busqueda)
		busqueda.usuario.nuevaBusqueda(busqueda.results.size)
	}

	def diaDeBusqueda(Busqueda bus) {
		var LocalDate day = new LocalDate
		bus.usuario.admin.nuevaBuquedaDelDia(day)

	}

}

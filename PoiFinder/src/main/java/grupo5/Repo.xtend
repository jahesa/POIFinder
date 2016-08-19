package grupo5

import org.uqbar.commons.model.CollectionBasedRepo
import org.uqbar.commons.model.Entity
import java.util.List
import java.util.ArrayList
import org.uqbar.commons.utils.Observable

@Observable
class Repo extends CollectionBasedRepo<Iop> {
	List<Iop> iop = new ArrayList

	def boolean searchByName(String nombre) {
		allInstances.exists(list|list.matcherXNombre(nombre))
	}

	def List<Iop> searchFor(String nombre) {
		iop.clear
		allInstances.forEach(list|if(list.matcherXNombre(nombre)) iop.add(list))
		iop
	}

	override void update(Iop object) {
		if (this.objects.remove(object)) {
			this.objects.add(object)
		} else {
			throw new RuntimeException("No se encontró el objeto a actualizar")
		}
	}

	def create(List<Iop> iop) {
		iop.forEach[n|this.create(n)]
	}

	override createExample() {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}

	override getEntityType() {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}

	override protected getCriterio(Iop example) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}

}

package ar.edu.unsam.PoiFinder.UI

import grupo5.Iop
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class BusquedaViewModel extends BaseViewModel {
	
	String nombreDePoiABuscar
	List<Iop> poisEncontrados 
	Iop poiSeleccionado	
		
	
}
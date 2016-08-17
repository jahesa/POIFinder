package grupo5

import org.uqbar.geodds.interfacesExternas.CGPService
import java.util.List
import org.uqbar.geodds.interfacesExternas.CentroDTO
import java.util.ArrayList

class StubCGPService implements CGPService {
	List<CentroDTO> listaCGPs=new ArrayList<CentroDTO>
	List<CentroDTO> listacentros=new ArrayList<CentroDTO>
	
	
	def void agregarCentroDTO(CentroDTO centro){
		listaCGPs.add(centro)
	}
	
	
	
	override List<CentroDTO> getCGPsByCalleOBarrio(String calleOBarrio){
		

		 listacentros=listaCGPs.filter(cgp|cgp.domicilio.startsWith(calleOBarrio)||cgp.zonasIcluidas.startsWith(calleOBarrio)).toList
		
	}
	
	def boolean listaFiltrada(String calleOBarrio){
		listacentros.exists(lc|lc.domicilio.startsWith(calleOBarrio)||lc.zonasIcluidas.startsWith(calleOBarrio))
	}
	
	def getsize(){
		listaCGPs.size()
	}
	
	def getsizeListaFiltrada(){
		listacentros.size()
	}
	
	def  getListaFiltrada(String calleOBarrio){
		this.getCGPsByCalleOBarrio( calleOBarrio).forEach[centros|System.out.println(
		"Comuna: "+(centros.numeroComuna)+ 
		" coordenada X: "+ centros.coordenadaX +
		" coordenada Y: "+ centros.coordenadaY +
		" Barrios: "+ (centros.zonasIcluidas)+
		" Director. "+ (centros.nombreDirector)+
		" Domicilio: "+(centros.domicilio)+
		" Telefono: "+ (centros.telefono)+
		" Servicios DTO: " + centros.serviciosDTO.map[nombreServicio +
			" Horarios: " + rangosServicioDTO.map["Día: " +numeroDia +" Desde: " + horarioDesde + " Hasta: " + horarioHasta]
		]
		
		)]
	}
	
}
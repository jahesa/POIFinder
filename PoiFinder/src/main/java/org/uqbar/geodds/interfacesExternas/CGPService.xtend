package org.uqbar.geodds.interfacesExternas

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.ArrayList

interface CGPService {
	
	def List<CentroDTO> getCGPsByCalleOBarrio(String calleOBarrio)
	
}

@Accessors
class CentroDTO {
	
	int numeroComuna
	double coordenadaX
	double coordenadaY
	String zonasIcluidas
	String nombreDirector
	String domicilio
	String telefono
	List <ServicioDTO> serviciosDTO=new ArrayList<ServicioDTO>
	
	
	
	
}

@Accessors
class ServicioDTO {
	
	String nombreServicio
	List<RangoServicioDTO> rangosServicioDTO=new ArrayList<RangoServicioDTO>
	
	
	
}

@Accessors
class RangoServicioDTO {
	
	int numeroDia
	int horarioDesde
	int minutosDesde
	int horarioHasta
	int minutosHasta
	
}
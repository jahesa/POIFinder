package grupo5

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.ArrayList
import java.util.Date

@Accessors
class ProcesoMultiple  extends Proceso
{
	List<Proceso> procesos// = new ArrayList<Proceso>
	
	Date fechaInicio
	Date fechaFin
		
	new ()
	{
		procesos = new ArrayList<Proceso>()
	}

	def void agregar(Proceso p)
	{
		if (!procesos.contains(p))
		{
			procesos.add(p)
		}
	}
	
	def longitud()
	{
		procesos.size()
	}
	
	def ejecuta(String string,ObserverBusqueda ob)
	{
		//this.inicioFechaEjecucionProceso
		this.init = new Date
		System.out.println(init)
		
		if (this.longitud <= 0)
		{
			//throw new BusinessException("El POI  no se ha encontrado")
			System.out.println("El POI " + string + " no se ha encontrado en la Lista")
			
			this.finFechaEjecucionProceso
			this.fin = new Date
			System.out.println(fin)
			
			return false	
		}
		else
		{
			//for (var int i = 0; i <= longitud(); i++)
			//(procesos.forEach[p|p.ejecutarProceso(nombre,ob)])		
			(procesos.forEach[p|p.hacer(string) p.hacer(ob)])	
		}
		//this.finFechaEjecucionProceso
		this.fin = new Date
		System.out.println(fin)
	}
	
	def inicioFechaEjecucionProceso()
	{
		fechaInicio = new Date
		System.out.println("Fecha y hora de inicio de ejecución del Proceso Múltiple: " + fechaInicio)
	}
	
	def finFechaEjecucionProceso()
	{
		fechaFin = new Date
		System.out.println("Fecha y hora de fin de ejecución del Proceso Múltiple: " + fechaFin)
	}
	
	override ejecutarProceso(String string, ObserverBusqueda ob)
	{
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}

	

	
}

//pruebas

//		if (string== null)
//		{
//			System.out.println("Fecha y hora de fin de ejecución del Proceso Múltiple: " + string)
//		} 
//		else
//		{
//			System.out.println("Fee: " + string)
//		}
//		
//		if (ob== null)
//		{
//			System.out.println("Fecha y hora de l Proceso Múltiple: " + ob)
//		} 
//		else
//		{
//			System.out.println("Feeeeeeeeeeeeeeeeeeeeeer: " + ob)
//		}


//	override ejecutarProceso(String string, ObserverBusqueda ob)
//	{

////		System.out.println("Fecha y hora de fin de ejecución del Proceso Múltiple: " + buscar)
////		System.out.println("Fecha y hora de fin de ejecución del Proceso Múltiple: " + ob)
////		this.ejecuta(buscar,  ob)
////		override hacer(String nom)
////		hacer(ObserverBusqueda ob)
//}
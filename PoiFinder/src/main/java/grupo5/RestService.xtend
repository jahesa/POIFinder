package grupo5

import com.eclipsesource.json.JsonObject

class RestService
{
	JsonObject obj = new JsonObject

	def devolverJson(ProcesoBajaDePOIs proceso)
	{
		obj.add("nombre buscado", proceso.nombreBuscado)
		obj.add("fecha de baja", proceso.fecha.toString)
		System.out.println(obj)
		
	}
}

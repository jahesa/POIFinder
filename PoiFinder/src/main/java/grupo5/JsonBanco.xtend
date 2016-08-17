package grupo5

import java.util.List
import com.eclipsesource.json.Json
import com.eclipsesource.json.JsonArray
import com.eclipsesource.json.JsonObject

class JsonBanco {

	JsonObject jsonBanco = new JsonObject
	JsonArray stringJson = new JsonArray
	

	def String convertToJson(List<ExternalBank>banks){
		
		banks.forEach[bank|
			val JsonObject bancoObj = new JsonObject
			val JsonArray serviceArray = Json.array(bank.servicios)			
			bancoObj.add("name", bank.name)
			.add("x", bank.x)
			.add("y",bank.y)
			.add("Sucursal",bank.sucursal)
			.add("Gerente",bank.gerente)
			.add("Servicios",serviceArray)		
		stringJson.add(bancoObj)]
		jsonBanco.add("",stringJson)
		
		jsonBanco.toString
	}
	
}
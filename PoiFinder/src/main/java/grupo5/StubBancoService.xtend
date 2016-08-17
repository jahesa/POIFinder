package grupo5

import java.util.List
import org.uqbar.geodds.interfacesExternas.BancoService
import java.util.ArrayList
import java.util.stream.Collectors

class StubBancoService implements BancoService{
	
	List<ExternalBank> banks = new ArrayList
	JsonBanco json = new JsonBanco
	

	
	def agregarBanco(ExternalBank unBanco)
	{
		banks.add(unBanco)
	}
	
	
	override String getSucursalesBancosByNombreBanco(String nombreBanco)
	{
		var List<ExternalBank> results = new ArrayList
				for (ExternalBank bank : banks) {
		  		if (bank.getName == nombreBanco)
		    	results.add(bank)
		    }
		json.convertToJson(results)		
	}

	
	def size(){
		banks.size
	}
	
}
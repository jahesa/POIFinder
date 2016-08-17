package grupo5

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class ExternalBank {
	String name
	int x
	int y
	String sucursal
	String gerente
	List<String> servicios
}
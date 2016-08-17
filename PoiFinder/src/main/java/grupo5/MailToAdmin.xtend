package grupo5

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class MailToAdmin {
	String busquedaLarga
	Administrador destinatario

	def send() {
		destinatario.mailBusquedaLarga(busquedaLarga)
	}

}

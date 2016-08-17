package grupo5

class ObserverSendMailAdmin extends ObserverBusqueda {

	override update(Busqueda busqueda) {
		if (busqueda.time > 0.1) {
			var MailToAdmin mail = new MailToAdmin => [
				destinatario = busqueda.usuario.admin
				busquedaLarga = busqueda.nombre
			]

			mail.send()
		}
	}

}

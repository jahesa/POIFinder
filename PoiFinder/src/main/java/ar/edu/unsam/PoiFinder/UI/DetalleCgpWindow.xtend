package ar.edu.unsam.PoiFinder.UI

import grupo5.Cgp
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.WindowOwner

class DetalleCgpWindow  extends DetallePoiWindow {
	
	new(WindowOwner parent, Cgp poi) {
		super(parent, poi)
	}

	
	override createChildPanel(Panel detPanel)
	{
		this.title = "Cgp"
		val cgp = modelObject.poi as Cgp
		new Label(detPanel).text = "Barrio"
		new Label(detPanel).text = cgp.barrio
		new Label(detPanel).text = "Direccion"
		new Label(detPanel).text = cgp.direccion
		new Label(detPanel).text = "Servicios"	
			
		val ser = new Panel(detPanel)
		ser.layout = new VerticalLayout
		cgp.servicio.forEach[s|new Label(ser).text=s]
		new Label(detPanel).text = ""

	}
	
}
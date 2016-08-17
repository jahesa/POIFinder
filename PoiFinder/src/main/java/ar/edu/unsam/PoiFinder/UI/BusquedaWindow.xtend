package ar.edu.unsam.PoiFinder.UI

import grupo5.Iop
import org.uqbar.arena.layout.ColumnLayout
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.widgets.tables.Column
import org.uqbar.arena.widgets.tables.Table
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*



class BusquedaWindow  extends SimpleWindow<BusquedaViewModel>
{
	
	new(WindowOwner parent) {
		super(parent, new BusquedaViewModel)
		//title = "Busquedaaaaaa"
	}
	
	
	override protected addActions(Panel actionsPanel)
	{
		
		new Button (actionsPanel) => [
			
		]
		
			
	}
	
	override protected createFormPanel(Panel mainPanel)
	{
		this.title = "Búsqueda de puntos de interes"

		//VerticalLayout
		
		mainPanel.layout = new VerticalLayout
		
		new Label(mainPanel).text = "Criterio de Busqueda"

		new Label(mainPanel).text = "Nombre"
	
		val searchFormPanel = new Panel(mainPanel).layout =  new ColumnLayout(2)

		new TextBox(searchFormPanel).value <=> "nombreDePoiABuscar"

		new Button(searchFormPanel).caption =  "Buscar"
		

		//ColumnLayout(2)
					
//		mainPanel.layout = new ColumnLayout(2)
//			
//		new TextBox(mainPanel) =>
//		[
//			value <=> "nombreDePoiABuscar"
//		]
		
		new Label(mainPanel).text = "Resultado"
		
		val gridPois = new Table(mainPanel, typeof(Iop)) => [
			height = 200
			numberVisibleRows = 6
			bindItemsToProperty("poisEncontrados")
			bindValueToProperty("poiSeleccionado")
		]

		new Column<Iop>(gridPois) => [
			fixedSize = 150
			title = "Nombre"
			bindContentsToProperty("nombre")
		]
		
		new Column<Iop>(gridPois) => [
			fixedSize = 150
			title = "Direccion"
			bindContentsToProperty("direccion")
		]
		
	}
	
}
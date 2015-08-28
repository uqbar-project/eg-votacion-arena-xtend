package ar.edu.votacion

import org.uqbar.arena.bindings.PropertyAdapter
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Selector
import org.uqbar.arena.widgets.tables.Column
import org.uqbar.arena.widgets.tables.Table
import org.uqbar.arena.windows.MainWindow

class EncuestaWindow extends MainWindow<Encuesta> {
	
	new() {
		super(new Encuesta)
	}
	
	static def void main(String[] arg) {
		new EncuestaWindow().startApplication
	}
	
	override createContents(Panel mainPanel) {
		this.title = "Encuestadora Cachivache"
		
		new Label(mainPanel).text = "Zona de votación"
		new Selector<Zona>(mainPanel) => [
			allowNull = false
			val itemsProperty = bindItemsToProperty("zonas")
			itemsProperty.adapter = 
			    new PropertyAdapter(typeof(Zona), "descripcionLarga")
			bindValueToProperty("zonaVotacion")
		]
		
		new Label(mainPanel).text = "Candidato"
		new Selector<Candidato>(mainPanel) => [
			allowNull = false
			bindItemsToProperty("zonaVotacion.candidatos")
			bindValueToProperty("candidato")
		]
		
		new Button(mainPanel) => [
			caption = "Sumar voto"
			onClick [ | modelObject.sumarVoto ]
		]
		
		createGrillaCandidatos(mainPanel)
	}

	def createGrillaCandidatos(Panel mainPanel) {
		val gridCandidatos = new Table(mainPanel, typeof(Candidato)) => [
			width = 600
			height = 400
			bindItemsToProperty("zonaVotacion.candidatos")
		]
		
		new Column<Candidato>(gridCandidatos) => [
			title = "Candidato"
			bindContentsToProperty("nombre")
		]
		
		new Column<Candidato>(gridCandidatos) => [
			title = "Partido"
			bindContentsToProperty("partido")
		]
		
		new Column<Candidato>(gridCandidatos) => [
			title = "Votos"
			bindContentsToProperty("votos")
		]
	}
	
}
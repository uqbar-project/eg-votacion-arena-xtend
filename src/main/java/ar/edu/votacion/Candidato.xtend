package ar.edu.votacion

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Observable
@Accessors
class Candidato {
	String nombre
	String partido
	int votos
	
	new(String nombre, String partido) {
		this.nombre = nombre
		this.partido = partido
	}
	
	override toString() {
		nombre + " (" + partido + ")"
	}
	
	def sumarVoto() {
		votos++
	}
	
}
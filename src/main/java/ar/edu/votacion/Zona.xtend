package ar.edu.votacion

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Observable
@Accessors
class Zona {
	String descripcion
	List<Candidato> candidatos = newArrayList
	
	new(String descripcion) {
		this.descripcion = descripcion
	}
	
	def void agregarCandidato(String nombre, String partido) {
		candidatos.add(new Candidato(nombre, partido))
	}	
}
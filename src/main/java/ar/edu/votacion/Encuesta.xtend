package ar.edu.votacion

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Accessors
@Observable
class Encuesta {
	Zona zonaVotacion
	Candidato candidato
	RepoZonas repoZonas

	new() {
		repoZonas = RepoZonas.instance
		zonaVotacion = repoZonas.zonas.get(0) 
	}
	
	def getZonas() {
		repoZonas.zonas
	}

	def sumarVoto() {
		candidato.sumarVoto
	}

}

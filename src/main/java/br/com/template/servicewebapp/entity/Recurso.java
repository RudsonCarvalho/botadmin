package br.com.template.servicewebapp.entity;

import br.com.template.servicewebapp.enums.TipoRecurso;

public class Recurso {

	public Recurso() {}
	
	public TipoRecurso tipo;
	
	public RecursoAtendimento recursoAtendimento;
	
	public void definirRecurso(RecursoAtendimento recursoAtendimento) {
		this.recursoAtendimento = recursoAtendimento;
	}
}

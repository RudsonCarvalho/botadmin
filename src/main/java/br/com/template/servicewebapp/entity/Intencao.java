package br.com.template.servicewebapp.entity;

import java.util.List;

public class Intencao extends Base {

	private String nome; //intencao de acao no negocio que o usuario deseja (dominio especifico do negocio)
	
	private List<String> palavrasFrasesChaves; //chaves que levam a esta intencao
	
	private String descricao; //a intencao pode possuir uma descricao
	
	private List<Recurso> recurso; //a intencao leva a um recurso que ajuda o cliente a executar a intencao 
	
}

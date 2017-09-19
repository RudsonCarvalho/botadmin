package br.com.template.servicewebapp.entity;


import java.util.Map;

import javax.persistence.Convert;
import javax.persistence.Entity;

import br.com.template.servicewebapp.repository.PropertieConverter;

@Entity
public class Canal extends Base {

	private String nome; 
	
	private String descricao; 
	
	private String urlLogo; 
	
	@Convert(converter = PropertieConverter.class)
	private Map<String, Object> propriedades;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getUrlLogo() {
		return urlLogo;
	}

	public void setUrlLogo(String urlLogo) {
		this.urlLogo = urlLogo;
	}

	public Map<String, Object> getPropriedades() {
		return propriedades;
	}

	public void setPropriedades(Map<String, Object> propriedades) {
		this.propriedades = propriedades;
	} 
	
}

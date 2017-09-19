package br.com.template.servicewebapp.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Problema extends Base {

	private String code;
	
	private String descricao;
	
	private String systemErrorDesc;
	
	private String local;
	
	private Long userId;
	
	@ManyToOne
	@JoinColumn(name = "idUsuario")
	private Usuario userReport;
	
	private int priority;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getSystemErrorDesc() {
		return systemErrorDesc;
	}

	public void setSystemErrorDesc(String systemErrorDesc) {
		this.systemErrorDesc = systemErrorDesc;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public Usuario getUserReport() {
		return userReport;
	}

	public void setUserReport(Usuario userReport) {
		this.userReport = userReport;
	}

	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	
	
}

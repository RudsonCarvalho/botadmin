package br.com.template.servicewebapp.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity 
public class Bot extends Base{

	
	/**
	 * Nome do bot relacionado ao recurso de atendimento ao qual este bot representa
	 */
	private String nome;
	
	/**
	 * Texto de ajuda para explicar para que serve este bot
	 */
	private String descricao;
	
	/**
	 * Nome de identificacao apresentado ao cliente
	 */
	private String nomeAmigavel;
	
	/**
	 * ambiente do bot
	 */
	private String ambiente;
	
	/**
	 * Indica que este bot sera responsavel por atender um ou mais canais 
	 */
	private boolean master;
	
	/**
	 * Lista de bots que este bot gerencia.
	 */
	@OneToMany
	@JoinColumn(name="slave_fk")
	private List<Bot> slaves;
	
	/**
	 * Canais que este bot atende 
	 */
	@OneToMany
	@JoinColumn(name="bot_fk")
	private List<Canal> canais;
	
	/**
	 * Lista de problema reportados para este bot
	 */
	@OneToMany
	@JoinColumn(name="bot_fk")
	private List<Problema> problemas;

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

	public String getNomeAmigavel() {
		return nomeAmigavel;
	}

	public void setNomeAmigavel(String nomeAmigavel) {
		this.nomeAmigavel = nomeAmigavel;
	}

	public String getAmbiente() {
		return ambiente;
	}

	public void setAmbiente(String ambiente) {
		this.ambiente = ambiente;
	}

	public boolean isMaster() {
		return master;
	}

	public void setMaster(boolean master) {
		this.master = master;
	}

	public List<Bot> getSlaves() {
		return slaves;
	}

	public void setSlaves(List<Bot> slaves) {
		this.slaves = slaves;
	}

	public List<Canal> getCanais() {
		return canais;
	}

	public void setCanais(List<Canal> canais) {
		this.canais = canais;
	}

	public List<Problema> getProblemas() {
		return problemas;
	}

	public void setProblemas(List<Problema> problemas) {
		this.problemas = problemas;
	}
}

/**
 * 
 */
package br.com.template.servicewebapp.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.template.servicewebapp.enums.TemplateFunction;

import br.com.template.servicewebapp.service.IntencoesService;

/**
 * @author Rudson Kiyoshi S. Carvalho
 * @data 2017-06-22
 */
@Controller
public class RecursosController {

	private static final String ITEM_MENU = "recursos";
	private static final String VW_RESOURCE_LISTA = "recursos";
	private static final String VW_RESOURCE_CRUD = "recursoscadastro";

	private final Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private IntencoesService intencoesService;

	@RequestMapping("/recursos")
	public String intencoes(Map<String, Object> model) {

		log.info("Recursos controller");

		UtilityController.setTemplateMenuActive(model, ITEM_MENU);

		return VW_RESOURCE_LISTA;
	}

	@PostMapping("/recursos-cadastrar")
	public String botCadastrar(Map<String, Object> model) {

		log.info("Rercursos controller cadastro");

		UtilityController.setTemplateMenuActive(model, ITEM_MENU);
		UtilityController.setTemplateFunction(model, TemplateFunction.CADASTRAR);

		return VW_RESOURCE_CRUD;
	}

	@PostMapping("/recursos-editar")
	public String botEditar(Map<String, Object> model) {

		log.info("Rercursos controller editar");

		UtilityController.setTemplateMenuActive(model, ITEM_MENU);
		UtilityController.setTemplateFunction(model, TemplateFunction.EDITAR);

		return VW_RESOURCE_CRUD;
	}

	@PostMapping("/recursos-remover")
	public String botRemover(Map<String, Object> model) {

		log.info("Rercursos controller remover");

		UtilityController.setTemplateMenuActive(model, ITEM_MENU);
		UtilityController.setTemplateFunction(model, TemplateFunction.REMOVER);

		return VW_RESOURCE_CRUD;
	}

}

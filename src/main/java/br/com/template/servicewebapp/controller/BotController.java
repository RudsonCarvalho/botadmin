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
import br.com.template.servicewebapp.service.HomeService;
import br.com.template.servicewebapp.service.IntencoesService;

/**
 * @author Rudson Kiyoshi S. Carvalho - IBM
 * @data 2017-06-22
 */
@Controller
public class BotController {

	private static final String ITEM_MENU = "bot";
	private static final String VW_RESOURCE_LISTA = "bots";
	private static final String VW_RESOURCE_CRUD = "botscadastro";

	private final Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private IntencoesService intencoesService;

	@RequestMapping("/bots")
	public String bot(Map<String, Object> model) {

		log.info("Bot controller");

		UtilityController.setTemplateMenuActive(model, ITEM_MENU);
		
		intencoesService.loadHomeMessage();

		return VW_RESOURCE_LISTA;
	}

	@PostMapping("/bots-cadastrar")
	public String botCadastrar(Map<String, Object> model) {

		log.info("Bot controller cadastro");

		model.put("bot", "active");

		UtilityController.setTemplateMenuActive(model, ITEM_MENU);
		UtilityController.setTemplateFunction(model, TemplateFunction.CADASTRAR);

		return VW_RESOURCE_CRUD;
	}

	@PostMapping("/bots-editar")
	public String botEditar(Map<String, Object> model) {

		log.info("Bot controller editar");

		UtilityController.setTemplateMenuActive(model, ITEM_MENU);
		UtilityController.setTemplateFunction(model, TemplateFunction.EDITAR);

		return VW_RESOURCE_CRUD;
	}

	@PostMapping("/bots-remover")
	public String botRemover(Map<String, Object> model) {

		log.info("Bot controller remover");

		UtilityController.setTemplateMenuActive(model, ITEM_MENU);
		UtilityController.setTemplateFunction(model, TemplateFunction.REMOVER);

		return VW_RESOURCE_CRUD;
	}

}

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
public class IntencoesController {
	
		private static final String ITEM_MENU = "intencoes";
		private static final String VW_RESOURCE = "intencoes";
		private static final String VW_RESOURCE_CRUD = "intencoescadastro";
		
	
		private final Logger log = LoggerFactory.getLogger(this.getClass());
				
	
		@Autowired
		private IntencoesService intencoesService;
	
		@RequestMapping("/intencoes")
		public String intencoes(Map<String, Object> model) {
			
			log.info("Intencoes controller");
			
		
			
			
			UtilityController.setTemplateMenuActive(model, ITEM_MENU);
			
			return VW_RESOURCE;
		}
		
		@PostMapping("/intencoes-cadastrar")
		public String botCadastrar(Map<String, Object> model) {
			
			log.info("Intencoes controller cadastro");
			
			UtilityController.setTemplateMenuActive(model, ITEM_MENU);			
			UtilityController.setTemplateFunction(model, TemplateFunction.CADASTRAR);
			
			return VW_RESOURCE_CRUD;
		}
		
		@PostMapping("/intencoes-editar")
		public String botEditar(Map<String, Object> model) {
			
			log.info("Intencoes controller editar");
			
			UtilityController.setTemplateMenuActive(model, ITEM_MENU);			
			UtilityController.setTemplateFunction(model, TemplateFunction.EDITAR);
			
			return VW_RESOURCE_CRUD;
		}
		
		@PostMapping("/intencoes-remover")
		public String botRemover(Map<String, Object> model) {
			
			log.info("Intencoes controller remover");
			
			UtilityController.setTemplateMenuActive(model, ITEM_MENU);			
			UtilityController.setTemplateFunction(model, TemplateFunction.REMOVER);
			
			return VW_RESOURCE_CRUD;
		}
	
}

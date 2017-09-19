/**
 * 
 */
package br.com.template.servicewebapp.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.template.servicewebapp.service.HomeService;

/**
 * @author Rudson Kiyoshi S. Carvalho - IBM
 * @data 2017-06-22
 */
@Controller
public class HomeController {
	
		private final Logger log = LoggerFactory.getLogger(this.getClass());
	
		@Autowired
		private HomeService homeService;
	
		@RequestMapping("/home")
		public String home(Map<String, Object> model) {
			
			log.info("Home controller");
			
			model.put("message", homeService.loadHomeMessage());
			
			model.put("home", "active");						
			return "home";
		}
	
}

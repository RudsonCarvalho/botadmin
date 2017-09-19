package br.com.template.servicewebapp.controller;

import java.util.Map;

import br.com.template.servicewebapp.enums.TemplateFunction;

public final class UtilityController {
	
	private UtilityController() {
		throw new UnsupportedOperationException();
	}
	
	
	public static void setTemplateMenuActive(Map<String, Object> model, String itemName) {
		
		model.put(itemName, "active");
		
	}
	
	public static void setTemplateFunction(Map<String, Object> model, TemplateFunction templateFunction) {
		
		model.put("function", templateFunction.getValue());
		
	}
	
}

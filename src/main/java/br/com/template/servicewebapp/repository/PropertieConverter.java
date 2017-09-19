package br.com.template.servicewebapp.repository;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

import org.springframework.boot.json.GsonJsonParser;

import com.fasterxml.jackson.core.JsonParser;
import com.google.gson.Gson;

@Converter
public class PropertieConverter implements AttributeConverter<Map<String, Object>, String> {

	@Override
	public String convertToDatabaseColumn(Map<String, Object> map) {
		
		
		Gson gson = new Gson();
		String json = gson.toJson(map).toString();
		
		return json;
	}

	@Override
	public Map<String, Object> convertToEntityAttribute(String s) {
		
		Gson gson = new Gson();
		Map<String,Object> map = new HashMap<String,Object>();
		return gson.fromJson(s, map.getClass());
	}

}

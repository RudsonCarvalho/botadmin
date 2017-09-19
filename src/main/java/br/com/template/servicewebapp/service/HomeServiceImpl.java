/**
 * 
 */
package br.com.template.servicewebapp.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import br.com.template.servicewebapp.dao.geral.HomeDAO;

/**
 * @author Rudson Kiyoshi S. Carvalho - IBM
 * @data 2017-06-22
 */
@Service
public class HomeServiceImpl implements HomeService {

	private final Logger log = LoggerFactory.getLogger(this.getClass());
	
	// inject via application.properties
	@Value("${home.message:test}")
	private String message = "Hello World controller";

	@Autowired
	private HomeDAO homeDao;
	
	/*
	 * (non-Javadoc)
	 * 
	 * @see br.com.template.servicewebapp.service.HomeService#loadHomeMessage()
	 */
	public String loadHomeMessage() {

		log.info("init loadHomeMessage");
		
		
		return message + homeDao.loadHomeMessage();
	}

}

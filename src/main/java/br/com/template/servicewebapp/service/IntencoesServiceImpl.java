/**
 * 
 */
package br.com.template.servicewebapp.service;

import java.util.Calendar;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import br.com.template.servicewebapp.dao.geral.HomeDAO;
import br.com.template.servicewebapp.entity.Bot;
import br.com.template.servicewebapp.repository.BotRepository;

/**
 * @author Rudson Kiyoshi S. Carvalho - IBM
 * @data 2017-06-22
 */
@Service
public class IntencoesServiceImpl implements IntencoesService {

	private final Logger log = LoggerFactory.getLogger(this.getClass());
	
	// inject via application.properties
	@Value("${home.message:test}")
	private String message = "Hello World controller";

	@Autowired
	private HomeDAO homeDao;
	
	@Autowired
	private BotRepository botRepository;
	
	/*
	 * (non-Javadoc)
	 * 
	 * @see br.com.template.servicewebapp.service.HomeService#loadHomeMessage()
	 */
	public String loadHomeMessage() {

		log.info("init loadHomeMessage");
		
		Bot bot = new Bot();
		
		bot.setNome("bot Rudson");
		bot.setAmbiente("desenvolvimento");
		bot.setActive(true);
		bot.setDateInsert(Calendar.getInstance().getTime());
		
		botRepository.save(bot);
		
		
		return message + homeDao.loadHomeMessage();
	}

}

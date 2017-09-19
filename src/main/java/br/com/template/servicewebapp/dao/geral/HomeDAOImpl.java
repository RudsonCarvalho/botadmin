/**
 * 
 */
package br.com.template.servicewebapp.dao.geral;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.template.servicewebapp.dao.redis.RedisResource;

/**
 * @author Rudson Kiyoshi S. Carvalho - IBM
 * @data 2017-06-22
 */
@Repository
public class HomeDAOImpl implements HomeDAO {

	private final Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private RedisResource redis;
	
	public String loadHomeMessage() {
		
		log.info("init loadHomeMessage");
		
		redis.setValue("key", " value test redis");
		
		return (String) redis.getValue("key");
	}

}

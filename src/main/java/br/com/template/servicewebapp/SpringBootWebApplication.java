/**
 * 
 */
package br.com.template.servicewebapp;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
@EnableAutoConfiguration
public class SpringBootWebApplication extends SpringBootServletInitializer {

		
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(SpringBootWebApplication.class);
	}

	public static void main(String[] args) {
		
		Logger log = LoggerFactory.getLogger(SpringBootWebApplication.class);		
		log.info("init main SpringApplication run");
				
		SpringApplication.run(SpringBootWebApplication.class, args);
	}
	
	
	
	
	

}

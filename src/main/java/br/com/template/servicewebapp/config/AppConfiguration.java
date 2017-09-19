
package br.com.template.servicewebapp.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.GenericToStringSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import br.com.template.servicewebapp.constants.Constants;
import redis.clients.jedis.JedisPoolConfig;

/**
 * @author Rudson Kiyoshi S. Carvalho
 * @data 2017-06-23
 */
@Configuration
public class AppConfiguration {

	Logger log = LoggerFactory.getLogger(this.getClass());

	/*
	 * @Bean JedisConnectionFactory jedisConnectionFactory() {
	 * log.info("init AppConfiguration jedisConnectionFactory"); return new
	 * JedisConnectionFactory(); }
	 */



	@Bean
	JedisConnectionFactory jedisConnectionFactory() {

		JedisPoolConfig poolConfig = new JedisPoolConfig();
		poolConfig.setMaxTotal(Constants.JEDIS_POOL_MAX_TOTAL);
		poolConfig.setMaxIdle(Constants.JEDIS_POOL_MAX_IDLE);
		poolConfig.setMinIdle(Constants.JEDIS_POOL_MIN_IDLE);

		JedisConnectionFactory jedisConFactory = new JedisConnectionFactory();
		jedisConFactory.setHostName(Constants.JEDIS_HOST_NAME);
		jedisConFactory.setPort(Constants.JEDIS_HOST_PORT);
		jedisConFactory.setPoolConfig(poolConfig);

		return jedisConFactory;
	}

	@Bean
	RedisTemplate<String, Object> redisTemplate() {
		log.info("init AppConfiguration redisTemplate");
		final RedisTemplate<String, Object> template = new RedisTemplate<String, Object>();
		template.setConnectionFactory(jedisConnectionFactory());
		template.setKeySerializer(new StringRedisSerializer());
		template.setHashValueSerializer(new GenericToStringSerializer<Object>(Object.class));
		template.setValueSerializer(new GenericToStringSerializer<Object>(Object.class));

		return template;
	}
}

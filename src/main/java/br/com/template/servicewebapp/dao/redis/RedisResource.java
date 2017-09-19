/**
 * 
 */
package br.com.template.servicewebapp.dao.redis;

import java.util.Map;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import redis.clients.jedis.Jedis;

/**
 * @author Rudson Kiyoshi S. Carvalho - IBM
 * @data 2017-06-23
 */
@Component
public class RedisResource {

	@Autowired
	private RedisTemplate<String, Object> redisTemplate;

	public Object getValue(final String key) {
		return redisTemplate.opsForValue().get(key);
	}

	public void setValue(final String key, final String value) {
		redisTemplate.opsForValue().set(key, value);
	}

	public void setValue(final String key, final String value, long expires) {
		redisTemplate.opsForValue().set(key, value);
		redisTemplate.expire(key, expires, TimeUnit.SECONDS);
	}

	public void setObjectMap(final String key, Map<String, Object> properties) {
		redisTemplate.opsForHash().putAll(key, properties);		
	}
	
	public Object getObjectFromMapValue(final String key, final String propertie) {
		return redisTemplate.opsForHash().get(key, propertie);
	}
	
	static class Maintenance {
		
		@Autowired
		private JedisConnectionFactory jedisConnectionFactory;
		
		public void flusDb() {
			if(!jedisConnectionFactory.getConnection().isClosed())
				jedisConnectionFactory.getConnection().flushDb();
		}
		
		public void flusAll() {
			if(!jedisConnectionFactory.getConnection().isClosed())
				jedisConnectionFactory.getConnection().flushAll();
		}
	}
}

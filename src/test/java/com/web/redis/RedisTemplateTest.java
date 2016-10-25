package com.web.redis;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.BlockJUnit4ClassRunner;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;

import com.web.basetest.UnitTestBase;


@RunWith(BlockJUnit4ClassRunner.class)
public class RedisTemplateTest extends UnitTestBase {
	
	public RedisTemplateTest() {
		super("classpath:spring/spring-dao.xml");
	}

	@Test
	public void testListBooks() {
		
		System.out.println("1 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++value");

		RedisTemplate<String, Object> redisTemplate = super.getBean("redisTemplate");
		
		System.out.println("2 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++value");
		
		ValueOperations<String, Object> valueOper = redisTemplate.opsForValue();
		
		System.out.println("3 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++value");
		
		valueOper.set("key1", "cxing-key1");
		
		System.out.println("4 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++value");
	}

}

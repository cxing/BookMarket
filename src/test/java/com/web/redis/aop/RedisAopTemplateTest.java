package com.web.redis.aop;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.BlockJUnit4ClassRunner;

import com.web.basetest.UnitTestBase;
import com.web.entity.User;

@RunWith(BlockJUnit4ClassRunner.class)
public class RedisAopTemplateTest extends UnitTestBase {

	public RedisAopTemplateTest() {
		super("classpath:spring/spring-dao.xml");
	}

	@Test
	public void testAopRedisTemplate() {
		User u1 = new User("1003", "cxing", "asdfgh", 5, "2016-10-26");
		User u2 = new User("1004", "lukang", "asdfgh", 3, "2016-10-25");
		
		u1.setUname("hello redis u1");
		u2.setUname("hello redis u2");
	}

}

package com.web.redis.aop;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.BlockJUnit4ClassRunner;

import com.web.basetest.UnitTestBase;
import com.web.service.UserServeice;

@RunWith(BlockJUnit4ClassRunner.class)
public class RedisAopTemplateTest extends UnitTestBase {

	public RedisAopTemplateTest() {
		super("classpath:spring/spring-dao.xml");
	}

	@Test
	public void testAopAnnotation() {
		UserServeice userServeice = super.getBean("userServeice");
		
		System.out.println(userServeice.sayHello("1", "liyang222"));
	}

}

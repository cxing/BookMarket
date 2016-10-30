package com.web.redis.aop;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.BlockJUnit4ClassRunner;

import com.web.basetest.UnitTestBase;
import com.web.entity.User;
import com.web.service.UserServeice;

@RunWith(BlockJUnit4ClassRunner.class)
public class RedisAopTemplateTest extends UnitTestBase {

	public RedisAopTemplateTest() {
		super("classpath:spring/spring-dao.xml");
	}

	//@Test
	public void testAopAnnotation() {
		UserServeice userServeice = super.getBean("userServeice");

		System.out.println(userServeice.sayHello("1", "liyang222"));
	}

	@Test
	public void testHashAopAnnotation() {
		UserServeice userServeice = super.getBean("userServeice");
		List<User> users = userServeice.getUsers();

		for (User user : users) {
			System.out.println("user : " + user.getUname() + " and " + user.getUpwd());
		}
	}

}

package com.web.redis;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.BlockJUnit4ClassRunner;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;

import com.web.basetest.UnitTestBase;
import com.web.entity.User;


@RunWith(BlockJUnit4ClassRunner.class)
public class RedisTemplateTest extends UnitTestBase {
	
	public RedisTemplateTest() {
		super("classpath:spring/spring-dao.xml");
	}

	@Test
	public void testStringRedisTemplate() {
		RedisTemplate<String, String> stringRedisTemplate = super.getBean("stringRedisTemplate");

		ValueOperations<String, String> valueOper = stringRedisTemplate.opsForValue();

		valueOper.set("key2", "cxing-key2");
		System.out.println(valueOper.get("key2"));
	}

	@Test
	public void testRedisTemplate() {
		RedisTemplate<String, User> redisTemplate = super.getBean("redisTemplate");

		//其中key采取了StringRedisSerializer
        //其中value采取JdkSerializationRedisSerializer
		ValueOperations<String, User> valueOper = redisTemplate.opsForValue();

		User u1 = new User("1001", "zhangsan", "123456789", 5, "2016-10-26");
		User u2 = new User("1002", "wangwu", "123456789", 3, "2016-10-25");

		valueOper.set("u1234", u1);
        valueOper.set("u2345", u2);

        System.out.println(valueOper.get("u1234").getUname());
        System.out.println(valueOper.get("u2345").getUname());
	}

	@Test
	public void testHashRedisTemplate() {
		RedisTemplate<String, Object> redisTemplate = super.getBean("redisTemplate");

		//其中key采取了StringRedisSerializer
        //其中value采取JdkSerializationRedisSerializer
		HashOperations<String, String, Object> valueOper = redisTemplate.opsForHash();

		User u1 = new User("1001", "zhangsan", "123456789", 5, "2016-10-26");
		User u2 = new User("1002", "wangwu", "123456789", 3, "2016-10-25");

		valueOper.put("userTable", "u1", u1);
		valueOper.put("userTable", "u2", u2);

		Map<String, Object> map = valueOper.entries("userTable");

		//System.out.println(map.get("u1").getUname());
        //System.out.println(map.get("u2").getUname());

		User u11 = (User) map.get("u1");
		User u22 = (User) map.get("u2");

		System.out.println(u11.getUname());
        System.out.println(u22.getUname());
	}

	@Test
	public void testHashListRedisTemplate() {
		RedisTemplate<String, List<User>> redisTemplate = super.getBean("redisTemplate");

		//其中key采取了StringRedisSerializer
        //其中value采取JdkSerializationRedisSerializer
		HashOperations<String, String, List<User>> valueOper = redisTemplate.opsForHash();

		User u1 = new User("1001", "zhangsan", "123456789", 5, "2016-10-26");
		User u2 = new User("1002", "wangwu", "123456789", 3, "2016-10-25");

		List<User> list = new ArrayList<User>();
		list.add(u1);
		list.add(u2);

		valueOper.put("userTable", "u1", list);

		Map<String, List<User>> map = valueOper.entries("userTable");

		for (List<User> value : map.values()) {
			for (User user : value)
				System.out.println(user.getUname() + " and " + user.getUpwd());
		}
	}

}

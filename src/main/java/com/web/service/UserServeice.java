package com.web.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.web.entity.User;
import com.web.redis.annotation.Cacheable;
import com.web.redis.annotation.HashCacheable;

@Service
public class UserServeice {

	public UserServeice() {
	}
	
	@Cacheable(expire=3600)
	public String sayHello(String id, String name){
		System.out.println(name + " " + id +" say hello" );
		return name + " " + id + " say hello!";
	}

	@HashCacheable(key="userService")
	public List<User> getUsers() {
		List<User> users = new ArrayList<User>();

		User u1 = new User("1001", "zhangsan", "123456789", 5, "2016-10-26");
		User u2 = new User("1002", "wangwu", "123456789", 3, "2016-10-25");
		User u3 = new User("1003", "lukang", "156456dsgvf", 1, "2016-10-30");

		users.add(u1);
		users.add(u2);
		users.add(u3);
		System.out.println("getUsers called");
		return users;
	}
}

package com.web.service;

import org.springframework.stereotype.Service;

import com.web.redis.annotation.Cacheable;

@Service
public class UserServeice {

	public UserServeice() {
	}
	
	@Cacheable(expire=3600)
	public String sayHello(String id, String name){
		System.out.println(name + " " + id +" say hello" );
		return name + " " + id + " say hello!";
	}
}

package com.web.redis.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import org.springframework.stereotype.Component;

/**
*
* @描述: 启用缓存注解、在方法上添加该注解表示将该方法纳入到缓存管理中
* @时间: 2016年6月12日 上午10:53:19
* @作者：  邢长旭
* @版本：V1.0.0
*
*/
@Component
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.METHOD})
public @interface HashCacheable {

	public enum KeyMode{
		DEFAULT, //添加@cachekey的参数才加入key后缀中
		ALL;     //所有参数都加入key后缀
	}

	public String key() default "";

	public KeyMode keyMode() default KeyMode.DEFAULT;

	public int expire() default 0;


}

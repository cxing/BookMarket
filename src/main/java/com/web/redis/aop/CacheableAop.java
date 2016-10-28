package com.web.redis.aop;

import java.lang.reflect.Method;
import java.util.concurrent.TimeUnit;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Component;

import com.web.redis.annotation.Cacheable;

@Aspect
@Component
public class CacheableAop {

	@Autowired
	private RedisTemplate<String, String> stringredisTemplate;

	@Around("@annotation(com.web.redis.annotation.Cacheable)")
	public Object cached(final ProceedingJoinPoint pjp) throws Throwable {
		String key = getCacheKey(pjp);

		ValueOperations<String, String> valueOper = stringredisTemplate.opsForValue();
		Object value = valueOper.get(key); // 从缓存获取Key

		// 如果有数据则直接返回
		if (value != null) {
			return value;
		}

		value = pjp.proceed();

		MethodSignature methodSignature = (MethodSignature) pjp.getSignature();
		Method method = methodSignature.getMethod();
		final Cacheable cacheable = method.getAnnotation(Cacheable.class);

		if (cacheable.expire() <= 0) {
			valueOper.set(key, value.toString());
		} else {
			valueOper.set(key, value.toString(), cacheable.expire(), TimeUnit.SECONDS);
		}
		return null;
	}

	/**
	 * 获取缓存Key值
	 *
	 * @param pjp
	 * @return
	 */
	private String getCacheKey(ProceedingJoinPoint pjp) {
		StringBuilder buf = new StringBuilder();
		buf.append(pjp.getSignature().getDeclaringTypeName()).append(".").append(pjp.getSignature().getName());

		Object[] args = pjp.getArgs();

		for (Object arg : args) {
			if (arg instanceof String) {
				buf.append(".").append(arg);
			} else if (arg instanceof Integer || arg instanceof Long || arg instanceof Short) {
				buf.append(".").append(arg.toString());
			} else if (arg instanceof Boolean) {
				buf.append(".").append(arg.toString());
			}
		}

		return buf.toString();
	}
}

package com.web.redis.aop;

import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import com.web.redis.annotation.Cacheable;

@Aspect
@Component
public class CacheableHashAop {
	@Autowired
	private RedisTemplate<String, List<Object>> redisTemplate;

	@Around("@annotation(com.web.redis.annotation.HashCacheable)")
	public Object hashCached(final ProceedingJoinPoint pjp) throws Throwable {
		String key = getCacheKey(pjp);

		MethodSignature methodSignature = (MethodSignature) pjp.getSignature();
		Method method = methodSignature.getMethod();
		final Cacheable cacheable = method.getAnnotation(Cacheable.class);

		// 其中key采取了StringRedisSerializer
		// 其中value采取JdkSerializationRedisSerializer
		HashOperations<String, String, List<Object>> valueOper = redisTemplate.opsForHash();
		Map<String, List<Object>> map = valueOper.entries(cacheable.key().toString());

		if (!map.isEmpty()) {
			return map.get(key);
		}

		@SuppressWarnings("unchecked")
		List<Object> value = (List<Object>) pjp.proceed();

		System.out.println("cacheable.key = " + cacheable.key());
		valueOper.put(cacheable.key(), key, value);

		return value;
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

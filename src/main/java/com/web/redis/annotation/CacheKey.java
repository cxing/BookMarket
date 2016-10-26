package com.web.redis.annotation;

import java.lang.annotation.*;

@Retention(RetentionPolicy.RUNTIME)  
@Target({ElementType.PARAMETER})
public @interface CacheKey {

}

# BookMarket
Study Spring + Mybits + SpringMVC + Redis + Njnix

2016-10-30
增加完成数据库redis 缓存功能，使用了AOP 动态代理自定义注解的方法

自定义注解：<br>
1.HashCacheable.java  //实现每张表使用一个Hash key 以实现数据库与缓存同步的效果<br>
2.Cacheable.java      //普通字符串缓存实现<br>

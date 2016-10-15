package com.web.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.BlockJUnit4ClassRunner;
import com.web.basetest.UnitTestBase;
import com.web.entity.Category;

@RunWith(BlockJUnit4ClassRunner.class)
public class CategoryDaoTest extends UnitTestBase {

	public CategoryDaoTest() {
		super("classpath:spring/spring-dao.xml");
	}
	
	@Test
	public void testQueryCategory() throws Exception {	
		
		//通过工厂得到sqlSessipn 	
		SqlSessionFactory sqlSessionFactory = super.getBean("sqlSessionFactory");

		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		//创建CategoryDao对象
		CategoryDao categoryDao = sqlSession.getMapper(CategoryDao.class);
		
		List<Category> categorys = categoryDao.queryAllCategory(0, 100);
		
		for (Category categorylist : categorys) {
			System.out.println(categorylist.toString());
		}

		sqlSession.close();
	}
}

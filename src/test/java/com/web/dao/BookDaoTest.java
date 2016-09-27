package com.web.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.BlockJUnit4ClassRunner;
import com.web.entity.Book;
import com.web.basetest.UnitTestBase;

@RunWith(BlockJUnit4ClassRunner.class)
public class BookDaoTest extends UnitTestBase {
	
	public BookDaoTest() {
		super("classpath:spring/spring-dao.xml");
	}

	@Test
	public void testQueryById() throws Exception {	
		
		//通过工厂得到sqlSessipn 	
		SqlSessionFactory sqlSessionFactory = super.getBean("sqlSessionFactory");

		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		//创建BookDao对象
		BookDao bookDao = sqlSession.getMapper(BookDao.class);
		
		Book book = bookDao.queryById(1008);
		System.out.println(book);
//		//通过sqlSession操作数据库
//		Book book = sqlSession.selectOne("com.web.dao.BookDao.queryById", (long)1003);
//		System.out.println(book.toString());
//		
//		//释放会话资源
		sqlSession.close();
	}
	
//	@Test
//	public void testInsertBook() throws Exception {
//		
//		SqlSessionFactory sqlSessionFactory = super.getBean("sqlSessionFactory");
//		//通过工厂得到sqlSessipn
//		SqlSession sqlSession = sqlSessionFactory.openSession();
//		
//		//通过sqlSession操作数据库
//		Book book = new Book();
//		book.setName("Java Coding");
//		book.setNumber(45);
//
//		sqlSession.insert("com.web.dao.BookDao.insertBook", book);
//		sqlSession.commit();
//		
//		System.out.println("getBookId : " + book.getBookId());
//		
//		//释放会话资源
//		sqlSession.close();
//	}

}

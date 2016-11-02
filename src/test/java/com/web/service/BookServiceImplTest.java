package com.web.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.BlockJUnit4ClassRunner;
import com.web.basetest.UnitTestBase;
import com.web.entity.Book;


@RunWith(BlockJUnit4ClassRunner.class)
public class BookServiceImplTest extends UnitTestBase {
	
	public BookServiceImplTest() {
		super("classpath:spring/spring-*.xml");
	}

	//@Test
	public void testListBooks() throws Exception {
		BookService bookService = super.getBean("bookServiceImpl");
		List<Book> books = bookService.getList();
		
		for (Book book : books) {
			System.out.println(book.toString());
		}
	}

	@Test
	public void testPageListBooks() throws Exception {
		BookService bookService = super.getBean("bookServiceImpl");
		List<Book> books = bookService.getPageList(1, 5);

		for (Book book : books) {
			System.out.println(book.toString());
		}
	}
}

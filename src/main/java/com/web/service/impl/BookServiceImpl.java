package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.web.dao.BookDao;
import com.web.entity.Book;
import com.web.service.BookService;


@Service
public class BookServiceImpl implements BookService {

	// 注入Service依赖
	@Autowired
	private BookDao bookDao;


	public Book getById(long bookId) {
		return bookDao.queryById(bookId);
	}

	public List<Book> getList() {
		return bookDao.queryAll(1, 1000);
	}
}

package com.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.entity.Book;
import com.web.service.BookService;

@Controller
@RequestMapping("/book")
public class BookController {
	
	//private static final Logger logger = LoggerFactory.getLogger("BookController");

	@Autowired
	private BookService bookService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	private String books(Model model) {
		List<Book> books = bookService.getList();
		for (Book book : books) {
			System.out.println(book.toString());
		}
		model.addAttribute("books", books);
		// list.jsp + model = ModelAndView
		return "book/list";
	}
	
	@RequestMapping(value = "/session", method = RequestMethod.GET)
	private String session(Model model) {
		return "session-page1";
	}
	
	@RequestMapping(value = "/session2", method = RequestMethod.GET)
	private String session2(Model model) {
		return "session-page2";
	}
}

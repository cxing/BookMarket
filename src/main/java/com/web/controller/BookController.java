package com.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.entity.Book;
import com.web.entity.Category;
import com.web.service.BookService;
import com.web.service.CategoryService;

@Controller
@RequestMapping("/book")
public class BookController {
	
	//private static final Logger logger = LoggerFactory.getLogger("BookController");

	@Autowired
	private BookService bookService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	private String books(Model model) {
		List<Book> books = bookService.getList();
		model.addAttribute("books", books);
		// list.jsp + model = ModelAndView
		return "book/list";
	}

	@RequestMapping(value = "/paging", method = RequestMethod.GET)
	private String paging(Model model) {
		return "book/paging";
	}

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	private String category(Model model) {
		List<Category> categorys = categoryService.getCategoryList();
		for (Category category : categorys) {
			System.out.println(category.toString());
		}
		model.addAttribute("categorys", categorys);
		return "book/category";
	}

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	private String main(Model model) {
		List<Book> books = bookService.getList();
		model.addAttribute("books", books);
		return "main";
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

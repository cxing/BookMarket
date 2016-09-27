package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/book")
public class BookController {
	
	//private static final Logger logger = LoggerFactory.getLogger("BookController");

	//@Autowired
	//private BookService bookService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	private String list(Model model) {
		//List<Book> list = bookService.getList();
		//model.addAttribute("list", list);
		// list.jsp + model = ModelAndView
		//logger.error("now {}" , "starting server");  
		return "book/list";// WEB-INF/jsp/"list".jsp
	}
}

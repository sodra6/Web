package com.sht.jao.gym_zip.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sht.jao.gym_zip.service.BookService;
import com.sht.jao.gym_zip.vo.Book;

@Controller
public class BookController {
	
	//컨트롤러는 서비스에 의존적이다.
	public BookService bookService;
	
	//의존성 주입을 위해서는, setter주입, 생성자 주입이 있다.(편한거쓰면됨)
	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	
	@RequestMapping(value = "/index.joa", method = RequestMethod.GET)
	public void index(Model model) {
		
		model.addAttribute("list", bookService.loadList());
	}
	
	@RequestMapping(value ="/deleteItem.joa" , method = RequestMethod.GET)
	public String delete(int no) {
		
		bookService.delete(no);
		
		return "redirect:/index.joa";
	}
	
	@RequestMapping(value = "/register.joa" , method = RequestMethod.GET)
	public String registerForm() {
		
		return "/registerBook";
	}
	
	@RequestMapping(value = "/register.joa", method = RequestMethod.POST)
	public String asdf(Book book) {
		
		bookService.add(book);
		
		return "redirect:/index.joa";
	}
	
	
}

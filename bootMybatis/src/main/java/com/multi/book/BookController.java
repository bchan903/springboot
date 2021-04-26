package com.multi.book;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class BookController {
	
	@Autowired
	BookService service;
	
	//시작시 index 페이지 열기
	
//	@RequestMapping("/")
//	public String viewIndex() {
//		return "index";
//	}
//	
	@RequestMapping("/book/bookListView")
	public String viewBookList(Model model) {
		ArrayList<BookVO> bookList=service.BookList();
		model.addAttribute("bookList",bookList);
		return "book/bookListView"; 
	}
	
	@RequestMapping("/book/bookDetailView/{bookNo}")
	public String detailViewBook(@PathVariable String bookNo,Model model) {
		BookVO book = service.BookDetailView(bookNo);
		model.addAttribute("book", book);
		return "book/bookDetailView"; 
	}
	
		@RequestMapping("/book/bookNewForm")
		public String bookNewForm() {
			return "book/bookNewForm";
		}
	
	@RequestMapping("/book/insert")
	public String insertBook(BookVO book) {
		service.insertBook(book);
		return "redirect:./bookListView";
	}
	
	
	@RequestMapping("/book/updateForm/{bookNo}")
	public String updateBookForm(@PathVariable String bookNo, Model model) {
		BookVO book = service.BookDetailView(bookNo);
		model.addAttribute("book", book);
		return "book/bookUpdateForm"; 
	}
	
	@RequestMapping("/book/update")
	public String updateBook(BookVO book) {
		service.updateBook(book);
		return "redirect:./bookListView";
	}
	
	@RequestMapping("/book/delete/{bookNo}")
	public String deleteBook(@PathVariable String bookNo) {
		service.deleteBook(bookNo);
		return "redirect:./bookListView";
	}
	
	
	
}

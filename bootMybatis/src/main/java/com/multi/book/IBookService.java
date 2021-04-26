package com.multi.book;

import java.util.ArrayList;

import com.multi.book.BookVO;

public interface IBookService {
	
	
	ArrayList<BookVO> BookList();
	void insertBook(BookVO book);
	void updateBook(BookVO book);
	void deleteBook(String bookNo);
	BookVO BookDetailView(String bookNo);
		

}

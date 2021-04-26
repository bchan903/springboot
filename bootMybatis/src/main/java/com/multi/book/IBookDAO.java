package com.multi.book;

import java.util.ArrayList;


public interface IBookDAO {
	
	public ArrayList<BookVO> BookList(); //이름 일치해야함
	public void insertBook(BookVO book);
	public void updateBook(BookVO book);
	public void deleteBook(String bookNo);
	public BookVO BookDetailView(String bookNo);

}

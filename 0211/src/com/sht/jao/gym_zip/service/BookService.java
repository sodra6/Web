package com.sht.jao.gym_zip.service;

import java.util.List;

import com.sht.jao.gym_zip.vo.Book;

public interface BookService {

	public List<Book> loadList();
	
	public int delete(int no);
	
	public int add(Book book);
	
}

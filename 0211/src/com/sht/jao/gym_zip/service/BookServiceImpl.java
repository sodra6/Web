package com.sht.jao.gym_zip.service;

import java.util.List;

import com.sht.jao.gym_zip.dao.BookDAO;
import com.sht.jao.gym_zip.vo.Book;

public class BookServiceImpl implements BookService {

	private BookDAO bookDAO;
	
	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}
	
	@Override
	public List<Book> loadList() {
		return bookDAO.selectList();
	}
	
	@Override
	public int delete(int no) {
		return bookDAO.delete(no);
	}
	
	@Override
	public int add(Book book) {
		return bookDAO.insert(book);
	}
}

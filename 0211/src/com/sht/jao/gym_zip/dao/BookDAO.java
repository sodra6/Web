package com.sht.jao.gym_zip.dao;

import java.util.List;

import com.sht.jao.gym_zip.vo.Book;

public interface BookDAO {

	public List<Book> selectList();
	
	public int delete(int no);
	
	public int insert(Book book);
}

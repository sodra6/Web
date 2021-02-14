package com.sht.jao.gym_zip.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.sht.jao.gym_zip.vo.Book;

public class BookDAOImpl implements BookDAO{

	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<Book> selectList() {
		return session.selectList("books.selectList");
	}
	
	@Override
	public int delete(int no) {
		return session.delete("books.delete", no);
	}
	
	@Override
	public int insert(Book book) {
		return session.insert("books.insert", book);
	}
	
}

package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import util.SqlSessionUtil;
import vo.Book;
import vo.PageVo;

public class BooksDAO {

	public static List<Book> selectList(PageVo pageVo) {
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			return session.selectList("books.selectList", pageVo);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		
		return null;
	}
	
	public static int selectTotal() {
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			return session.selectOne("books.selectTotal");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		
		return 0;
	}
}

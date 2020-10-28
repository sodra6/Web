package com.bmj.phonebook.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bmj.phonebook.util.SqlSessionUtil;
import com.bmj.phonebook.vo.PageVo;
import com.bmj.phonebook.vo.Phonebook;

public class PhonebookDAO {
	
	public static int update(Phonebook phonebook) {
		
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			return session.update("phonebook.update", phonebook);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		
		return 0;
	}
	
	public static int selectTotal() {
		
		SqlSession session = null;
		
		try {
			session=SqlSessionUtil.getSession();
			return session.selectOne("phonebook.selectTotal");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		
		
		return 0;
	}
	
	public static int delete(int no) {
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			return session.delete("phonebook.delete", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
 		}
		
		
		return 0;
	}
	
	public static Phonebook selectOne(int no) {
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			return session.selectOne("phonebook.selectOne",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		
		
		return null;
	}
	
	public static List<Phonebook> selecList(PageVo pageVo){
		SqlSession session= null;
		
		try {
			session=SqlSessionUtil.getSession();
			return session.selectList("phonebook.selecList", pageVo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		
		return null;
	}

	public static int insert(Phonebook phonebook) {
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			return session.insert("phonebook.insert", phonebook);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		
		return 0;
	}
	
}

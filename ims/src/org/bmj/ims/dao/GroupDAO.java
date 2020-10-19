package org.bmj.ims.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.bmj.ims.util.SqlSessionUtil;
import org.bmj.ims.vo.Group;

public class GroupDAO {
	
	public static List<Group> selectList() {
		List<Group> groups = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			groups = session.selectList("groups.selectList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		
		return groups;
	}
	
	public static int insert(Group group) {
		int result=0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("groups.insert",group);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		
		return result;
	}

}

package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import util.SqlSessionUtil;
import vo.Group;

public class GroupDAO {

	
	public static List<Group> selectList(){
		SqlSession session = null;
				
		try {
			session = SqlSessionUtil.getSession();
			return session.selectList("group.selectList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		
		
		return null;
	}
}

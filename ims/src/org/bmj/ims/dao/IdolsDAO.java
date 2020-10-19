package org.bmj.ims.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.bmj.ims.util.SqlSessionUtil;
import org.bmj.ims.vo.Idol;

public class IdolsDAO {
	
	public static List<Idol> selectList() {
		List<Idol> idols = null;
		SqlSession session = null;
		
		try {
			session =SqlSessionUtil.getSession();
			idols = session.selectList("idols.selectList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		
		return idols;
	}
	
}

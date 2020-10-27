<%@page import="org.bmj.ims.vo.Group"%>
<%@page import="org.bmj.ims.dao.GroupDAO"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//post한글인코딩
	request.setCharacterEncoding("UTF-8");

	//파라미터 받기
	String groupIdStr = request.getParameter("groupId");//넘어오는 파라미터 명을 써줘야한다
	String name = request.getParameter("name");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String date = request.getParameter("date");
	//형변환
	int groupId = Integer.parseInt(groupIdStr);
	Date debutDate =  Date.valueOf(year+"-"+month+"-"+date);

	Group group = new Group(groupId,name,debutDate);
	
	//update구문 수행
	GroupDAO.update(group);
	
	
	//groupDetail.jsp로 리다이렉트
	response.sendRedirect("/groupDetail.jsp?groupId="+groupId);


%>
<%@page import="org.bmj.ims.dao.IdolsDAO"%>
<%@page import="org.bmj.ims.dao.GroupDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//넘어온 파라미트 받음
	//String groupIdStr= request.getParameter("groupId");

	//int groupId = Integer.parseInt(groupIdStr); 
	//삭제
	//int result = GroupDAO.delete(groupId);

	//out.println(result);
	//groupList.jsp로 리다이렉트
	//response.sendRedirect("/groupList.jsp");
	
	String idolIdStr = request.getParameter("idolId");
	int idolId = Integer.parseInt(idolIdStr);
	
	int result = IdolsDAO.delete(idolId);
	
	response.sendRedirect("/idolList.jsp");
	
	
%>
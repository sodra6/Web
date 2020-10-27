<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


	Date debutDate = Date.valueOf("2013-6-13");
	//추상클래스이기 때문에 new Calendar() 안됨
	Calendar cal = Calendar.getInstance();//지금이순간 값
	
	cal.setTime(debutDate);
	//년,월,일 등등 얻어오는 메서드 : get(인자)
	
%>
년 : <%=cal.get(Calendar.YEAR) %>
월 : <%=cal.get(Calendar.MONTH)+1 %>
일 : <%=cal.get(Calendar.DATE) %>
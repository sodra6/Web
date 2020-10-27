<%@page import="org.bmj.ims.vo.Idol"%>
<%@page import="org.bmj.ims.dao.IdolsDAO"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String idolIdStr = request.getParameter("idolId");
	String name = request.getParameter("name");
	String heightStr = request.getParameter("height");
	String weightStr = request.getParameter("weight");
	String genderStr = request.getParameter("gender");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String date = request.getParameter("date");
	String groupIdStr= request.getParameter("groupId");
	
	//형변환
	int idolId = Integer.parseInt(idolIdStr);
	double height = Double.parseDouble(heightStr);
	double weight = Double.parseDouble(weightStr);
	Date birthDate = Date.valueOf(year+"-"+month+"-"+date);
	int groupId = Integer.parseInt(groupIdStr);
	char gender = genderStr.charAt(0);
	
	Idol idol = new Idol(idolId, name, height, weight, birthDate, gender, groupId);
	
	IdolsDAO.update(idol);
	
	response.sendRedirect("/idolDetail.jsp?idolId="+idolId);
	


%>
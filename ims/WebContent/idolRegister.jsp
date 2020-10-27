<%@page import="org.bmj.ims.dao.IdolsDAO"%>
<%@page import="org.bmj.ims.vo.Idol"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");


	String name = request.getParameter("name");
	String heightStr = request.getParameter("height");
	String weightStr = request.getParameter("weight");
	String genderStr = request.getParameter("gender");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String date = request.getParameter("date");
	String groupIdStr = request.getParameter("groupId");
	
	double height = Double.parseDouble(heightStr);
	double weight = Double.parseDouble(weightStr);
	char gender = genderStr.charAt(0);
	Date birthDate = Date.valueOf(year+"-"+month+"-"+date);
	int groupId = Integer.parseInt(groupIdStr);
	
	Idol idol = new Idol();
	idol.setName(name);
	idol.setHeight(height);
	idol.setBirthDate(birthDate);
	idol.setGender(gender);
	idol.setWeight(weight);
	idol.setGroupId(groupId);
	
	int result = IdolsDAO.insert(idol);
	//등록페이지는 유저에게 보여줄 컨텐츠가 없음.(이런걸 none-view라고 함)->redirect view
	
	//System.out.println("등록할 예쩡");
	
	//이 페이지에서 insert를 시킨후 groupList.jsp로 이동(redirect)
	response.sendRedirect("/idolDetail.jsp?idolId="+idol.getIdolId());
	
%>

이름 : <%=name %><br/>
키 : <%=height %><br/>
몸무게 : <%=weight %><br/>
성별 : <%=gender %><br/>
년 : <%=year %><br/>
월 : <%=month %><br/>
일 : <%=date %><br/>
그룹번호 : <%=groupId %><br/>

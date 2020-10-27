<%@page import="java.sql.Date"%>
<%@page import="org.bmj.ims.vo.Group"%>
<%@page import="org.bmj.ims.dao.GroupDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");// 넘어오는값 한글 깨질때 쓰는 코드
	
	String name = request.getParameter("name");// String name = scan.nextLine(); 이랑 똑같음
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String date = request.getParameter("date");
	
	
	Group group = new Group();
	group.setName(name);
	group.setDebutDate(Date.valueOf(year+"-"+month+"-"+date));
	
	
	int result = GroupDAO.insert(group);

	//등록페이지는 유저에게 보여줄 컨텐츠가 없음.(이런걸 none-view라고 함)->redirect view
	
	//System.out.println("등록할 예쩡");
	
	//이 페이지에서 insert를 시킨후 groupList.jsp로 이동(redirect)
	response.sendRedirect("/groupDetail.jsp?groupId="+group.getGroupId());
%>
결과
이름 : <%= name %><br/>
년 : <%=year %>
월 : <%=month %>
일 : <%=date %>
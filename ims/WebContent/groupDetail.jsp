<%@page import="org.bmj.ims.dao.IdolsDAO"%>
<%@page import="org.bmj.ims.vo.Idol"%>
<%@page import="java.util.List"%>
<%@page import="org.bmj.ims.vo.Group"%>
<%@page import="org.bmj.ims.dao.GroupDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String groupIdStr = request.getParameter("groupId");
	int groupId = Integer.parseInt(groupIdStr);
	Group group = GroupDAO.selectOne(groupId);

	List<Idol> idols = IdolsDAO.selectListByGroupId(groupId);

	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title><%=group.getName() %>의 상세 | AIMS</title>
<link rel="stylesheet" href="/css/reset.css"/>
<link rel="stylesheet" href="/css/all.min.css"/>
<link rel="stylesheet" href="/css/notosanskr.css"/>
<link rel="stylesheet" href="/css/defalt.css"/>
<style>
	dt,dd{
		float:left;
	}
	dt{
		clear:both;
	}
	dl{
		overflow: hidden;
	}

</style>
</head>
<body>
	<h1><a href="/index.jsp"><i class="fas fa-book"></i> Awesome Idol Management Service </a></h1>
	<h2><%=group.getName() %></h2>
	<dl>
		<dt>번호</dt>
		<dd><%=group.getGroupId() %></dd>
		<dt>그룹명</dt>
		<dd><%=group.getName() %></dd>
		<dt>데뷔일</dt>
		<dd>
		<%=group.getDebutYear() %>년
		<%=group.getDebutMonth() %>월
		<%=group.getDebutDay() %>일
		
		</dd>
	</dl>
	<% if(idols.isEmpty()) { %>
	<h2>목록 없음</h2>
	<a class="btn" href="/groupDelete.jsp?groupId=<%=groupId %>">삭제</a>
	<%} else{%>
		<h2>아이돌 목록</h2>
	<ul>
		<%for(Idol idol	:idols	){ %>
		<li><a href="/idolDetail.jsp?idolId=<%= idol.getIdolId()%>"><%=idol.getIdolId()%>) <%=idol.getName() %></a></li>
		<%} %>
	</ul>
	<%} %>
	<a class="btn" href="groupUpdateForm.jsp?groupId=<%=groupId %>"><i class= "fas fa-wrench"></i>수정</a>
	<a class="btn" href="/groupList.jsp">목록으로</a>
</body>
</html>
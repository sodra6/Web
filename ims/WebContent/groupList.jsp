<%@page import="org.bmj.ims.dao.GroupDAO"%>
<%@page import="org.bmj.ims.vo.Group"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	List<Group> groups = GroupDAO.selectList();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet" href="/css/reset.css"/>
<link rel="stylesheet" href="/css/all.min.css"/>
<link rel="stylesheet" href="/css/notosanskr.css"/>

<style>
	body{
		font-family: "Noto Sans KR",sans-serif;
	}
</style>
<meta charset="UTF-8">
<title>그룹목록 | AIMS</title>
</head>
<body>
	<h1><a href="/groupList.jsp"><i class="fas fa-user-friends"></i> 그룹목록</a></h1>
	<ul>
	<% for(Group group:groups) { %>
		<li><a href=""><%= group.getGroupId() %>)<%= group.getName() %></a></li>
	<%} %>
	</ul>
	<a href="/groupRegisterForm.jsp"><i class="fas fa-sign-in-alt"></i>그룹 등록</a>
	<a href="/index.jsp"><i class="fas fa-home"></i>처음으로</a>
</body>
</html>
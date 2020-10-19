<%@page import="org.bmj.ims.dao.IdolsDAO"%>
<%@page import="org.bmj.ims.vo.Idol"%>
<%@page import="org.bmj.ims.dao.GroupDAO"%>
<%@page import="org.bmj.ims.vo.Group"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	List<Idol> idols = IdolsDAO.selectList();
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
	<h1><a href="/idolList.jsp"><i class="fas fa-user"></i> 아이돌목록</a></h1>
	<ul>
	<% for(Idol idol:idols) { %>
		<li><a href=""><%= idol.getIdolId() %>) <%= idol.getName()+" / 키 : "+idol.getHeight()+" 몸무게 : "+idol.getWeight() %></a></li>
	<%} %>
	</ul>
	<a href="/idolRegisterForm.jsp"><i class="fas fa-sign-in-alt"></i>아이돌 등록</a>
	<a href="/index.jsp"><i class="fas fa-home"></i>처음으로</a>
</body>
</html>
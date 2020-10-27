<%@page import="util.PaginateUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int pageNo = 1; //현제 페이지수
	int total = 100;//전체 게시물수
	int numPage = 5;//한페이지당 보여질 게시물수
	int numBlock = 3;//보여질 목록의 갯수
	String url="/pageUtil.jsp";//페이지 주소
	String param = "page=";//라마미터
	
	String pageStr= request.getParameter("page");
	try{
		pageNo= Integer.parseInt(pageStr);
	}catch(Exception e){
		
	}

	String paginate= PaginateUtil.getPaginate(pageNo, total, numPage, numBlock, url, param);
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/reset.css" />
<link rel="stylesheet" href="/css/all.min.css" />
<link rel="stylesheet" href="/css/paginate.css" />
</head>
<body>
<h1>PaginateUtil 사용</h1>
<%=paginate %>

</body>
</html>
<%@page import="dao.groupsDAO"%>
<%@page import="vo.Book"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<Book> books = groupsDAO.selectList();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>책 목록</title>
<style>

	table{
		border-collapse: collapse;
	}
	th,td{
		border: 1px solid #424242;
	}
</style>
</head>
<body>
	<h1>책목록</h1>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작가</th>
				<th>페이지수</th>
				<th>출판일</th>
			</tr>
		</thead>
		<tbody>
		<% for(Book book:books) {%>
			<tr>
				<th><%=book.getNo() %></th>
				<th><%=book.getTitle() %></th>
				<th><%=book.getAuthor() %></th>
				<th><%=book.getPageNum() %></th>
				<th><%=book.getPublicationDate() %></th>
			</tr>
			<%}//for end %>
		</tbody>
	</table>
</body>
</html>
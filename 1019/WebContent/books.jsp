<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Class.forName("oracle.jdbc.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "test";
	String password = "1111";
	Connection con = DriverManager.getConnection(url, user, password);
	Statement stmt = con.createStatement();
	String sql = "SELECT no, title, author,"+
	"page_num,publication_date "+
	"FROM books ORDER BY 1";
	ResultSet rs = stmt.executeQuery(sql);

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
		<% while(rs.next()) { %>
			<tr>
				<th><%= rs.getInt(1) %></th>
				<th><%= rs.getString(2) %></th>
				<th><%= rs.getString(3) %></th>
				<th><%= rs.getInt(4) %></th>
				<th><%= rs.getDate(5) %></th>
			</tr>
			<%} %>
		</tbody>
	</table>
</body>
</html>
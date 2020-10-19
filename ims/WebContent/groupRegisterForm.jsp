<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>그룹 등록</title>
</head>
<body>
	<h1><i class="fas fa-sign-in-alt"></i>그룹 등록</h1>
	<form action="/groupRegister.jsp" method="post" >
		<p>
			<label>
			그룹명 <input name="name" placeholder="그룹명"/>
			</label>
		</p>
		<p>
			<strong>데뷔일</strong>
			<select name="year">
				<% for(int i =2020	;i>1900	; i--) { %>
				<option><%=i %></option>
				<%} %>
			</select>년
			<select name="month">
				<%for(int i=1;i<13;i++	) {%>
				<option><%= i %></option>
				<%} %>
			</select>월
			<select name="date">
			<%for(int i=1; i<32	;i++) {%>
				<option><%=i %></option>
				<%} %>
			</select>일
		</p>
		<p>
			<button>그룹등록</button>
		</p>
	</form>
	<a href="/groupList.jsp">목록으로</a>
</body>
</html>
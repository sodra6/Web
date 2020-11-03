<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		attribute(속성) : name과 value로 이루어져있음
	*/

	Object loginUser = session.getAttribute("loginUser");

%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>!아멋웹!</title>
</head>
<body>
<h1>아주 멋진 웹서비스</h1>
<%if(loginUser==null) {%>
<h2>로그인</h2>
<form action="/login.do" method="post">
	<fieldset>
		<legend>로그인</legend>
		<p>
		<input name="id" placeholder="아이디"/>
		</p>
		<p>
		<input name="password" placeholder="비밀번호" type="password"/>
		</p>
		<button>로그인</button>
	</fieldset>
</form>
<%}else { %>
<h2><%=loginUser %>님 환영합니다.</h2>
<a href="/logout.do">로그아웃</a>
<%} %>

</body>
</html>
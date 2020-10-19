<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Hello JSP</title>
</head>
<body>
	<h1>헬로 제이에스피<% out.print(a); %></h1>
</body>
</html>
<%! int a = 5; //멤버필드%>
<% int a = 10; //지역변수(_jspService메서드)%>
<% int b = 100;
	String name = "RM";
%>
<!-- HTML주석  -->
<%-- JSP 주석 --%>
<%-- 
JSP란?
	- Java Server Page의 줄임말
	- HTML코드에 자바코드를 삽입
	- 맵핑이 필요없음(파일명.jsp가 주소)
	- JSP도 사실 서블릿
	- hello.jsp는 hello_jsp.java파일로 변경
	- hello_jsp.class파일로 컴파일
	- 첫번쨰 호출때 객체 생성
	
JSP문법 암기 필수!

1) 지시어 : <%@	%>, @이 지시어, 중요도 5
	- page(자동완성으로 활용), include, taglib
	- java 파일로 변경시 이곳저곳으로 감
2) 선언문 : <%! %>, !이 선언문, 중요도 1
	- 클래스 영역(멤버 자리)
3) 스크립트릿 : <% %>, 중요도 100
	- _jspService 메서드 안에 선언
4) 표현식  : <%= %>
	- _jspService메서드 
	- 출력이 빈번하기때문에 편함

--%>

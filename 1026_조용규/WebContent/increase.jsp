<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>방문자수 조사 페이지</title>
<%@include file="/WEB-INF/template/link.jsp" %>
<style>

	#content h2 {
		line-height:350px;
		font-size:60px;
		font-weight: 900;
	}

</style>
</head>
<body>
<%@ include file="/WEB-INF/template/header.jsp" %>


<div id="content">
<%! int count;%>
    
    <%
        count++;
        application.setAttribute("conutValue", count);
   %>

<h2><%=count %>번째 방문입니다.</h2>
</div>
<%@ include file="/WEB-INF/template/footer.jsp" %>
	
</body>
</html>
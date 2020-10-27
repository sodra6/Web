<%@page import="org.bmj.ims.dao.IdolsDAO"%>
<%@page import="org.bmj.ims.vo.Idol"%>
<%@page import="java.util.List"%>
<%@page import="org.bmj.ims.vo.Group"%>
<%@page import="org.bmj.ims.dao.GroupDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//String groupIdStr = request.getParameter("groupId");
	//int groupId = Integer.parseInt(groupIdStr);
	//Group group = GroupDAO.selectOne(groupId);
	//List<Idol> idols = IdolsDAO.selectListByGroupId(groupId);
	
	String idolIdStr = request.getParameter("idolId");
	int idolId = Integer.parseInt(idolIdStr);
	Idol idol = IdolsDAO.selectOne(idolId);
	
	
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title><%=idol.getName() %>의 상세 | AIMS</title>
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
	<h2><%=idol.getName() %>의 상세페이지</h2>
	<dl>
		<dt>번호</dt>
		<dd><%=idol.getIdolId() %></dd>
		<dt>이름</dt>
		<dd><%=idol.getName()%></dd>
		<dt>키</dt>
		<dd><%=idol.getHeight() %></dd>
		<dt>몸무게</dt>
		<dd><%=idol.getWeight() %></dd>
		<dt>생일년월</dt>
		<dd>
		<%=idol.getBirthYear() %>년
		<%=idol.getBirthMonth()%>월
		<%=idol.getBirthDay() %>일
		</dd>
		<dt>성별</dt>
		<dd><%=idol.getGenderIcon() %></dd>
		<dt>그룹명</dt>
		<dd><a href="/groupDetail.jsp?groupId=<%=idol.getGroupId() %>"><%=idol.getGroupName() %></a></dd>
		
	</dl>

	<a class="btn" href="/idolDelete.jsp?idolId=<%=idol.getIdolId() %>">삭제</a>
		<a class="btn" href="/idolUpdateForm.jsp?idolId=<%=idol.getIdolId() %>">수정</a>
	<a class="btn" href="/idolList.jsp">목록으로</a>
</body>
</html>
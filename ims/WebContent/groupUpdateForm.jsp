<%@page import="org.bmj.ims.dao.GroupDAO"%>
<%@page import="org.bmj.ims.vo.Group"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet" href="/css/reset.css"/>
<link rel="stylesheet" href="/css/all.min.css"/>
<link rel="stylesheet" href="/css/notosanskr.css"/>
<link rel="stylesheet" href="/css/defalt.css"/>
<%


	String groupIdStr = request.getParameter("groupId");
	int groupId=Integer.parseInt(groupIdStr);
	Group group = GroupDAO.selectOne(groupId);
%>

<meta charset="UTF-8">
<title>그룹 수정</title>
</head>
<body>
	<h1><a href="/index.jsp"><i class="fas fa-book"></i> Awesome Idol Management Service </a></h1>
	<h2><i class="fas fa-sign-in-alt"></i>그룹 수정</h2>
	<form action="/groupUpdate.jsp" method="post" >
	<input type="hidden" name="groupId" value="<%= groupId%>" />
	<fieldset>
	<legend>그룹수정</legend>
		<p>
			<label>
			그룹명 <input name="name" value=<%=group.getName() %> placeholder="그룹명"/>
			</label>
		</p>
		<p>
			<strong>데뷔일</strong>
			<select name="year">
				<% for(int i =2020	;i>1900	; i--) { %>
				<option <% if(i==group.getDebutYear()) {%>selected <%} %>><%=i %></option>
				<%} %>
			</select>년
			<select name="month">
				<%for(int i=1;i<13;i++	) {%>
				<option <%if(i==group.getDebutMonth()) {%>selected <%} %>><%= i %></option>
				<%} %>
			</select>월
			<select name="date">
			<%for(int i=1; i<32	;i++) {%>
				<option <%if(i==group.getDebutDay()) {%> selected<%} %>><%=i %></option>
				<%} %>
			</select>일
		</p>
		<p>
			<button class="btn"><i class="fas fa-book"></i>그룹수정</button>
		</p>
		</fieldset>
	</form>
	<a class="btn" href="/groupList.jsp">목록으로</a>
</body>
</html>
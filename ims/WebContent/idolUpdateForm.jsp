<%@page import="org.bmj.ims.dao.IdolsDAO"%>
<%@page import="org.bmj.ims.vo.Idol"%>
<%@page import="org.bmj.ims.dao.GroupDAO"%>
<%@page import="org.bmj.ims.vo.Group"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	List<Group> groups=GroupDAO.selectList();

	String idolIdStr = request.getParameter("idolId");
	int idolId = Integer.parseInt(idolIdStr);
	Idol idol = IdolsDAO.selectOne(idolId);


%>   
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet" href="/css/reset.css"/>
<link rel="stylesheet" href="/css/all.min.css"/>
<link rel="stylesheet" href="/css/notosanskr.css"/>
<link rel="stylesheet" href="/css/defalt.css"/>

<style>
	/* [속성] */
	input[type=radio] {
		display: none;
	}
	input[type=radio]+label{
		display: inline-block;
		padding: 8px 12px;
		border:1px solid #424242;
		border-radius:12px;
		cursor: pointer;
	}
	infput[type=radio]+label:hover{
		box-shadow: 0 12px 15px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0 rgba(0, 0, 0, 0.19);
	}
	input[type=radio]:checked+label{
		background: #424242;
		color:#fff;
	}
	
</style>

<meta charset="UTF-8">
<title>아이돌 수정</title>
</head>
<body>
	<h1><a href="/index.jsp"><i class="fas fa-book"></i> Awesome Idol Management Service </a></h1>
	<h2><i class="fas fa-sign-in-alt"></i>아이돌 수정</h2>
	<form action="/idolUpdate.jsp" method="post" >
	<input name="idolId" type="hidden" value="<%=idolId %>"/>
	<fieldset>
	<legend>아이돌수정</legend>
		<p>
			<label>
			이름 <input name="name" 
			readonly
			value="<%=idol.getName() %>"
			placeholder="이름"/>
			</label>
		</p>
		<p>
			<label>
			키 <input name="height" 
			value="<%=idol.getHeight() %>"
			placeholder="<%= idol.getHeight()%>"/>
			</label>
		</p>
		<p>
			<label>
			몸무게 <input name="weight" 
			value="<%=idol.getWeight() %>"
			placeholder="<%=idol.getWeight() %>"/>
			</label>
		</p>
		<p>
			<input id="male" 
			<%if(idol.getGender()=='M'){ %>checked<%} %>
			type="radio" name="gender" value="M" /><label for="male"><i class="fas fa-male"></i>남자</label>
			<input id="female" <%if(idol.getGender()=='F'){ %>checked<%} %> type="radio" name="gender" value="F" /><label for="female"><i class="fas fa-female"></i>여자</label>
		</p>
		<p>
			<strong>그룹 선택</strong>
			<% for(	Group group	:groups	) {%>
			<input value="<%= group.getGroupId() %>" id="group<%=group.getGroupId() %>" 
			type="radio" name="groupId" <% if(group.getGroupId()==idol.getGroupId()) { %>checked<% }%>/>
			<label for="group<%=group.getGroupId() %>"><%= group.getName() %></label>
			<%} %>
		</p>
		<p>
			<strong>생년월일</strong>
			<select name="year">
				<% for(int i =2020	;i>1900	; i--) { %>
				<option <%if(i==idol.getBirthYear()) {%>selected<%} %>><%=i %></option>
				<%} %>
			</select>년
			<select name="month">
				<%for(int i=1;i<13;i++	) {%>
				<option <%if(i==idol.getBirthMonth()) {%> selected <%} %>><%= i %></option>
				<%} %>
			</select>월
			<select name="date">
			<%for(int i=1; i<32	;i++) {%>
				<option <%if(i==idol.getBirthDay()) { %>selected<%} %>><%=i %></option>
				<%} %>
			</select>일
		</p>
		<p>
			<button class="btn"><i class="fas fa-book"></i>아이돌 수정</button>
		</p>
		</fieldset>
	</form>
	<a class="btn" href="/idolList.jsp">목록으로</a>
</body>
</html>
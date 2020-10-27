<%@page import="org.bmj.ims.dao.GroupDAO"%>
<%@page import="org.bmj.ims.vo.Group"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	List<Group> groups=GroupDAO.selectList();


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
<title>아이돌 등록</title>
</head>
<body>
	<h1><a href="/index.jsp"><i class="fas fa-book"></i> Awesome Idol Management Service </a></h1>
	<h2><i class="fas fa-sign-in-alt"></i>아이돌 등록</h2>
	<form action="/idolRegister.jsp" method="post" >
	<fieldset>
	<legend>아이돌 등록</legend>
		<p>
			<label>
			이름 <input name="name" placeholder="이름"/>
			</label>
		</p>
		<p>
			<label>
			키 <input name="height" placeholder="키"/>
			</label>
		</p>
		<p>
			<label>
			몸무게 <input name="weight" placeholder="몸무게"/>
			</label>
		</p>
		<p>
			<input id="male" type="radio" name="gender" value="M" /><label for="male"><i class="fas fa-male"></i>남자</label>
			<input id="female" type="radio" name="gender" value="F" /><label for="female"><i class="fas fa-female"></i>여자</label>
		</p>
		<p>
			<strong>그룹 선택</strong>
			<% for(	Group group	:groups	) {%>
			<input value="<%= group.getGroupId() %>" id="group<%=group.getGroupId() %>" type="radio" name="groupId"/>
			<label for="group<%=group.getGroupId() %>"><%= group.getName() %></label>
			<%} %>
		</p>
		<p>
			<strong>생년월일</strong>
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
			<button class="btn"><i class="fas fa-book"></i>아이돌 등록</button>
		</p>
		</fieldset>
	</form>
	<a class="btn" href="/groupList.jsp">목록으로</a>
</body>
</html>
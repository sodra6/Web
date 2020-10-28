<%@page import="com.bmj.phonebook.servlet.UpdaterServlet"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.bmj.phonebook.vo.PageVo"%>
<%@page import="com.bmj.phonebook.dao.PhonebookDAO"%>
<%@page import="com.bmj.phonebook.vo.Phonebook"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String noStr = request.getParameter("no");
	int no = Integer.parseInt(noStr);
	Phonebook phonebook = PhonebookDAO.selectOne(no);
	
	int year = Calendar.getInstance().get(Calendar.YEAR);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>전화번호 입력페이지</title>
	<%@ include file="/WEB-INF/template/link.jsp" %>
	<link rel="stylesheet" href="css/form.css"/>
</head>
<body>
	<%@ include file="/WEB-INF/template/header.jsp" %>
<div id="content">
	<h2><i class="fas fa-mobile-alt"></i><%=phonebook.getName() %> 전화번호 수정</h2>
	<div id="formBox">
		<form id="form" method="post" action="/UpdaterServlet.bmj">
			<input type="hidden" name="no" value="<%= no%>">
			<fieldset>
				<legend class="screen_out">전화번호 입력폼</legend>
				<div class="row">
					<label for="name">이 름</label>
					<input id="name" name="name"
						   title="2~6글자 한글과 숫자로만 입력해주세요."
						   placeholder="이름입력" 
						   readOnly
						   value="<%=phonebook.getName() %>"/>
				</div>
				<div class="row">
					<label for="phone">전화번호</label>
					<span id="phone">
				<select id="phone1" name="phone1"
						title="반드시 선택해주세요.">
						<option <%if(phonebook.getPhone().substring(0,3).equals("010")) {%> selected <%} %>><%="010" %></option>
						<option <%if(phonebook.getPhone().substring(0,3).equals("011")) {%> selected <%} %>><%="011" %></option>
						<option <%if(phonebook.getPhone().substring(0,3).equals("016")) {%> selected <%} %>><%="016" %></option>
						<option <%if(phonebook.getPhone().substring(0,3).equals("017")) {%> selected <%} %>><%="017" %></option>
						<option <%if(phonebook.getPhone().substring(0,3).equals("019")) {%> selected <%} %>><%="019" %></option>
				</select>
				-
				<input id="phone2" name="phone2" 
					   value="<%if(phonebook.getPhone().length()==11) {%><%=phonebook.getPhone().substring(3, 7) %><%} else{%><%=phonebook.getPhone().substring(3, 6) %><%} %>"
					   title="3~4글자 숫자만 입력해주세요." class="digit4"
					   placeholder="숫자입력" size="4" maxlength="4" />
				-
				<input id="phone3" name="phone3"
					   value="<%if(phonebook.getPhone().length()==11) {%><%=phonebook.getPhone().substring(7, 11) %><%} else{%><%=phonebook.getPhone().substring(6, 10) %><%} %>"
					   title="4글자 숫자만 입력해주세요." class="digit4"
					   placeholder="숫자입력" size="4"	maxlength="4" />
				</span>
				</div>
				<div class="row">
					<label for="age">생년월일</label><span id="age">
				<select id="year" name="year">
					<%for(int i=year;i>1900	;i--) {%>
					<option <%if(i==phonebook.getBirthYear()) {%> selected <%} %>><%=i %></option>
					<%} %>
				</select><em>년</em>
				<select id="month" name="month">
				<%for(int i =1;i<13	;i++) {%>
					<option value="<%=i %>" <%if(i==phonebook.getBirthMonth()) {%> selected <%} %>><%=i %></option>
					<%} %>
				</select><em>월</em>
				<select id="date" name="date">
				<%for(int i =1	;i<31;i++) {%>
					<option value="<%= i%>" <%if(i==phonebook.getBirthDay()) {%> selected <%} %>><%= i%></option>
				<%} %>	
				</select><em>일</em>
				</span>
				</div>
				<div class="row">
					<label for="gender">성 별</label>
					<span id="gender">
				<input <%if(phonebook.getGender()=='F') {%>checked <%} %> type="radio" id="female" name="gender" value="F"/>
				<label for="female"><i class="fa fa-female"></i> 여 자</label>
				<input type="radio" <%if(phonebook.getGender()=='M') {%>checked <%} %> id="male" name="gender" value="M"/>
				<label for="male"><i class="fa fa-male" ></i> 남 자</label>
				</span>
				</div>
				<div class="box_btn">
					<button type="submit" class="btn">
						<i class="fas fa-pencil-alt"></i> 전화번호 수정
					</button>
					<button type="reset" class="btn">
						<i class="fas fa-redo-alt"></i> 리 셋
					</button>
					<a href="/index.jsp" class="btn"><i class="fa fa-arrow-left"></i> 전화번호부로</a>
				</div>
			</fieldset>
		</form>
	</div><!-- //formBox  -->
</div><!-- //content  -->
<div id="footer">
	<div class="aux">
		<div id="policy">
			<h4 class="screen_out">정책 및 약관</h4>
			<ul>
				<li><a href="">회사소개</a></li><!--
			 --><li><a href="">광고</a></li><!--
			 --><li><a href="">검색등록</a></li><!--
			 --><li><a href="">제휴제안</a></li><!--
			 --><li><a href="">이용약관</a></li><!--
			 --><li><a href=""><strong>개인정보이용약관</strong></a></li><!--
			 --><li><a href="">청소년보호정책</a></li><!--
			 --><li><a href="">고객센터</a></li>
			</ul>
		</div><!-- //policy  -->
		<address>&copy; 2020 <a href="">bmj.com</a></address>
	</div><!-- //.aux-->
</div><!-- //footer  -->
</body>
</html>
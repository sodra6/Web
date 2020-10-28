<%@page import="java.util.Calendar"%>
<%@page import="com.bmj.phonebook.util.PaginateUtil"%>
<%@page import="com.bmj.phonebook.vo.PageVo"%>
<%@page import="com.bmj.phonebook.dao.PhonebookDAO"%>
<%@page import="com.bmj.phonebook.vo.Phonebook"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String pageNoStr = request.getParameter("page");
	int pageNo = 1;
	
	try{
		pageNo=Integer.parseInt(pageNoStr);
	}catch(Exception e){
		
	}
	int numPage=3;
	

	int total= PhonebookDAO.selectTotal();
	int numBlock=3;
	String url="/index.jsp";
	String param="page=";
	
	String pagiante = PaginateUtil.getPaginate(pageNo, total, numPage, numBlock, url, param);
	PageVo pageVo = new PageVo(pageNo, numPage);

	List<Phonebook> phonebooks = PhonebookDAO.selecList(pageVo);
	
	Calendar cal = Calendar.getInstance();
	
	int year = cal.get(Calendar.YEAR);
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>아주 멋진 전화번호부</title>
	<%@ include file="/WEB-INF/template/link.jsp" %>
	<link rel="stylesheet" href="css/index.css"/>
	<link rel="stylesheet" href="css/paginate.css" />
</head>
<body>
<%@ include file="/WEB-INF/template/header.jsp" %>

<div id="content">
<h2><i class="fas fa-clipboard-list"></i> 전화번호 목록</h2>
<div id="phoneBox">
<table border="1">
<caption class="screen_out">전화번호표</caption>
<colgroup>
	<col id="name"/>
	<col id="phone"/>
	<col id="gender"/>
	<col id="age"/>
	<col id="update"/>
	<col id="delete"/>
</colgroup>
<thead>
<tr>
	<th>이 름</th>
	<th>전화번호</th>
	<th>성 별</th>
	<th>나 이</th>
	<th>수 정</th>
	<th>삭 제</th>
</tr>
</thead>
<tbody>
<%if(phonebooks.isEmpty()) {%>
<tr>
	<td class="no_data" colspan="6"><i class="far fa-flushed"></i> 아직 전화번호가 없습니다.</td>
</tr>
<%} %>
<% for(Phonebook phonebook : phonebooks) { %>
<tr>
	<th><%=phonebook.getName() %></th>
	<td><i class="fas fa-mobile"></i>
	<% if(phonebook.getPhone().length()==11) {%>
	<%=phonebook.getPhone().subSequence(0, 3)+"-"+phonebook.getPhone().subSequence(3, 7)+"-"+phonebook.getPhone().subSequence(7, 11)%>
	<%} else{%><%= phonebook.getPhone().subSequence(0, 3)+"-"+phonebook.getPhone().subSequence(3, 6)+"-"+phonebook.getPhone().subSequence(6, 10) %>
	<%}%>
	</td>
	<td>
	<%=phonebook.getGenderIcon()%><%=phonebook.getGender()=='F'?"여자":"남자"%> </td>
  <td title="<%=phonebook.getBirthDate()%>"><%=year-phonebook.getBirthYear()+1%>살</td>
	<td>
		<a href="updateForm.jsp?no=<%=phonebook.getNo() %>" class="btn update"><i class="fa fa-wrench"></i> 수정</a>
	</td>
	<td>
		<a href="/DeleteServlet.bmj?no=<%=phonebook.getNo() %>" class="btn delete"><i class="far fa-trash-alt"></i> 삭제</a>
	</td>
</tr>
<%} %>
</tbody>
<tfoot>
<tr>
	<td class="box_btn" colspan="7">
	<%=pagiante %>
	</td>
</tr>
<tr>
	<td class="box_btn" colspan="7">
		<a href="/registerForm.jsp" class="btn"><i class="fas fa-pencil-alt"></i> 전화번호 작성</a>
	</td>
</tr>
</tfoot>
</table>
</div>
</div><!-- //content  -->
<%@ include file="/WEB-INF/template/footer.jsp" %>

</body>
</html>
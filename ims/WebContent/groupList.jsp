<%@page import="org.bmj.ims.vo.PageVo"%>
<%@page import="org.bmj.ims.util.PaginateUtil"%>
<%@page import="org.bmj.ims.dao.GroupDAO"%>
<%@page import="org.bmj.ims.vo.Group"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	

	String pageNoStr = request.getParameter("page");
	int pageNo = 1;
	
	try{
		pageNo = Integer.parseInt(pageNoStr);
 	}catch(Exception e) {

 	}
	
	int total=GroupDAO.selectTotal();
	int numPage=5;
	int numBlock=3;
	String url="/groupList.jsp";
	String param="page=";
	
	PageVo pageVo = new PageVo(pageNo, numPage);

	List<Group> groups = GroupDAO.selectList(pageVo);
	


	String paginate = PaginateUtil.getPaginate(pageNo, total, numPage, numBlock, url, param);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet" href="/css/reset.css"/>
<link rel="stylesheet" href="/css/all.min.css"/>
<link rel="stylesheet" href="/css/notosanskr.css"/>
<link rel="stylesheet" href="/css/defalt.css"/>
<link rel="stylesheet" href="/css/paginate.css"/>
<style>
	.paginate{
		width:200px;
		height:100px;
	}

</style>

<meta charset="UTF-8">
<title>그룹목록 | AIMS</title>
</head>
<body>
	<h1><a href="/index.jsp"><i class="fas fa-book"></i> Awesome Idol Management Service </a></h1>
	<h2><a href="/groupList.jsp"><i class="fas fa-user-friends"></i> 그룹목록</a></h2>
	<ul>
	<% for(Group group:groups) { %>
		<li><a href="/groupDetail.jsp?groupId=<%=group.getGroupId()%>"><%= group.getGroupId() %>)<%= group.getName() %></a></li>
	<%} %>
	</ul>
	<%=paginate %>
	<a class="btn" href="/groupRegisterForm.jsp"><i class="fas fa-sign-in-alt"></i>그룹 등록</a>
	<a class="btn" href="/index.jsp"><i class="fas fa-home"></i>처음으로</a>
</body>
</html>
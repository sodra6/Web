<%@page import="org.bmj.ims.vo.PageVo"%>
<%@page import="org.bmj.ims.util.PaginateUtil"%>
<%@page import="org.bmj.ims.dao.IdolsDAO"%>
<%@page import="org.bmj.ims.vo.Idol"%>
<%@page import="org.bmj.ims.dao.GroupDAO"%>
<%@page import="org.bmj.ims.vo.Group"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	


	String noStr = request.getParameter("page");
	int pageNo = 1;
	
	try{
		pageNo = Integer.parseInt(noStr);//받은 페이지를 int로 변환
		
	}catch(Exception e){
		
	}
	
	int total = IdolsDAO.selectTotal();//총 자료갯수
	int numPage = 6;
	int numBlock = 3;
	String url = "/idolList.jsp";
	String param = "page=";
	
	PageVo pageVo = new PageVo(pageNo, numPage);

	List<Idol> idols = IdolsDAO.selectList(pageVo);
	
	String paginate = PaginateUtil.getPaginate(pageNo, total, numPage, numBlock, url, param);
			
			
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet" href="/css/reset.css"/>
<link rel="stylesheet" href="/css/all.min.css"/>
<link rel="stylesheet" href="/css/notosanskr.css"/>
<link rel="stylesheet" href="/css/defalt.css"/>
<link rel="stylesheet" href="css/paginate.css"/>

<style>
	#idolList{
		margin:0;
		height:275px
		list-style: none;
		padding: 10px;
		width:642px;
		overflow:hidden;
	}

	#idolList li{
		width: 204px;
		height: 64px;
		float: left;
		margin:5px
	}
	#idolList>li>a{
		width:200px;
		height:60px;
		border:2px solid #424242;
		display:block;
		font-weight:700;
		text-align: center;
		line-height: 60px;
		text-decoration: none;
		transition:.2s ease;
		position: relative;
	}
	#idolList>li>a:hover{
		box-shadow: 0 12px 15px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0 rgba(0, 0, 0, 0.19);
	}
	.ribon{
	width:30px;
	height: 30px;
	color:#fff;
	background:#F50057;
	border: 1px soild #F50057;
	position: absolute;
	font-size:15px;
	line-height: 30px;
	left:8px;
	top:-6px;
	}
	.ribon::before{
		content:"";
		position: absolute;
		border-top: 10px solid #F50057;
		border-right: 15px solid transparent;
		left:0;
		bottom: -10px;
	}
	.ribon::after{
		content:"";
		position: absolute;
		border-top: 10px solid #F50057;
		border-left: 15px solid transparent;
		right:0;
		bottom:-10px;
	}
</style>
<meta charset="UTF-8">
<title>그룹목록 | AIMS</title>
</head>
<body>
	<h1><a href="/index.jsp"><i class="fas fa-book"></i> Awesome Idol Management Service </a></h1>
	<h2><a href="/idolList.jsp"><i class="fas fa-user"></i> 아이돌목록</a></h2>
	<ul id="idolList">
	<% for(Idol idol:idols) { %>
		<li><a href="/idolDetail.jsp?idolId=<%=idol.getIdolId()%>"><span class="ribon"><%= idol.getIdolId() %></span> <%= idol.getName() %></a></li>
	<%} %>
	</ul>
	<%= paginate %>
	<a class="btn" href="/idolRegisterForm.jsp"><i class="fas fa-sign-in-alt"></i>아이돌 등록</a>
	<a class="btn" href="/index.jsp"><i class="fas fa-home"></i>처음으로</a>
</body>
</html>
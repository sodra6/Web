<%@page import="util.PaginateUtil"%>
<%@page import="vo.PageVo"%>
<%@page import="dao.BooksDAO"%>
<%@page import="vo.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//no를 파라미터로 받아서 페이징을 표시
	String noStr = request.getParameter("page");
	int pageNo=1;
		
	try{
		pageNo= Integer.parseInt(noStr);
	}catch(Exception e){
		
	}//try~catch
	
	//한페이지당 보여질 게시물 수
	int numPage = 9;
	

	PageVo pageVo = new PageVo(pageNo, numPage);

	List<Book> books = BooksDAO.selectList(pageVo);
	
	int total= BooksDAO.selectTotal();
	int numBlock= 5;
	String url = "index.jsp";
	String param = "page=";
		
		
		
	String paginate = PaginateUtil.getPaginate(pageNo, total, numPage, numBlock, url, param);

%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>책목록</title>
<link rel="stylesheet" href="/css/reset.css" />
<link rel="stylesheet" href="/css/all.min.css" />
<link rel="stylesheet" href="/css/paginate.css" />

<style>
	.paginate{
		width:300px
	}

</style>
</head>
<body>
	<h1>책목록</h1>
		<ul>
		<%for(Book book	: books	) {%>
			<li><%=book.getNo() %>) <%=book.getTitle() %></li>
		<%} %>
		</ul>
		<%=paginate %>
</body>
</html>
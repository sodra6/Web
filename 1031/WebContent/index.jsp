<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>책갈피</title>
</head>
<body>
<h1>책갈피</h1>
<table border="1">
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작가</th>
			<th>페이지수</th>
			<th>출판일</th>
		</tr>
	</thead>
	<tbody>

	</tbody>
<script type="text/template" id="bookTmpl">
<@_.each(bookList,function(book){@>
		<tr>
			<td><@= book.no @></td>
			<th><@= book.title @></th>
			<td><@= book.author @></td>
			<td><@= book.pageNum @></td>
			<td><@= moment(book.publicationDate).format("YYYY년 MM월 DD일") @></td>
		</tr>
<@}) @>
</script>

</table>
<script src="/js/jquery.js"></script>
<script src="/js/underscore-min.js"></script>
<script src="/js/moment-with-locales.js"></script>
<script>
_.templateSettings = {interpolate: /\<\@\=(.+?)\@\>/gim,evaluate: /\<\@([\s\S]+?)\@\>/gim,escape: /\<\@\-(.+?)\@\>/gim};

const bookTmpl = _.template($("#bookTmpl").html());

	function getBookList() {
		$.ajax({
			url:"/book.bmj",
			dataType:"json",
			type:"GET",
			error: function(){
				alert("멍충이!")
			},
			success: function(books){
				
				$("tbody").html(bookTmpl({bookList:books}))
			}
		})
		
	}//getBookList() end
	
	getBookList();
</script>
</body>
</html>
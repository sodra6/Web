<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책방</title>
</head>
<body>

	<h1>내 서재</h1>
	<h2><a href="/register.joa">추가하기</a></h2>

	<table border=1>
		<thead>
			<tr>
			<td>번호</td>
			<td>제목</td>
			<td>저자</td>
			<td>페이지</td>
			<td>출판일</td>
			<td></td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="book">
				<tr>
					<td>${book.no }</td>
					<td>${book.title }</td>
					<td>${book.author }</td>
					<td>${book.pageNum }</td>
					<td>${book.publicationDate }</td>
					<td><a href="/deleteItem.joa?no=${book.no }">삭제하기</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>
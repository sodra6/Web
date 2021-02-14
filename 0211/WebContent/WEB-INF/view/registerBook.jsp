<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 추가하기</title>
</head>
<body>
	<form method="post">
		<fieldset>
			<legend>책추가</legend>
			<input name="title" placeholder="제목"/>
			<input name="author" placeholder="저자"/>
			<input name="pageNum" placeholder="페이지 수"/>
			<input name="publicationDate" placeholder="출판일"/>
			<button>등록하기</button>
		</fieldset>
	</form>
	<a href="/index.joa">메인으로</a>
</body>
</html>
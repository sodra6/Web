<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입</h1>
	<form action="/upload.do" method="post" enctype="multipart/form-data"> 
		<fieldset>
			<legend>호원가입폼</legend>
			<p>
			<label for="name">이름</label>
			<input id="name" name="name"/>
			</p>
			<p>
			<label for="id">아이디</label>
			<input id="id" name="id"/>
			</p>
			<p>
			<label for="password">비밀번호</label>
			<input id="password" name="password"/>
			</p>
			<p>
			<label for="file">파일업로드</label>
			</p>
			<p>
			<input id="file" name="file" type="file"/>
			</p>
			<button>올리기</button>
		</fieldset>
	</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/css/all.min.css"/>
<style>
	label.far{
		font-size:60px;
	}
	input[type=file]{
	display=:hidden;
	}
</style>
</head>
<body>
	<h1>회원가입</h1>
	
<%--
 enctype이 x-www-form-urlencoded이 기본값 파라미터를 글자로 넘기는방식
 (한글등 영어 제외한 언어들을 %XX로 표기)
 
 파일업로드를 하려면 무적권 POST방식 그리고 enctype을 multipart/form-data로 설정

 --%>
		<form action="/upload.jsp" method="post" enctype="multipart/form-data">
			<fieldset>
				<legend>회원가입폼</legend>
					<div>
						<label>
							아이디 <input name="id"/>
						</label>	
					</div>
					<div>
						<label>
							이름 <input name="name"/>
						</label>	
					</div>
					<div>
						<label class="far fa-images">
							<input type="file" name="profile"/>
						</label>
					</div>
					<div>
						<button>회원가입</button>
					</div>
			</fieldset>
		</form>
</body>
</html>
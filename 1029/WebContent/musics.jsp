<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>음악 목록</title>
<style>
	#loader{
		position:fixed;
		width:100%;
		height:100%;
		left:0;
		top:0;
		background:fff;
		background-image:url(/img/loader.gif);
		background-repeat:no-repeat;
		background-position:center;
		opacity:.75;
		display:none;
	}
	table{
		border-collapse: collapse;
	}
	td, th{
		border: 1px solid	#424242;
		padding: 8px 12px;
	}
</style>
</head>
<body>
<%-- 응답이 json이 되야함 --%>
<h1>음악목록</h1>
<table>
	<thead>
	<tr>
	<th>제목</th>
	<th>아티스트</th>
	<th>장르</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<th></th>
	</tr>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="3">아직 안불러옴</td>
		</tr>
	</tfoot>
</table>
<ul>
	<li>아직 불러오지 않았음</li>
</ul>
<div id="loader"></div>
<button>불러오기</button>
<script src="/js/jquery.js"></script>
<script>
	//로딩이미지
	const $loader = $("#loader");
	//ajax로 음악목록(json)을 불러오는 함수
	function getMusics() {
		//로딩이미지 보여줌
		$loader.show();
		//ajax시작
		$.ajax({
			
			url:"/ajax/musics.json",
			dataType:"json",//html,json,text,xml...
			type:"GET",//GET,POST,PUT,DELETE
			success:function(json){
				console.log(json);
				$("ul").empty();
				
				$(json).each(function(){
					
					$("<li>").text(this.title+"/"+this.artist+"/"+this.genre).appendTo("ul");
					
				})//each() end
				
				$loader.hide();
				
				
			},
			error:function(){
				alter("서버 점검중!");
			}
			
		});//ajax() end
		
	}//getMusics() end
	
	getMusics();

</script>
</body>
</html>
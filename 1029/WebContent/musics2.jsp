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
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="3">아직 안불러옴</td>
		</tr>
	</tfoot>
</table>

<div id="loader"></div>
<button>불러오기</button>
<script src="/js/jquery.js"></script>
<script>
	//로딩이미지
	const $loader = $("#loader");
	

	
	//ajax로 음악목록(json)을 불러오는 함수
	function getMusics() {
		$loader.show()
		

		
		$.ajax({
			
			url:"/ajax/musics.json",
			dataType:"json",
			type:"GET",
			success:function(json){
				$("tbody").empty();
				
				$.each(json,function() {
					
					const $tr=$("<tr>");
					const $th=$("<th>").text(this.title);
					const $td1=$("<td>").text(this.artist);
					const $td2=$("<td>").text(this.genre);
					
					$tr.append($th,$td1,$td2).appendTo("tbody");
					
				});
				
				
				$loader.hide();
			},
			error:function(){
				alter("서버 점검중");
			}
			
		})
		
		
	}//getMusics() end
	
	getMusics();

</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>아이돌 목록</title>
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
<table>
	<thead>
	<tr>
	<th>번호</th>
	<th>이름</th>
	<th>키</th>
	<th>몸무게</th>
	<th>생일</th>
	<th>성별</th>
	</tr>
	</thead>
	<tbody>
		<tr>
			<td colspan="6">아직 안불러옴</td>
		</tr>
	</tbody>
</table>
<div id="loader"></div>
<script src="/js/jquery.js"></script>
<script>
	const $loader = $("#loader");
	
	function getIdols(){
		$loader.show()
		
		$.ajax({
			url:"/getIdols.ims",
			dataType:"json",
			type:"GET",
			success: function(json){
				$("tbody").empty();
		
				$.each(json, function(){
					const $tr = $("<tr>");
					const $th = $("<th>").text(this.idolId);
					const $td1 = $("<td>").text(this.name);
					const $td2 = $("<td>").text(this.height);
					const $td3 = $("<td>").text(this.weight);
					const $td4 = $("<td>").text(this.birthDate);
					const $td5 = $("<td>").text(this.gender);
					
					$tr.append($th,$td1,$td2,$td3,$td4,$td5).appendTo("tbody");
					
				})//each() end
				
				$loader.hide();
				
			},
			errro:function() {
				
			}
			
			
		})//ajax() end
		
	}
	getIdols();

</script>
</body>
</html>
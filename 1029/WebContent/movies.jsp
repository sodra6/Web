<%@page import="com.bmj.mms.dao.MoviesDAO"%>
<%@page import="com.bmj.mms.vo.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>영화목록</title>
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
	<th>제목</th>
	<th>감독</th>
	<th>개봉일</th>
	<th>관객수</th>
	<th>장르번호</th>
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
<script src="/js/underscore-min.js"></script>
<script src="/js/moment-with-locales.js"></script>
<script>

	const $loader = $("#loader");
	function numberWithCommas(x) {
	    x = x.toString();
	    var pattern = /(-?\d+)(\d{3})/;
	    while (pattern.test(x))
	        x = x.replace(pattern, "$1,$2");
	    return x;
	}
	
	function getMovies() {
		
		$loader.show();
		$.ajax({
			url:"/getMovies.mms",
			dataType:"json",
			type:"GET",
			success:function(movies){
				$("tbody").empty();
				console.log(json);
				_.each(movies,function(movie){

					const $tr=$("<tr>");
					const $th=$("<th>").text(movie.no);
					const $td1=$("<td>").text(movie.name);
					const $td2=$("<td>").text(movie.director);
					const $td3=$("<td>").text(moment(movie.releaseDate).format("YYYY년 M월 D일"));
					const $td4=$("<td>").text(numberWithCommas(movie.audienceNum)+"명");
					const $td5=$("<td>").text(movie.genre);
					
					$tr.append($th,$td1,$td2,$td3,$td4,$td5).appendTo("tbody");
					
					
				})
				
				
				$loader.hide();
			},
			error:function(){
				alter("서버 점검중");
			}
			
		})
		
	}
	
	getMovies();
	
</script>

</body>
</html>
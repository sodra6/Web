<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>그룹명</th>
			<th>데뷔일</th>
		</tr>
	</thead>
	<tbody>

	</tbody>
</table>



<@_.each(groupList,function(group){@>
<tr>
	<td><@= group.groupId @></td>
	<th><@= group.name @></th>
	<td><@= moment(group.debutDate).format("YYYY-MM-DD") @></td>
</tr>

<@})@>
</script>

<script src="js/jquery.js"></script>
<script src="/js/underscore-min.js"></script>
<script src="/js/moment-with-locales.js"></script>
<script>
_.templateSettings = {interpolate: /\<\@\=(.+?)\@\>/gim,evaluate: /\<\@([\s\S]+?)\@\>/gim,escape: /\<\@\-(.+?)\@\>/gim};

	const groupTmpl = _.template($("#groupTmpl").html());
	moment.locale("ko");

	function getGroupList(){
		
		$.ajax({
			url:"/group.bmj",
			success: function(groups){
				$("tbody").html(groupTmpl({groupList:groups}))
				
			},
			error: function(){
				alert("바보");
			}
		})//ajax() end
		
	}//groupList() end
	
	getGroupList();

</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="footer">
<div class="aux">
	<div id="policy">
		<h4 class="screen_out">정책 및 약관</h4>
		<ul>
			<li><a href="">회사소개</a></li><!--
		 --><li><a href="">광고</a></li><!--
		 --><li><a href="">검색등록</a></li><!--
		 --><li><a href="">제휴제안</a></li><!--
		 --><li><a href="">이용약관</a></li><!--
		 --><li><a href=""><strong>개인정보이용약관</strong></a></li><!--
		 --><li><a href="">청소년보호정책</a></li><!--
		 --><li><a href="">고객센터</a></li>
		</ul>
	</div><!-- //policy  -->
	<address>&copy; 2020 <a href="">bmj.com</a></address>
</div><!-- //.aux-->
</div><!-- //footer  -->
<script src="js/jquery.js"></script>
<script>
	$("#nav li").on('click',function (e) {
		if ($("#nav li").hasClass("on")) { 
	            $("#nav li").removeClass("active");
	       }
	       else {
            $("#nav li").addClass("on");
	       }

    })//click() end
</script>
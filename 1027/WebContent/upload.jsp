<%@page import="java.io.File"%>
<%@page import="com.bmj.test.util.ResizeImageUtil"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//enctype이 x-www-form-urlencoded일때 즉 모든 파라미터가 글자로 넘어올때는
	//우리가 지금까지 했던 방식으로 파라미터를 받을 수 있음
	/*
	String name= request.getParameter("name");
	String profile = request.getParameter("profile");

	하지만 multipart/form-data방식이면 쉽게 처리가 불가능
	: 라이브러리를 활용해야 함
	1) cos라이브러리 : MODEL1방식
	2) apache재단의 common-fileupload 라이브러리가 있음 : 스프링에서 사용
	*/
	
	/*
		파일업로드를 하려면 업로드할 경로를 알아야 한다.
		
		MultipartRequest 객체생성자는 인자가 5개
		1) request
		2) 업로드할 경로
		3) 업로드 할 사이즈
		4) 인코딩 방식(한글처리)
		5) FileRenamePolicy(파일이름정책)
	*/
	
	//서버의 루트 경로
	String root = application.getRealPath("/");
	//upload폴더 경로(원본데이터)
	String uploadPath = root+"upload";
	//썸네일 이미지 경로
	String thumbPath = root+"thumbs";
	
	//이때 파일업로드가 됨
	MultipartRequest mr = new MultipartRequest(request,uploadPath,
			1024*1024*100,"UTF-8",new DefaultFileRenamePolicy());
	
	
	//이름
	String name = mr.getParameter("name");
	//id
	String id = mr.getParameter("id");

	//파일명
	String fileName = mr.getFilesystemName("profile");
	//원본소스
	String source = uploadPath+/*파일 경로 나눠주는것 */File.separator+fileName;
	
	//타겟
	String target = thumbPath+File.separator+fileName;
	
	ResizeImageUtil.resize(source, target, 180);

	
%>
이름 : <%= name %><br/>
id : <%= id %><br/>
파일명 : <%=fileName %><br/>
원본 : <%=source %><br/>
타겟 : <%=target %><br/>
<img src="/thumbs/<%=fileName%>" /></br>
<img src="/upload/<%=fileName%>" />
<%-- 
<%=root %><br/>
<%=uploadPath %>
--%>
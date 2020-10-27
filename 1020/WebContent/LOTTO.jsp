<%@page import="java.util.Random"%>
<%@page import="java.util.TreeSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	Random ran = new Random();

	Set<Integer> lottos = new TreeSet();

	while(lottos.size()<6) {
		lottos.add(ran.nextInt(45)+1);
	}//
	String lottosStr = new String();
	 lottosStr=lottos.toString();
	System.out.println(lottosStr.substring(1, lottosStr.length()-1));
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>로또번호생성기</title>
</head>

<body>
<h1>로또 번호 생성기</h1>
<h2><%= lottosStr.substring(1, lottosStr.length()-1) %></h2>
</body>
</html>
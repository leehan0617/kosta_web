<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<center>
		include 지시자 예제입니다. <br/>
		.........<br/>
		.........<br/>
		.........<br/>
		.........<br/>
		<!-- <jsp:include> 컴파일해서 서블릿생성해서 실행 -->
		<%@ include file="10_copyright.jsp"  %>
		<%--%@include 는 서블릿으로 변화안하고 복사해서 붙여서 실행 --%>
		.........<br/>
		.........<br/>
		.........<br/>
	</center>
</body>
</html>
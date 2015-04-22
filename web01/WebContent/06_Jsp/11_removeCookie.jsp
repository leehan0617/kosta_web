<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% 
	Cookie[] cookie=request.getCookies();
	for(Cookie index:cookie){
		index.setMaxAge(0);
		response.addCookie(index);
	}
%>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<h4>장바구니를 비웠습니다.</h4>
	
	<a href="11_cookie.jsp"></a>
</body>
</html>
<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	request.setCharacterEncoding("euc-kr");
	String[] fruit=request.getParameterValues("fruit");
//	out.print(fruit.length);

	for(int i=0;i<fruit.length;i++){
		Cookie cookie=new Cookie("fruit"+i , fruit[i]);
		cookie.setMaxAge(60*10); //10분
		response.addCookie(cookie);
	}
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<div>
		<h4>장바구니에 담겼습니다.</h4>
		<br/><br/>
	</div>
</body>
</html>
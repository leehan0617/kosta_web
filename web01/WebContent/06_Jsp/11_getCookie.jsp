<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	Cookie[] cookie=request.getCookies();
	//out.print(cookie.length);
	
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<%
		for(int i=0;i<cookie.length;i++){
			out.print("쿠키이름:" + cookie[i].getName() + "<br/>");
			out.print("쿠키값:" + cookie[i].getValue() + "<br/>");
		}
	%>
	
	<a href="11_cookie.jsp">이전단계</a>
</body>
</html>
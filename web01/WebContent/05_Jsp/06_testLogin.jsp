<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	request.setCharacterEncoding("euc-kr");
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	
//	out.print(id + "," + pwd);
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<%
		String dbId="abc123";  
		String dbPwd="abc123";
		
		if(dbId.equals(id) && dbPwd.equals(pwd)){
			response.sendRedirect("06_main.html");
		}else{
			response.sendRedirect("06_fail.html");
		}
	%>
</body>
</html>
<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	String blood=request.getParameter("blood");
//	out.print(blood);
	String bloodType="09_" + blood + ".jsp"; //09_a.jsp ,09_o.jsp
	String name="jo";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="<%=bloodType %>" >
		<jsp:param name="name" value="<%=name %>"/>
	</jsp:forward>
</body>
</html>
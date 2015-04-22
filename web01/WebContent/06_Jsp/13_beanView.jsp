<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	request.setCharacterEncoding("euc-kr");
	String name=request.getParameter("name");
	String message=request.getParameter("message");
	
//	out.print(name + "," + message);
%>
	<jsp:useBean id="bean" class="bean.Bean" >
		<jsp:setProperty name="bean" property="name" value="<%=name %>"/>
		<jsp:setProperty name="bean" property="message" value="<%=message %>"/>
	</jsp:useBean>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<div>
		이름 : <jsp:getProperty property="name" name="bean"/><br/>
		댓글 : <jsp:getProperty property="message" name="bean"/><br/>
	</div>
</body>
</html>
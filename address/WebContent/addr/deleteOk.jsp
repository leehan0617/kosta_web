<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
 <%@ page import="addrModel.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	request.setCharacterEncoding("euc-kr");
	String name=request.getParameter("name");
	
	int value=AddrDao.getInstance().delete(name);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>

	<%if(value==1){ %>
	<div>삭제 완료</div>
	<%}else{ %>
	<div>삭제 실패</div>
	<%} %>
	<a href="index.html">홈으로</a>
</body>
</html>
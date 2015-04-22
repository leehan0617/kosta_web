<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="addrModel.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	request.setCharacterEncoding("euc-kr");
	
	String name=request.getParameter("name");
	AddrDto addr=AddrDao.getInstance().select(name);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="addr.css"/>
</head>
<body>
	<a href="index.html">메뉴</a>
		
	<%if(addr==null){ %>
		<h3>해당 데이터가 존재하지 않습니다.</h3>
	<%}else{ %>
		<label>번호</label>
		<input type="text" name="num" value="<%=addr.getNum() %>" disabled="disabled" />
		
		<label>이름</label>
		<input type="text" name="name" value="<%=addr.getName() %>" disabled="disabled" />
		
		<label>전화번호</label>
		<input type="text" name="phone" value="<%=addr.getPhone() %>" disabled="disabled" />
		
		<label>이메일</label>
		<input type="text" name="email" value="<%=addr.getEmail() %>" disabled="disabled" />
	<%} %>
	
	<input type="button" value="메인이동" onclick="javascript:location.href='index.html'" />
</body>
</html>
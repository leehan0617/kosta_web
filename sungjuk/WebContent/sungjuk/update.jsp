<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="sungModel.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	int bunho=Integer.parseInt(request.getParameter("bunho"));
	SungDto dto=SungDao.getInstance().read(bunho);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
<script type="text/javascript" src="sungjuk.js"></script>
</head>
<body>
	<form action="updateOk.jsp" method="post" onsubmit="writeForm(this)">
		<label>번호</label>
		<input type="text" name="bunhoView" value="<%=dto.getBunho() %>" disabled="disabled"/>
		<br/><br/>
		
		<input type="hidden" name="bunho" value="<%=dto.getBunho() %>"/>
		
		<label>이름</label>
		<input type="text" name="nameView" value="<%=dto.getName() %>" disabled="disabled"/>
		<br/><br/>
		
		<input type="hidden" name="name" value="<%=dto.getName() %>"/>
		
		<label>국어</label>
		<input type="text" name="kor" value="<%=dto.getKor() %>"/>
		<br/><br/>
		
		<label>영어</label>
		<input type="text" name="eng" value="<%=dto.getEng() %>"/>
		<br/><br/>
		
		<label>수학</label>
		<input type="text" name="math" value="<%=dto.getMath() %>"/>
		<br/><br/>
		
		<input type="submit" value="수정" />
		<a href="index.html"><input type="button"  value="취소" /></a>
	</form>
</body>
</html>
<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="sungModel.*" %>
<%@page import="java.util.ArrayList" %>

<%
	ArrayList<SungDto> list=SungDao.getInstance().showAll();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<%if(list!=null){ %>
		<%for(SungDto dto:list){ %>
			<label>번호</label>
			<input type="text" value="<%=dto.getBunho() %>" disabled="disabled" size="5"/>
			
			<label>이름</label>
			<input type="text" value="<%=dto.getName() %>" disabled="disabled" size="5"/>
			
			<label>국어</label>
			<input type="text" value="<%=dto.getKor() %>" disabled="disabled" size="5"/>
			
			<label>영어</label>
			<input type="text" value="<%=dto.getEng() %>" disabled="disabled" size="5"/>
			
			<label>수학</label>
			<input type="text" value="<%=dto.getMath() %>" disabled="disabled" size="5"/>
			
			<label>총점</label>
			<input type="text" value="<%=dto.getTotal() %>" disabled="disabled" size="5"/>
			
			<label>평균</label>
			<input type="text" value="<%=dto.getAverage() %>" disabled="disabled" size="5"/>
			<br/><br/>
		<%} %>
	<%} %>
	
	<a href="index.html"><input type="button" value="홈으로" /></a>
	
</body>
</html>
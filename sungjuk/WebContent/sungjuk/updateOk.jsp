<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="sungModel.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="sung" class="sungModel.SungDto">
	<jsp:setProperty property="*" name="sung"/>
</jsp:useBean>

<%
	int value=SungDao.getInstance().update(sung);
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
		<script type="text/javascript">
	<%if(value>0){ %>
			alert("입력완료");
	<%}else{ %>
			alert("입력실패");
	<%} %>
			location.href="index.html";
	</script>
</body>
</html>
<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="sungModel.*" %>
<%
	request.setCharacterEncoding("euc-kr");
	
	int bunho=Integer.parseInt(request.getParameter("bunho"));
	String name=request.getParameter("name");
	int value=SungDao.getInstance().delete(name,bunho);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		<%if(value>0){ %>
				alert("삭제완료");
		<%}else{%>
				alert("삭제실패");
		<%}%>
		location.href="index.html";
	</script>
</body>
</html>
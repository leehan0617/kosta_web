<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	request.setCharacterEncoding("euc-kr");
	out.print(request.getParameter("name"));
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<%
		String addr="dfd";
		String phone="1234";
	%>
	<jsp:include page="08_includeC.jsp" >
	<%--추가 데이터 전송할때 param 사용 --%>
		<jsp:param name="addr" value="<%=addr %>"/>
		<jsp:param name="phone" value="<%=phone %>" />
	</jsp:include>
</body>
</html>
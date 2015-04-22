<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="addrModel.AddrDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	request.setCharacterEncoding("euc-kr");
	String name=request.getParameter("name");
	String phone=request.getParameter("phone");
	String email=request.getParameter("email");
%>
<jsp:useBean id="addr" class="addrModel.AddrDto">
	<jsp:setProperty property="name" name="addr" value="<%=name %>"/>
	<jsp:setProperty property="phone" name="addr" value="<%=phone %>"/>
	<jsp:setProperty property="email" name="addr" value="<%=email %>"/>
</jsp:useBean>

<%
	int value=AddrDao.getInstance().insert(addr);
//	out.print(value);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<%if(value>0){ %>
			<script type="text/javascript">
				alert("주소록이 작성 되었습니다.");
				location.href="write.html";
			</script>
	<%}else{ %>
			<script type="text/javascript">
				alert("주소록 작성 실패했습니다.");
				location.href="write.html";
			</script>
	<%} %>
</body>
</html>
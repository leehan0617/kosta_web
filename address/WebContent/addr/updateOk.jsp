<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="addrModel.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	request.setCharacterEncoding("euc-kr");
	
	int num=Integer.parseInt(request.getParameter("num"));
  	String phone=request.getParameter("phone");
  	String email=request.getParameter("email");
  	
//  	AddrDto dto=new AddrDto();
//  	dto.setNum(num);
//  	dto.setPhone(phone);
//	    dto.setEmail(email);
%>

<jsp:useBean id="addr" class="addrModel.AddrDto">
	<jsp:setProperty property="*" name="addr" /> <!-- Dto의 변수랑 jsp or html의변수이름이일치해야함 -->
</jsp:useBean>

<%
	int value=AddrDao.getInstance().update(addr);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<a href="index.html">메인으로</a>
	<%if(value>=1){ %>
		<script type="text/javascript">
			alert("수정되었습니다.");
			location.href="index.html";
		</script>
	<%}else{ %>
		<script type="text/javascript">
			alert("수정실패");
			location.href="index.html";
		</script>
	<%} %>
</body>
</html>
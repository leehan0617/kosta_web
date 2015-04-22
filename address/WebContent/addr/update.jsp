<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import="addrModel.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	request.setCharacterEncoding("euc-kr");
	String name=request.getParameter("name");
	
	AddrDto dto=AddrDao.getInstance().select(name);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>update</title>
<link rel="stylesheet" type="text/css" href="addr.css"/>
<script type="text/javascript" src="addr.js"></script>
</head>
<body>
	<%if(dto==null){ %>
		<form action="update.jsp" method="post">
			<label>수정할 이름을 입력하세요</label>
			<br/><br/>
			
			<label>이름</label>
			<input type="text" name="name"/>
			<input type="submit" value="전송" />
		</form>
	<%}else{ %>
		<form action="updateOk.jsp" method="post">
			<label>이름</label>
			<input type="hidden" name="num" value="<%=dto.getNum() %>"/>
			<input type="text" name="name" value="<%=dto.getName() %>" disabled="disabled" />
			<br/>
			
			<label>전화번호</label>
			<input type="text" name="phone" value="<%=dto.getPhone() %>" />
			<br/>
			
			<label>이메일</label>
			<input type="text" name="email" value="<%=dto.getEmail() %>"/>
			<br/>
			
			<input type="submit" value="작성" />
			<input type="reset" value="취소" />
		</form>	
	<%} %>
</body>
</html>
<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<form action="11_setCookie.jsp" method="post">
		<label>사고 싶은 과일</label>
		<input type="checkbox" name="fruit" value="apple"/><label>사과</label>
		<input type="checkbox" name="fruit" value="banana"/><label>오렌지</label>
		<input type="checkbox" name="fruit" value="orange"/><label>바나나</label>
		
		<input type="submit" value="전송" />
		<input type="reset" value="취소" />
		
		<a href="11_getCookie.jsp">장바구니 보기</a>
		<a href="11_removeCookie.jsp">장바구니 삭제</a>		
	</form>
</body>
</html>
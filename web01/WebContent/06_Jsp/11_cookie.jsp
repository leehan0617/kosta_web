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
		<label>��� ���� ����</label>
		<input type="checkbox" name="fruit" value="apple"/><label>���</label>
		<input type="checkbox" name="fruit" value="banana"/><label>������</label>
		<input type="checkbox" name="fruit" value="orange"/><label>�ٳ���</label>
		
		<input type="submit" value="����" />
		<input type="reset" value="���" />
		
		<a href="11_getCookie.jsp">��ٱ��� ����</a>
		<a href="11_removeCookie.jsp">��ٱ��� ����</a>		
	</form>
</body>
</html>
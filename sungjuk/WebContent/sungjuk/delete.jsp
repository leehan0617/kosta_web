<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	int bunho=Integer.parseInt(request.getParameter("bunho"));
	//out.print("bunho : " + bunho);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<link rel="stylesheet" type="text/css" href="sungjuk.css" />
<script type="text/javascript" src="sungjuk.js"></script>
<title>�ּҷ� ����</title>
</head>
<body>
	<a href="index.html">�޴�</a>
	<br/><br/>
	
	<form action="deleteOk.jsp" method="post" onsubmit="return deleteForm(this)">
		<label>�����ϱ� ���� ��ȣ�� �̸��� Ȯ���ϼ���.</label>
		<br/><br/>
		
		<label>��ȣ</label>
		<input type="text" name="bunho" value="<%=bunho %>" />
		<br/><br/>
		
		<label>�̸�</label>
		<input type="text" name="name" />
		<br/><br/>
		
		<input type="submit" value="����" />
		<a href="index.html"><input type="button" value="���" /></a>
	</form>
</body>
</html>
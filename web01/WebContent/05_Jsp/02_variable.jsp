<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%!  //����
		int su=10;
		int value=20;
		
		public int add(int a,int b){
			return a+b;
		}
		
		public int minus(int a,int b){
			return a-b;
		}
	%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
<%--
	 1.<%! %> ����: �Լ�,�������  
	 2.<% %> �׿� ��� �ڹ� ���� 
	 3.<%= %> ��� 
	 4.<%@ page> : ������ ���þ�
--%>

	<div>JSP Example</div>
	<% // Scriplet
		int r=add(su,value);
		int e=add(su,value);
	%>
	
	<div> <%-- ǥ����(Expression) --%> 
		<%= r %> �Դϴ�.  <br/> <%= e %> �Դϴ�.
	</div>
		
</body>
</html>
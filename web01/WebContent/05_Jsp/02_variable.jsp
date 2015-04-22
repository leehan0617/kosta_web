<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%!  //선언문
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
	 1.<%! %> 선언문: 함수,멤버변수  
	 2.<% %> 그외 모든 자바 문법 
	 3.<%= %> 출력 
	 4.<%@ page> : 페이지 지시어
--%>

	<div>JSP Example</div>
	<% // Scriplet
		int r=add(su,value);
		int e=add(su,value);
	%>
	
	<div> <%-- 표현식(Expression) --%> 
		<%= r %> 입니다.  <br/> <%= e %> 입니다.
	</div>
		
</body>
</html>
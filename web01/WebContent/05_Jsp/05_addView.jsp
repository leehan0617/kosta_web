<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	request.setCharacterEncoding("euc-kr");
	String name=request.getParameter("name");
	String address=request.getParameter("address");
	String gender=request.getParameter("gender");
	String[] pet=request.getParameterValues("pet");
		
	//out.print(name + "," + address + "," + gender + "," + pet.length);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<div>
		name: <%= name %> <br/>
		address: <%= address %> <br/>
	</div>
	
	<%
		if(gender.equals("man")) out.print("남자 <br/>"); 
		else out.print("여자 <br/>");
	
		if(pet!=null){
			for(String str:pet)	{
				out.print(str + " &nbsp; &nbsp;");
			}	
		}
	%>	
</body>
</html>
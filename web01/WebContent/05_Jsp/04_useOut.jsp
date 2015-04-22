<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%!
	int su=20;
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<%if(su > 50){ %>
			<h4><%="good" %></h4>
   <%}else if(su > 40){ %>
   			<h4><%="not bad" %></h4>
    <%}else if(su >10){ %>
    		<h4><%="bad" %></h4>
    <% }%>
    
    
    <% //내장객체 out
    	out.print("안녕하세요 <br/>");
    	
    	if(su>50){
    		out.print("<h4>good</h4>");
    	}else if(su>40){
    		out.print("<h4>not bad</h4>");
    	}else if(su>10){
    		out.print("<h4>bad</h4>");
    	}
    %>
</body>
</html>
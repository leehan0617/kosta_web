<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	String value=request.getParameter("check");
	//out.print(value);
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>

<%	if(value.equals("include")){ %>
	<%--ServletContext sc=req.getServletContext();
		RequestDispatcher rd=sc.getRequestDispatcher("07_result.jsp");
		rd.include(req, resp);  이기능을 한번에 처리--%> 
			<jsp:include page="07_result.jsp" />
<%	}else if(value.equals("forward")){   %>
			<jsp:forward page="07_result.jsp" />
<% 	}
%>
</body>
</html>
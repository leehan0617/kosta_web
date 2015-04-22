<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="sungModel.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	int bunho=Integer.parseInt(request.getParameter("bunho"));

	SungDto dto=SungDao.getInstance().read(bunho);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="sungjuk.css"/>
<script type="text/javascript" src="addr.js"></script>
<script type="text/javascript">
	function update(bunho){
		var url="update.jsp?bunho=" + bunho;
		location.href=url;
	}
</script>
</head>
<body>

	<%if(dto !=null){ %>
	<label>��ȣ</label>
	<input type="text" name="name" value="<%=dto.getBunho() %>" disabled="disabled"/>
	<br/><br/>
	
	<label>�̸�</label>
	<input type="text" name="name" value="<%=dto.getName() %>" disabled="disabled"/>
	<br/><br/>
	
	<label>����</label>
	<input type="text" name="name" value="<%=dto.getKor() %>" disabled="disabled"/>
	<br/><br/>
	
	<label>����</label>
	<input type="text" name="name" value="<%=dto.getEng() %>" disabled="disabled"/>
	<br/><br/>
	
	<label>����</label>
	<input type="text" name="name" value="<%=dto.getMath() %>" disabled="disabled"/>
	<br/><br/>
	
	<label>����</label>
	<input type="text" name="name" value="<%=dto.getTotal() %>" disabled="disabled"/>
	<br/><br/>
	
	<label>���</label>
	<input type="text" name="name" value="<%=dto.getAverage() %>" disabled="disabled"/>
	
	<br/><br/>
	<a href="delete.jsp?bunho=<%=dto.getBunho() %>">����</a>
	<input type="button" value="����" onclick="update(<%=dto.getBunho()%>)" />
	<%}else{%>
	<script type="text/javascript">
		alert("��ȣ�� ���������ʽ��ϴ�.");
		location.href="index.html";
	</script>
	<%} %>
</body>
</html>
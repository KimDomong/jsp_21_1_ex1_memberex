<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>logout.jsp</title>
</head>
<body>
	<%
		String name = (String)session.getAttribute("name");	
	%>
	<h2><%= name %>�� �α׾ƿ� �Ǽ̽��ϴ�.</h2>
	
	<%
		session.invalidate();//��� ������ ����	
	%>
	<a href ="login.jsp">ȸ�� �α���</a>
</body>
</html>
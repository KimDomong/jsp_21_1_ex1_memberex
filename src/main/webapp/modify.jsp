<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.domong.ex.*" %>
<% request.setCharacterEncoding("EUC-KR"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>modify.jsp</title>
<script language="JavaScript" src="members.js" charset="UTF-8"></script>
</head>
<body>
	<%
		String id = (String)session.getAttribute("id");
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.getMember(id);	
	%>
	<h1>ȸ�� ���� ���� �� ���� ��ư�� �����ּ���</h1>
	<form action="modifyOk.jsp" method="post" name="reg_frm">
		���̵� : <%= dto.getId() %></br><br/>		
		��й�ȣ : <input type="password" name="pw" size="20"></br><br/>
		��й�ȣ Ȯ��: <input type="password" name="pw_check" size="20"></br><br/>
		�̸�: <%= dto.getName() %></br><br/>
		�̸���: <input type="text" name="email" size="30" value="<%= dto.getEmail() %>"></br><br/>
		�ּ�: <input type="text" name="address" size="60" value="<%= dto.getAddress() %>"></br><br/>
		ȸ�������� : <%= dto.getRdate() %> </br><br/><br/><br/>
		<input type="button" value="����" onclick="updateInfoConfirm()">
		<input type="reset" value="���" onclick="javascript:window.location='login.jsp'">
	
	</form>
</body>
</html>
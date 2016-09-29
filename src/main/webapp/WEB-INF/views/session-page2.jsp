<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Session 内置对象</h1>
	<hr>
	Session创建时间 <%=session.getCreationTime() %> <br>
	Session ID编号<%=session.getId() %> <br>
	Session 用户名 <%=session.getAttribute("useaname") %> <br>
</body>
</html>
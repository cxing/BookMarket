<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	协议类型版本号： <%= request.getProtocol() %> <br>
	服务器主机名： <%=request.getServerName() %> <br>
	服务器端口号： <%=request.getServerPort() %> <br>
	<hr>
	<c:forEach items="${books}" var="book"> 
  		${book.toString()} <br />
	</c:forEach>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="topmenu" id="topmenu">
	<c:forEach items="${categorys}" var="category">
		<li><a href="#">${category.cname}</a></li>
	</c:forEach>
</ul>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static" />

<script type="text/javascript">
	$(".tcdPageCode").createPage({
		pageCount : 30,
		current : 1,
		backFn : function(p) {
			console.log(p);
		}
	});
</script>
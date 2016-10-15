<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static" />

<div id="cbp-vm" class="cbp-vm-switcher cbp-vm-view-grid">
	<ul>
		<c:forEach items="${books}" var="book">
			<li><a class="cbp-vm-image" href="#"><img
					src="${ctxStatic}/images/20928547-1_w_1.jpg"></a>
				<h3 class="cbp-vm-title">${book.bname}</h3>
				<div class="cbp-vm-details">
					<p>出版社 ：${book.press}</p>
				</div> <a class="cbp-vm-icon cbp-vm-add" href="http://www.htmleaf.com/">Add
					to cart</a></li>
		</c:forEach>
	</ul>
</div>
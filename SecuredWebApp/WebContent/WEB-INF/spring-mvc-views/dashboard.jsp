<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set scope="request" var="ctxPath" value="${pageContext.request.contextPath}" />
<c:set scope="request" var="ctxName" value="${pageContext.servletContext.servletContextName}" />
<c:set scope="request" var="pageName"> Dashboard Page</c:set>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="author" content="weikhong">
	<title><c:out value="${ctxName}" /> :: <c:out value="${pageName}" /></title>
</head>
<body>
	<h1><c:out value="${ctxName}" /></h1>
	<h2><u><c:out value="${pageName}" /></u></h2>
	<p>This page served as welcome page for webapp with [contextName: <c:out value="${ctxName}" />] at [contextPath: <c:out value="${ctxPath}" />]</p>
	<div>Hello, ${pageContext.request.userPrincipal.name}</div>
	<div>
		<!-- CSRF for logout -->
		<form action="<c:url value='j_spring_security_logout' />" method="POST">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<input type="submit" name="logoutButton" value="Logout">
		</form>
	</div>
</body>
</html>
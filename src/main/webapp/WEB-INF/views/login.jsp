<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login page</title>
<link rel="icon" type="image/png"
	href="${SITE_URL}/static/admin/img/favicon.ico">
<link href="${SITE_URL}/static/css/index.css" rel="stylesheet">


</head>
<body>


	<div class="form">
		<h3>Admin Login</h3>
		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		<form class="login-form" name='loginForm'
			action="<c:url value='/j_spring_security_check' />" method='POST'>
			<input type="text" placeholder="username" name='username' /> <input type="password"
				placeholder="password" name='password' />
			<button>login</button>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	</div>

	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

	<script src="${SITE_URL}/static/js/index.js"></script>

</body>
</html>
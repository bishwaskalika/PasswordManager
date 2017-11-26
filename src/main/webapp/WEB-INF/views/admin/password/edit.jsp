<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>





	<div class="container">
		<h2>EDIT PASSWORD</h2>


		<form method="post" action="${SITE_URL}/admin/password/save">
			<div>
				<label>Title</label> <input type="text" name="title"
					value="${pwd.title}" />
			</div>
			<div>
				<label>Email</label> <input type="text" name="email"
					value="${pwd.email}" />
			</div>
			<div>
				<label>username</label> <input type="text" name="userName"
					value="${pwd.userName}" />
			</div>
			<div>
				<label>Password</label> <input type="text" name="password"
					value="${pwd.password}" />
			</div>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
			<input type="hidden" name="id" value="${pwd.id}" />
			<button type="submit">Save</button>
		</form>
</body>
</html>
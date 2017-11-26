<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<h2>EDIT NOtes</h2>
		<form method="POST" action="${SITE_URL}/admin/notes/save">
			<div>
				<label>Title:</label><input type="text" name="title"
					value="" size="70" required="required" />
			</div>
			<br><br>
			<div>
				<label>Details:</label><input type="text" name="details"
					value="" size="70" required="required" />
			</div>
			<br><br>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" /> 
				<br><br>
			<button type="submit">Save</button>
		</form>
	</div>

</body>
</html>
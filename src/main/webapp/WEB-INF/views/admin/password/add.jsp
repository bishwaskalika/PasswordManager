<%@ include file="header.jsp" %>
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
  <h2>Add PASSWORD</h2>
  
        
        <form method="post" action="${SITE_URL}/admin/password/save">
            <div>
                <label>Title</label>
                <input type="text" name="title" value="" size="70" required="required"  /> 
            </div>
            <br><br>
            <div>
                <label>Email</label>
                <input type="text" name="email" value="" size="70" required="required" /> 
            </div>
            <br><br>
            <div>
                <label>username</label>
                <input type="text" name="userName" value="" size="70" required="required" /> 
            </div>
            <br><br>
            <div>
                <label>Password</label>
                <input type="text" name="password" value="" size="70" required="required"/> 
            </div>
            <br><br>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button type="submit">Save</button>
        </form>
	
	
</body>
</html>
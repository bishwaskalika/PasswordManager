<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png"
	href="${SITE_URL}/static/admin/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Bishwas Kalika Password Manager</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!-- Bootstrap core CSS     -->
<link href="${SITE_URL}/static/admin/css/bootstrap.min.css"
	rel="stylesheet" />


<!-- Bootstrap core CSS     -->
<link href="${SITE_URL}/static/admin/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="${SITE_URL}/static/admin/css/animate.min.css"
	rel="stylesheet" />

<!--  Light Bootstrap Table core CSS    -->
<link href="${SITE_URL}/static/admin/css/light-bootstrap-dashboard.css"
	rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="${SITE_URL}/static/admin/css/demo.css" rel="stylesheet" />


<!--     Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
	rel='stylesheet' type='text/css'>
<link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>
<body>

	<div class="wrapper">
		<div class="sidebar" data-color="purple"
			data-image="${SITE_URL}/static/admin/img/sidebar-5.jpg">

			<!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="" class="simple-text"> Bishwas Kalika Personal Notes
						Webapp </a>
				</div>

				<ul class="nav">
					<li><a href="${SITE_URL}/admin/welcome"> <i
							class="pe-7s-graph"></i>
							<p>Dashboard</p>
					</a></li>
					<li><a href="${SITE_URL}/admin/user"> <i
							class="pe-7s-user"></i>
							<p>User Profile</p>
					</a></li>
					<li><a href="${SITE_URL}/admin/password"> <i
							class="pe-7s-note2"></i>
							<p>Password Manager</p>
					</a></li>
					<li class="active"><a href="${SITE_URL}/admin/notes"> <i
							class="pe-7s-news-paper"></i>
							<p>Take Notes</p>
					</a></li>
<%-- 					<li><a href="${SITE_URL}/admin/links"> <i --%>
<!-- 							class="pe-7s-science"></i> -->
<!-- 							<p>Save Links</p> -->
<!-- 					</a></li> -->
				</ul>
			</div>
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#navigation-example-2">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Dashboard</a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-left">
							<li><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="fa fa-dashboard"></i>
									<p class="hidden-lg hidden-md">Dashboard</p>
							</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="fa fa-globe"></i> <b
									class="caret hidden-sm hidden-xs"></b> <span
									class="notification hidden-sm hidden-xs">5</span>
									<p class="hidden-lg hidden-md">
										5 Notifications <b class="caret"></b>
									</p>
							</a>
								<ul class="dropdown-menu">
									<li><a href="#">Notification 1</a></li>
									<li><a href="#">Notification 2</a></li>
									<li><a href="#">Notification 3</a></li>
									<li><a href="#">Notification 4</a></li>
									<li><a href="#">Another notification</a></li>
								</ul></li>
							<li><a href=""> <i class="fa fa-search"></i>
									<p class="hidden-lg hidden-md">Search</p>
							</a></li>
						</ul>

						<ul class="nav navbar-nav navbar-right">

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">
									<p>
										Social Links <b class="caret"></b>
									</p>
							</a>
								<ul class="dropdown-menu">
									<li><a href="#">FaceBook</a></li>
									<li class="divider"></li>
									<li><a href="#">LinkdIn</a></li>
									<li class="divider"></li>
									<li><a href="#">Twitter</a></li>
									<li class="divider"></li>
									<li><a href="#">Gmail</a></li>
									<li class="divider"></li>
									<li><a href="#">YouTube</a></li>
									
									
								</ul>
							<li><a href="">
									<p>${pageContext.request.userPrincipal.name}</p>
							</a></li>
							</li>

							<li><sec:authorize access="hasRole('ROLE_USER')">
									<!-- For login user -->
									<c:url value="/j_spring_security_logout" var="logoutUrl" />
									<form action="${logoutUrl}" method="post" id="logoutForm">
										<input type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" />
									</form>
									<script>
										function formSubmit() {
											document.getElementById(
													"logoutForm").submit();
										}
									</script>

									<c:if test="${pageContext.request.userPrincipal.name != null}">
										<li><a href="javascript:formSubmit()"> Logout</a></li>
									</c:if>


								</sec:authorize></li>
							<li class="separator hidden-lg hidden-md"></li>
						</ul>
					</div>
				</div>
			</nav>
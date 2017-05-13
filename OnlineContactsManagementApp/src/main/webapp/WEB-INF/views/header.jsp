<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>${param.title}</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body>
	<!--Collapsing static top Nav bar code here-->
	<div class="navbar navbar-inverse navbar-static-top">
		<div class="container">
			<a href="<c:url value="/welcome" />" class="navbar-brand">e-ContactsBook</a>

			<button class="navbar-toggle" data-toggle="collapse"
				data-target=".navHeaderCollapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse navHeaderCollapse">

				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="<c:url value="/welcome"/>">Home</a></li>
					<li class="dropdown">
					
					<li><a href="<c:url value="allcontacts" />">All Contacts</a></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>
							Account<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#"><span
									class="glyphicon glyphicon-hand-right"></span> Login</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-pencil"></span>
									SignUp</a></li>
						</ul>
				</ul>
			</div>
		</div>
	</div>
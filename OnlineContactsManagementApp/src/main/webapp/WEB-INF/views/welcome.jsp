<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Contacts App Landing Page</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body>
	<!--Collapsing static top Nav bar code here-->
	<div class="navbar navbar-inverse navbar-static-top">
		<div class="container">
			<a href="<c:url value="/welcome"/>" class="navbar-brand">e-ContactsBook</a>

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
	<!-- Jumbotron code here -->
	<div class="container">
		<div class="jumbotron">
			<center>
				<h2>Your Contacts. Organized.</h2>
				<p>Keep your contacts book updated, clean, and always available.</p>
				<a href="#"><span class="btn btn-default">Login now</span></a><a
					href="#"><span class="btn btn-primary">SignUp for free</span></a>
			</center>
			</center>
		</div>
	</div>

	<div class="container">
		<center>
			<h3>Smart Contacts Book Features</h3>
	</div>
	</div>

	<!--Grid System Code here -->
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<h3>
					<a href="#"> easy</a>
				</h3>
				<p>e-ContactsBook makes contact management a breeze. Manage all
					of your contacts from one place. Unify your address books, remove
					duplicates, and back up to a secure cloud.</p>
			</div>
			<div class="col-md-3">
				<h3>
					<a href="#">convenient </a>
				</h3>
				<p>Stay connected to your contacts anytime
					anywhere.e-ContactsBook works across multiple platforms and
					devices. You'll always have access to your contacts.</p>
			</div>
			<div class="col-md-3">
				<h3>
					<a href="#">updated</a>
				</h3>
				<p>Keep your contacts updated. Remove duplicate contacts to
					clean up and unify fragmented info. e-ContactsBook keeps all your
					address books updated and in sync.</p>
			</div>
			<div class="col-md-3">
				<h3>
					<a href="#">safe</a>
				</h3>
				<p>Keep your contacts safe. Take comfort in knowing that your
					address book contacts are safely and securely stored in the cloud.
				</p>
			</div>

		</div>
	</div>

	<!--fixed Bottom Nav bar code here -->
	<div class="navbar navbar-default navbar-fixed-bottom">
		<div class="container">
			<p class="navbar-text pull-left">e-ContactsBook &copy 2017. All
				rights reserved.</p>
			<a href="#" class="navbar-text pull-right">Site Build by Abhishek
				Singh</a>
		</div>
	</div>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
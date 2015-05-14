<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>User Registration</title>
<link type="text/css"
	href="<c:url value="resources/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">
<link type="text/css" href="<c:url value="resources/index.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/jquery-2.1.4.min.js" />"></script>
<script src="<c:url value="/resources/index.js" />"></script>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h1>CatchMeUp d**b</h1>
		</div>
	</div>

	<div class="login-area">
		<h2>New User Registration</h2>
		<form class="registration_form" action="<c:url value="/newUser"/> "
				method="post">
				
			<label for="fname">First Name</label> <br> <input type="text"
				name="firstname" id="firstname"><br> <label for="lname">Last
				Name</label> <br> <input type="text" name="lastname" id="lastname"><br>
			<label for="username">E-mail address</label> <br> <input
				type="text" name="new_email" id="new_email"><br> <label
				for="password">Password</label> <br> <input type="password"
				name="new_password" id="new_password"><br>

			<button type="submit" class="btn btn-sm btn-primary" id="register">Submit</button>
		</form>
	</div>

</body>
</html>
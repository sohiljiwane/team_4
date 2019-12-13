<%@ include file="header.jsp"%>

<%
	String errorMessage = "";
	if (session.getAttribute("ERROR") != null) {
		errorMessage = (String) session.getAttribute("ERROR");
		session.removeAttribute("ERROR");
	}
%>
<title>Student Login</title>
<body class="bg-dark">
	<div class="container">
		<div class="row">

			<div
				class="col-12 text-light d-flex justify-content-center align-items-center"
				style="height: 100px">
				<h4>Enter your login details</h4>
				<br>
			</div>

		</div>
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6 text-light d-flex justify-content-center"
				style="height: 25vh">
				<form action="validate-login" method="post">

					<div class="form-group">
						<label>Username</label> <input type="text" name="username"
							class="form-control">
					</div>

					<div class="form-group">
						<label>Password</label> <input type="password" name="password"
							class="form-control">
					</div>

					<button type="submit" class="btn btn-primary">Login</button>


				</form>

			</div>
		</div>

	</div>

	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="col-12 m-2 text-light d-flex justify-content-center">
					New User
					<div class="col-2">
						<a class="btn btn-primary" href="register.jsp" role="button">Register</a>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">

			<div class="col-12 m-2 text-light d-flex justify-content-center">
				<%
						if (errorMessage != "") {
					%>
				<div class="alert alert-light m-0 bg-dark border-dark" role="alert">
					<%=errorMessage%>
				</div>

				<%
						}
					%>
			</div>

		</div>
	</div>

</body>
</html>
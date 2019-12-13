<%@ include file="header.jsp"%>

<%
	String errorMessage = "";
	if (session.getAttribute("ERROR") != null) {
		errorMessage = (String) session.getAttribute("ERROR");
		session.removeAttribute("ERROR");
	}
%>
<title>Register</title>
<body class="bg-dark">
	<div class="container">
		<div class="row">

			<div
				class="col-12 text-light d-flex justify-content-center align-items-center"
				style="height: 100px">
				<h4>Please fill the details</h4>
				<br>
			</div>

		</div>
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6 text-light d-flex justify-content-center"
				style="height: 60vh">

				<form action="register-servlet" method="post">
					<div class="form-group">
						<div class="form-group">
							<label>Username</label> <input type="text" name="username"
								class="form-control">
						</div>
						<label>Email address</label> <input type="email" name="email"
							class="form-control" aria-describedby="emailHelp">
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password" name="password"
							class="form-control">
					</div>

					<button type="submit" class="btn btn-primary">Register</button>
					<a class="btn btn-primary" href="login.jsp" role="button">Login</a>
					<%
						if (errorMessage != "") {
					%>
					<div class="alert alert-light m-0 bg-dark border-dark" role="alert">
						<%=errorMessage%>
					</div>

					<%
						}
					%>

				</form>


			</div>

		</div>

	</div>
</body>
</html>
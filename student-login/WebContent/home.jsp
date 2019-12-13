<%@page import="java.util.ArrayList"%>
<%@ include file="header.jsp"%>
<title>Home</title>

<%
	if (session.getAttribute("CHECK_SESSION") == null) {
		response.sendRedirect("login.jsp");
	}
%>

<body class="bg-dark">

	<div class="container-fluid">
		<div class="row">
			<div class="col d-flex justify-content-left">
				<a href="log-out"><button type="button" class="btn btn-primary">Log
						Out</button> </a>
			</div>
		</div>

		<div class="row">

			<div class="col-12 m-3 p-0 text-light d-flex justify-content-left">
				<h4>Hello, Student</h4>
			</div>
		</div>
	</div>
	<div class="container"></div>
	<div class="container">
		<div class="row">
			<div class="col-12 text-light d-flex justify-content-center">
				<h4>Courses available</h4>
			</div>
		</div>
	</div>
	<%
		ArrayList<String> list = new ArrayList<String>();
		list.add("PG-DAC");
		list.add("PG-DITISS");
		list.add("PG-DIOT");
		list.add("PG-DAI");
		list.add("PG-DMC");
		list.add("PG-DBDA");
	%>

	<%
		for (int i = 0; i < list.size(); i++) {
	%>
	<div class="container">
		<div class="row">
			<div
				class="col-12 bg-success m-1 h3 text-dark d-flex justify-content-center align-items-center"
				style="height: 20vh">
				<%
					String course = list.get(i);
				%>
				<%=course%>
			</div>
		</div>
	</div>

	<%
		}
	%>


	<div class="container">
		<div class="row">
			<div class="col-12">
				<a href="changeusername.jsp">Change Username</a>
			</div>
		</div>
	</div>
	
	
	<div class="container">
		<div class="row">
			<div class="col-12">
				<a href="deleteuser.jsp">delete user</a>
			</div>
		</div>
	</div>
</body>
</html>
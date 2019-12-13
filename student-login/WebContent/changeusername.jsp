<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="change-username" method="post">

		<div class="form-group">
			<label>Username</label> <input type="text" name="username"
				class="form-control">
		</div>

		<div class="form-group">
			<label>New Username</label> <input type="text" name="changeuser"
				class="form-control">
		</div>
	  	
		<div class="form-group">
			<label>Password</label> <input type="text" name="changeuser"
				class="form-control">
		</div>
		
		<div class="form-group">
			<label>Email Id</label> <input type="email" name="email"
				class="form-control">
		</div>

		<button type="submit" class="btn btn-primary">Submit</button>


	</form>
</body>
</html>
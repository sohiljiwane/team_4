<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="delete-user" method="post">

					<div class="form-group">
						<label>Username</label> <input type="text" name="username"
							class="form-control">
					</div>

					<div class="form-group">
						<label>Password</label> <input type="password" name="password"
							class="form-control">
					</div>

					<button type="submit" class="btn btn-primary">Confirm</button>


				</form>
</body>
</html>
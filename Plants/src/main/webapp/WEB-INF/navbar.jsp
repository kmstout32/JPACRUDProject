<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nav Bar</title>
</head>
<body>
	<div class="topnav">
		<a class="active" href="home.do">Home</a> <a href="create.do">Create</a>
		<a href="delete.do">Delete</a> <a href="">About</a>
		<form action="getPlant.do" method="GET">
			Plant ID: <input type="text" name="pid" /> <input type="submit"
				value="Show Plant" />
		</form>
	</div>
</body>
</html>
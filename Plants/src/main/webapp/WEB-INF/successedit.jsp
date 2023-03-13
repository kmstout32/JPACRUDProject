<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Successful edit</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
	
<link rel="stylesheet" href="css/stylesheet.css">
</head>
<body>
<jsp:include page="navbar.jsp"/>

	<div class="text-dark" role="success">
		<h1>Plant success Edit!</h1>
	</div>
	<form action="home.do">
		<input type="submit" value="Return Home">
	</form>
</body>
</html>
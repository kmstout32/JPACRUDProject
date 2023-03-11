<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Plant Info</title>
<jsp:include page="bootstrapHead.jsp" />
<link rel="stylesheet" href="css/stylesheet.css">

</head>
<body>
	<div class="topnav">
		<a class="active" href="home.do">Home</a> <a href="create.do">Create</a>
		<a href="addplant.do">Update</a> <a href="delete.do">Delete</a> <a
			href="show.do">About</a>
	</div>
	
	<div>
		<h5>${plant.name}</h5>
		<p>${plant.description}</p>
		<p>${plant.price}</p>
		

	</div>
	<form action="update.do" method="GET">
		<input type="text" name="id" placeholder="Enter Plant ID"
			value="${plant.id}"> <input type="submit" value="Update">
	</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="bootstrapHead.jsp" />
<link rel="stylesheet" href="css/stylesheet.css">
</head>
<body class="text-center">
	<div class="topnav">
		<a class="active" href="home.do">Home</a> <a href="create.do">Create</a>
		<a href="update.do">Update</a> <a href="delete.do">Delete</a> <a
			href="">About</a>
	</div>
	<h1>Update Plant</h1>

	<form method="POST" action="updateplant.do">
			<input type="number" name="id" value="${plant.id}">
		<b><label for="name">Name:</label></b> <br> <input id="name"
			name="name" type="text" required> <br> <b><label
			for="imageUrl">Image URL:</label></b> <br> <input id="imageUrl"
			name="imageUrl" type="text" required> <br> <b><label
			for="price">Avg. Price</label></b><br> <input id="price"
			name="price" type="number" step="0.01" min="0.01" required> <br>
		<label for="description">Description:</label><br>
		<textarea name="description" required>${plant.description}</textarea>
		<br>
		<div>
			<b><label for="lighting">Lighting Required:</label></b> <select
				id="lighting" name="lighting" required>
				<option value="High">High</option>
				<option value="Medium">Medium</option>
				<option value="Low">Low</option>

			</select><br>
		</div>
		<br>




		<p>
			<em><small>Ensure all fields are complete</small></em>
		</p>
		<input type="submit">
	</form>
</body>
</html>
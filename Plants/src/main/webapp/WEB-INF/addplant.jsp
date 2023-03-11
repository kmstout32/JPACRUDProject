<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Plant</title>
</head>
<body class="text-center">

	<div class="topnav">
	<a class="active" href="home.do">Home</a>
	<a href="addplant.do">Create</a>
	<a href="update.do">Update</a>
	<a href="delete.do">Delete</a>
	<a href="">About</a>
	</div>
	<h2>Enter the following information about the plant below</h2>
	<form action="addplant.do" method="POST">

		<b><label for="name">Name:</label></b> <br> <input id="name"
			name="name" type="text" required> <br> <b><label
			for="imageUrl">Image URL:</label></b> <br> <input id="imageUrl"
			name="imageUrl" type="text" required> <br> <b><label
			for="price">Avg. Price</label></b><br> <input id="price"
			name="price" type="number" step="0.01" min="0.01" required> <br>
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
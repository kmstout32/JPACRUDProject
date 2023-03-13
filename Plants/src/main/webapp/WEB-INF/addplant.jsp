<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Plant to Records</title>
<jsp:include page="bootstrapHead.jsp" />
<link rel="stylesheet" href="css/stylesheet.css">
</head>
<body class="text-center">
	<jsp:include page="navbar.jsp" />

	<h1>Enter the following information about the plant below</h1>
	<form action="addplant.do" method="POST">

		<b><label for="name">Name:</label></b> <br> <input id="name"
			name="name" type="text" required> <br>  <br> <b><label
			for="price">Avg. Price:</label></b><br> <input id="price"
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
		<div>
			<b><label for="watering">Watering Required:</label></b> <select
				id="watering" name="watering" required>
				<option value="High">High</option>
				<option value="Med-High">Mid-High</option>
				<option value="Medium">Medium</option>
				<option value="Low-Med">Low-Med</option>
				<option value="Low">Low</option>
			</select><br>
		</div>
		<div>
			<b></b><p>Is the plant toxic to pets?</p></b>
			<input type="radio" id="toxicity" name="toxicity" value="Yes">
			<label for="toxicity">Yes</label><br> <input type="radio"
				id="toxicity" name="toxicity" value="No"> <label for="css">No</label><br>
		</div>
		<b><label for="origin">Country of Origin:</label></b> <br> <input
			id="origin" name="origin" type="text" required> <br> <br>




		<p>
			<em><small>Ensure all fields are complete</small></em>
		</p>
		<input type="submit">
	</form>
</body>
</html>
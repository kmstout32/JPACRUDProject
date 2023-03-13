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
	<jsp:include page="navbar.jsp" />

	<h1>Update Plant</h1>

	<form method="POST" action="updateplant.do">
		<input type="hidden" name="id" value="${plant.id}"> <b><label
			for="name">Name:</label></b><br> <input id="name" name="name"
			type="text" placeholder="${plant.name} " > <br>
		<b><label for="imageUrl">Image URL:</label></b> <br> <input
			id="imageUrl" name="imageUrl" type="text" > <br>
		<b><label for="price">Avg. Price</label></b><br> <input
			id="price" name="price" type="number" step="0.01" min="0.01"
			placeholder="${plant.price}" required> <br> <label
			for="description">Description:</label><br>
		<textarea name="description" required>${plant.description}</textarea>
		<br>
		<div>
			<b><label for="lighting">Lighting Required:</label></b> <select
				id="lighting" name="lighting" >
				<option value="High">High</option>
				<option value="Medium">Medium</option>
				<option value="Low">Low</option>
			</select><br>
		</div>
		<div>
			<b><label for="watering">Watering Required:</label></b> <select
				id="watering" name="watering" >
				<option value="High">High</option>
				<option value="Med-High">Mid-High</option>
				<option value="Medium">Medium</option>
				<option value="Low-Med">Low-Med</option>
				<option value="Low">Low</option>
			</select><br>
		</div>
		<div>
		<p>Is the plant toxic to pets?</p>
		<input type="radio" id="toxicity" name="toxicity" value="Yes">
		<label for="toxicity">Yes</label><br> <input type="radio"
			id="toxicity" name="toxicity" value="No"> <label for="css">No</label><br>
		</div>
		<b><label for="origin">Country of Origin</label></b> <br> <input
			id="origin" name="origin" type="text" required> <br>




		<p>
			<em><small>Ensure all fields are complete</small></em>
		</p>
		<input type="submit">
	</form>
</body>
</html>
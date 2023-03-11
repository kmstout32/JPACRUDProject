<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Plant Parenthood</title>
<jsp:include page="bootstrapHead.jsp" />
  <link rel="stylesheet" href="css/stylesheet.css">
 

</head>
<body>

 <a class="active" href="#home">Home</a>
  <a href="create.do">Create</a>
  <a href="update.do">Update</a>
<a href="delete.do">Delete</a>
  <a href="show.do">About</a>
 
	<h1>Welcome to the Plant Store</h1>
	<form action="getPlant.do" method="GET">
		Plant ID: <input type="text" name="pid" /> <input type="submit"
			value="Show Plant" />
	</form>
	<!-- show list of films link -->
	<table class="table table-striped table-hover">
		<thead>
			<th>ID</th>
			<!-- header -->
			<th>Name</th>
			<!--header  -->
		</thead>
		<tbody>
			<c:forEach var="film" items="${plants}">
				<tr>
					<td>${plant.id}</td>
					<td><a href="getFilm.do?fid=${plant.id}">${plant.name}</a></td>
				<tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
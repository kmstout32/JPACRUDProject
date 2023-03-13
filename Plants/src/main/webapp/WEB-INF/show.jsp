<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Plant Info</title>
<jsp:include page="bootstrapHead.jsp" />
<link rel="stylesheet" href="css/stylesheet.css">

</head>
<body>
	<jsp:include page="navbar.jsp"/>

	<c:if test="${not empty plant}">
		<table class="showplant">
			<c:if test="${not empty plant}">
				<tr>
					<th>Name:</th>
					<td>${plant.name}</td>
				</tr>
			</c:if>
			<c:if test="${not empty plant.description}">
				<tr>
					<th>Description</th>
					<td>${plant.description}</td>
				</tr>
			</c:if>
			<c:if test="${not empty plant.price}">
				<tr>
					<th>Avg. Price</th>
					<td>${plants.price}</td>
				</tr>
			</c:if>
			<c:if test="${not empty plant.watering}">
				<tr>
					<th>Watering Requirements<th>
					<td>${plant.watering}</td>
				</tr>
			</c:if>
			<c:if test="${not empty plant.toxicity}">
				<tr>
					<th>Toxic to Pets</th>
					<td>${plant.toxicity}</td>
				</tr>
			</c:if>
			<c:if test="${not empty plant.origin}">
				<tr>
					<th>Origin</th>
					<td>${plant.origin}</td>
				</tr>
			</c:if>
			<c:if test="${not empty plant.lighting}">
				<tr>
					<th>Lighting Requirement</th>
					<td>${plant.lighting}
					</td>
				</tr>
			</c:if>
		</table>
	</c:if>
	<form action="update.do" method="GET">
		<input type="hidden" name="id"
			value="${plant.id}"> <input type="submit" value="Update">
	</form>


</body>
</html>
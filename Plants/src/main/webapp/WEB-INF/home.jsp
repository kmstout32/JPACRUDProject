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
<jsp:include page="navbar.jsp"/>
	<img src="images/JPALogo.jpeg" alt="Plant Parenthhood Logo"
		height="200px" width="400px">

	<h1>Here for all your indoor plant needs!</h1>
	<!-- show list of films link -->
	<table class="table table-striped table-hover">
		<thead>
			<th>ID</th>
			<!-- header -->
			<th>Name</th>
			<!--header  -->
		</thead>
		<tbody>
			<c:forEach var="plant" items="${plants}">
				<tr>
					<td>${plant.id}</td>
					<td><a href="getPlant.do?pid=${plant.id}">${plant.name}</a></td>
				<tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
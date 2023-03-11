<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Plant Parenthood</title>
<jsp:include page="bootstrapHead.jsp" />

<link rel="stylesheet" href="webapp/css/stylesheet.css">
</head>
<body>
	<h1>Welcome to the Plant Store</h1>
	<form action="getPlant.do" method="GET">
		Plant ID: <input type="text" name="pid" /> <input type="submit"
			value="Show Plant" />
	</form>
	<c:choose>
		<c:when test="${empty plants }"> No Plants</c:when>
		<c:otherwise>
			<c:forEach var="plant" items="${plants}">
				<!-- Display a table -->
				<table class="table table-striped table-hover">
					<thead>
						<th>ID</th>
						<!-- header -->
						<th>Plant Name</th>
						<!--header  -->
					</thead>
					<tbody>

						<tr>
							<td>${plant.id}</td>
							<td><a href="getPlant.do?pid=${plant.id}">${plant.name}</a></td>
						<tr>
					</tbody>
				</table>
			</c:forEach>

		</c:otherwise>


	</c:choose>


	
</body>
</html>
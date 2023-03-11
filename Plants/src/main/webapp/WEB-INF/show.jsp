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
	<div>
		<h5>${plant.name}</h5>
		<p>${plant.description}</p>
		
	</div>
</body>
</html>
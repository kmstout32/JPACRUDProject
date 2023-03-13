<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Plant Record</title>
<jsp:include page="bootstrapHead.jsp" />
<link rel="stylesheet" href="css/stylesheet.css">
</head>
<body class="text-center">
	<jsp:include page="navbar.jsp"/>
	<h1>Enter the plant id you would like to delete:</h1>
	<form action="deleteplant.do" method="POST">
		Plant ID: <input type="text" name="id" /> <input type="submit"
			value="Delete Plant" />
	</form>
</body>
</html>
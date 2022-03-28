<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Trainer</title>
<style>
.btn {
	background-color: white;
	color: black;
	padding: 5px 20px;
	margin: 5px 0px;
	border-radius: 10px;
	outline: none;
	border: none;
	box-shadow: 0px 3px 10px rgba(0, 0, 0, 0.2);
	text-decoration: none;
}

.btn-danger {
	background-color: lightcoral;
}

.btn-primary {
	background-color: lightblue;
}
</style>
</head>
<body>

	<%
		String id = request.getParameter("id");
		id = id == null ? "0" : id;
		String name = request.getParameter("name");
	%>
	<h1>
		Are you sure you want to delete
		<%=name + "'s"%>
		account with id
		<%=id%>?
	</h1>
	<a href="delete-trainer?id=<%=id%>" class="btn btn-danger">Yes</a>
	<a href="viewTrainers.jsp" class="btn btn-primary">No</a>


	<%
		String message = request.getParameter("message");
		message = message == null ? "" : "<h3>" + message + "</h3>";
		out.println(message);
	%>


</body>
</html>
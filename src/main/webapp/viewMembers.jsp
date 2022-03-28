<%@page import="com.quest.entities.Account"%>
<%@page import="java.util.List"%>
<%@page import="com.quest.repos.GymRespository"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>View Members</title>
<style>
table {
	border-collapse: collapse;
}

th, td {
	padding: 10px 20px;
}

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

#img {
	width: 19%;
	height: 9%;
	margin-left: 12px;
	border-radius: 50px;
}
</style>
</head>
<body>

	<div
		class="navbar navbar-expand-sm navbar-expand-md navbar-expand-lg navbar-dark bg-dark sticky-top">
		<a class="navbar-brand" href="index.jsp"><img id="img"
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfILa4ceYWtPvo_v72g4hhKzmA_o1aVx5SQ&usqp=CAU">Home</a>

		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse " id="navbarTogglerDemo01">
			<ul class="navbar-nav mx-auto mb-2 mb-lg-0">
				<li class="nav-item "><a class="nav-link "
					style="font-size: larger;" href="viewTrainers.jsp">View
						Trainers</a></li>
				<li class="nav-item"><a class="nav-link"
					style="font-size: larger;" href="addTrainer.jsp">Add Trainer</a></li>
				<li class="nav-item"><a class="nav-link"
					style="font-size: larger;" href="viewMembers.jsp">View Members</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					style="font-size: larger;" href="viewFeedback.jsp">View
						Feedback</a></li>

			</ul>
		</div>
	</div>
	</div>
	<%
   GymRespository repo = new GymRespository();
   List<Account> accounts = repo.findAllAccounts();
%>


	<h1>View all Members</h1>
	<table border="3">
		<thead>
			<tr>

				<th>ID</th>
				<th>Name</th>
				<th>Age</th>
				<th>Phone Number</th>
				<th>Email</th>
				<th>Gender</th>
				<th>Trainer Type</th>
				<th>Amount</th>


			</tr>

		</thead>


		<tbody>

			<% for(Account account: accounts){ %>

			<tr>
				<td><%=account.getId()%></td>
				<td><%=account.getName()%></td>
				<td><%=account.getAge() %></td>
				<td><%=account.getPhoneNumber()%></td>
				<td><%=account.getEmail() %></td>
				<td><%=account.getGender()%></td>
				<td><%=account.getTrainerType() %></td>
				<td><%=account.getAmount()%></td>
				<td><a href="editMembers.jsp?id=<%=account.getId()%>"
					class="btn btn-primary">Edit</a></td>
				<td><a
					href="deleteMember.jsp?id=<%=account.getId()%>&name=<%=account.getName()%>"
					class="btn btn-danger">Delete</a></td>
			</tr>

			<% } %>




		</tbody>


	</table>
	<br>
	<br>

</body>
</html>
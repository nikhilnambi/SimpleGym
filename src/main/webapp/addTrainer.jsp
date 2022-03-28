<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Trainer</title>
<style>
body {
	background-image: url("images/gym1.jpg");
}

form {
	margin-left: 30%;
	margin-top: 13%;
}

table {
	border-collapse: collapse;
}

td {
	padding-top: 1em;
	padding-bottom: 1em;
}

.btn {
	font-size: 20px;
	margin-left: 12%;
	padding-top: 2px;
}

.box {
	margin-left: 20%;
	margin-top: 20px;
	padding-right: 60px;
	padding-bottom: 6%;
	width: 700px;
	height: 70%;
	border: 1px solid grey;
	box-shadow: 3px 5px 3px;
	border-radius: 25px;
	background-color: rgba(0, 0, 0, 0.5);
}

button {
	background-color: #e2f2ac;
	border-radius: 20px;
	width: 40%;
	height: 30px;
}

input {
	border-radius: 20px;
	border: 1px solid grey;
	height: 20px;
}

#res:hover {
	background-color: #9ec41b;
}

#sub:hover {
	background-color: #9ec41b;
}

td, h4 {
	color: #00ff26;
	font-size: 20px;
}

#img {
	width: 5%;
	height: 2%;
	margin-left: 12px;
	border-radius: 50px;
}

a {
	list-style-type: none;
}

#btnhome {
	width: 5%;
	margin-left: 9px;
	margin-top: 5px;
	height: 7%;
}

select {
	height: 26px;
	border-radius: 20px;
}
</style>
</head>

<body>

	<div class="nav">
		<a href="index.jsp"><img id="img"
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfILa4ceYWtPvo_v72g4hhKzmA_o1aVx5SQ&usqp=CAU"></a>
	</div>
	<button id="btnhome">
		<a href="index.jsp">Home</a>
	</button>

	<div class="box">
		<form action="add-trainer" method="POST" onsubmit=" return validate()">

			<table>
				<br>
				<h2 style="color: white">Add Trainer</h2>
				<tr>
					<td>Name</td>
					<td><input name="name" placeholder="enter name" id="fname"
						pattern="[A-Za-z]{2,20}" type="text" required></td>
					<td><span id="fnameMsg"></span></td>
				</tr>
				<tr>
					<td>Phone number</td>
					<td><input name="phonenumber" id="mobile" type="text"
						placeholder="" required></td>
					<td><span id="numbermsg"></span></td>
				</tr>

				<tr>
					<td>Gender</td>
					<td><input type="radio" name="gender" checked value="male">Male
						<input type="radio" name="gender" value="female">Female</td>
				</tr>

				<tr>
					<td>Experience</td>
					<td><input type="number" name="exp"
						placeholder="experience(years)" required>
				</tr>
				<tr>
					<td>Choose Type</td>
					<td><select name="trainer-type" required>
							<option disabled selected value="">Choose Training</option>
							<option>Premium</option>
							<option>Normal</option>

					</select></td>
				</tr>



			</table>

			<br> <br> <br> <br>
			
			<div class="btn">
			
				<button id="sub" type="submit">Register</button>
				
			</div>

		</form>
	</div>

</body>
</html>
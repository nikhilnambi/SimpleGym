<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<title>Train with us</title>

</head>
<style>
body {
	background-image:
		url("https://cdnb.artstation.com/p/assets/images/images/013/899/861/large/mike-kobzar-warsan-gym-update01-edit.jpg?1541580814");
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



<body>

	<div class="nav">
		<a href="index.jsp"><img id="img"
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfILa4ceYWtPvo_v72g4hhKzmA_o1aVx5SQ&usqp=CAU"></a>
	</div>
	<button id="btnhome">
		<a href="index.jsp">Home</a>
	</button>




	<%
		String message = request.getParameter("message");
		message = message == null ? "" : "<h2 style=text-align:center;>" + message + "</h2>";
		out.println(message);
	%>

	<div class="box">
		<form action="register-account" method="POST"
			onsubmit="return validate()">
			<table>
				<br>
				<tr>
					<td>Name</td>
					<td><input name="fname" placeholder="enter name" id="fname"
						pattern="[A-Za-z]{2,20}" type="text" required></td>
					<td><span id="fnameMsg"></span></td>
				</tr>



				<tr>
					<td>Age</td>
					<td><input type="text" name="age" id="age" required></td>
					<td><span id="agemsg"></span></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input name="email" id="email" type="email"
						placeholder="xyz@abc.com" required></td>
					<td><span id="emailmsg"></span></td>
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


			</table>

			<h4>Want personal Trainer?</h4>
			<select name="trainer-type" required>
				<option disabled selected value="">Choose Training</option>
				<option value="premium;5000">Premium Trainer = 5000
					INR/month</option>
				<option value="normal;3000">Normal Trainer = 3000 INR/month
				</option>
				<option value="no;1200">No Trainer = 1200 INR/month</option>

			</select> <br>
			<br>
			<br>
			<div class="btn">
				<button id="sub" type="submit">Pay & Register</button>
			</div>

		</form>
	</div>


	<script>
		function validate() {

			var regnumber = /^[6-9]\d{9}$/gi;
			var number = document.getElementById('mobile').value;
			var age = document.getElementById('age').value;

			var emailvalue = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
			var email = document.getElementById('email').value;

			if (age <= 15) {

				document.getElementById('agemsg').style.color = 'red';
				document.getElementById('agemsg').innerHTML = 'age should above 16';
				return false;
			} else {

				document.getElementById('agemsg').style.color = 'green';
				document.getElementById('agemsg').innerHTML = 'valid';

			}

			if (!emailvalue.test(email)) {
				document.getElementById('emailmsg').style.color = 'red';
				document.getElementById('emailmsg').innerHTML = 'Invalid email id';
				return false;
			} else {
				document.getElementById('emailmsg').style.color = 'green';
				document.getElementById('emailmsg').innerHTML = 'valid email id';
			}

			if (!regnumber.test(number)) {
				document.getElementById('numbermsg').style.color = 'red';
				document.getElementById('numbermsg').innerHTML = 'Invalid mobile number';

				return false;
			} else {
				document.getElementById('numbermsg').style.color = 'green';
				document.getElementById('numbermsg').innerHTML = 'valid mobile number';

			}

			return true;

		}
	</script>






</body>
</html>
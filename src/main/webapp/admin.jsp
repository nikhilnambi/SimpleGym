<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin Login</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif
}

body {
	background-image:
		url("https://i2.wp.com/designwud.com/wp-content/uploads/2020/11/Fitness-Centre-Interiors.jpg?fit=1144%2C636&ssl=1");
}

.wrapper {
	max-width: 350px;
	min-height: 500px;
	margin-top: 35px;
	margin-left: 40%;
	padding: 40px 30px 30px 30px;
	background-color: transparent;
	border-radius: 15px;
}

.logo {
	width: 80px;
	margin: auto
}

.logo img {
	width: 100%;
	height: 80px;
	object-fit: cover;
	border-radius: 50%;
	box-shadow: 0px 0px 3px #5f5f5f, 0px 0px 0px 5px #ecf0f3, 8px 8px 15px
		#a7aaa7, -8px -8px 15px #fff
}

.wrapper .name {
	font-weight: 600;
	font-size: 1.4rem;
	letter-spacing: 1.3px;
	padding-left: 10px;
	color: white;
}

.wrapper .form-field input {
	width: 100%;
	display: block;
	border: none;
	outline: none;
	background: none;
	font-size: 1.2rem;
	color: solidwhite;
	padding: 10px 15px 10px 10px
}

.wrapper .form-field {
	padding-left: 10px;
	margin-bottom: 20px;
	border-radius: 20px;
	font-size: 10px;
	box-shadow: inset 8px 8px 8px white, inset -8px -8px 8px white;
}

.wrapper .form-field .fas {
	color: white;
}

.wrapper .btn {
	box-shadow: none;
	width: 100%;
	height: 40px;
	background-color: #03A9F4;
	color: #fff;
	border-radius: 25px;
	box-shadow: 3px 3px 3px #b1b1b1, -3px -3px 3px #fff;
	letter-spacing: 1.3px
}

.wrapper .btn:hover {
	background-color: #039BE5
}

.wrapper a {
	text-decoration: none;
	font-size: 0.8rem;
	color: #03A9F4
}

.wrapper a:hover {
	color: #039BE5
}

@media ( max-width : 380px) {
	.wrapper {
		margin: 30px 20px;
		padding: 40px 15px 15px 15px
	}
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

input {
	color: white;
	font-size: 20px;
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


	<div class="wrapper">
		<div class="logo">
			<img
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT28_wJuhJrHzgOyBvOL3JlTpIhOeImIr1nCA&usqp=CAU"
				alt="">
		</div>
		<div class="text-center mt-4 name">
			<strong>Admin</strong>
		</div>
		<form id="login" method="get" action="adminlogincheck.jsp">
			<div class="form-field d-flex align-items-center">
				<span class="far fa-user"></span> <input type="text" name="userName"
					id="userName" placeholder="Username">
			</div>
			<div class="form-field d-flex align-items-center">
				<span class="fas fa-key"></span> <input type="password"
					name="password" id="pwd" placeholder="Password">
			</div>
			<button class="btn mt-3">Login</button>
		</form>
	</div>


</body>


</html>
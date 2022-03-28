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
<title>Welcome Admin</title>
<style>
body {
	background-image: url("images/gym1.jpg");
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
					style="font-size: larger;" href="viewMembers.jsp">View Members</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					style="font-size: larger;" href="viewFeedback.jsp">View
						Feedback</a></li>

			</ul>
		</div>
	</div>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>
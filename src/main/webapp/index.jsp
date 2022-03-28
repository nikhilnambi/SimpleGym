<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
ul {
	margin: 0px;
	padding: 0px;
}

.footer-section {
	background: #151414;
	position: relative;
}

.footer-cta {
	border-bottom: 1px solid #373636;
}

.single-cta i {
	color: #ff5e14;
	font-size: 30px;
	float: left;
	margin-top: 8px;
}

.cta-text {
	padding-left: 15px;
	display: inline-block;
}

.cta-text h4 {
	color: #fff;
	font-size: 20px;
	font-weight: 600;
	margin-bottom: 2px;
}

.cta-text span {
	color: #757575;
	font-size: 15px;
}

.footer-content {
	position: relative;
	z-index: 2;
}

.footer-pattern img {
	position: absolute;
	top: 0;
	left: 0;
	height: 330px;
	background-size: cover;
	background-position: 100% 100%;
}

.footer-logo {
	margin-bottom: 30px;
}

.footer-logo img {
	max-width: 200px;
}

.footer-text p {
	margin-bottom: 14px;
	font-size: 14px;
	color: #7e7e7e;
	line-height: 28px;
}

.footer-social-icon span {
	color: #fff;
	display: block;
	font-size: 20px;
	font-weight: 700;
	font-family: 'Poppins', sans-serif;
	margin-bottom: 20px;
}

.footer-social-icon a {
	color: #fff;
	font-size: 16px;
	margin-right: 15px;
	width: 20%;
	height: 20%;
}

.footer-social-icon i {
	height: 90px;
	width: 90px;
	text-align: center;
	line-height: 38px;
	border-radius: 50%;
}

.facebook-bg {
	background: #3B5998;
	width: 20%;
}

.twitter-bg {
	background: #55ACEE;
}

.google-bg {
	background: #DD4B39;
}

.footer-widget-heading h3 {
	color: #fff;
	font-size: 20px;
	font-weight: 600;
	margin-bottom: 40px;
	position: relative;
}

.footer-widget-heading h3::before {
	content: "";
	position: absolute;
	left: 0;
	bottom: -15px;
	height: 2px;
	width: 50px;
	background: #ff5e14;
}

.footer-widget ul li {
	display: inline-block;
	float: left;
	width: 50%;
	margin-bottom: 12px;
}

.footer-widget ul li a:hover {
	color: #ff5e14;
}

.footer-widget ul li a {
	color: #878787;
	text-transform: capitalize;
}

.subscribe-form {
	position: relative;
	overflow: hidden;
}

.subscribe-form input {
	width: 100%;
	padding: 14px 28px;
	background: #2E2E2E;
	border: 1px solid #2E2E2E;
	color: #fff;
}

.subscribe-form button {
	position: absolute;
	right: 0;
	background: #ff5e14;
	padding: 13px 20px;
	border: 1px solid #ff5e14;
	top: 0;
}

.subscribe-form button i {
	color: #fff;
	font-size: 22px;
	transform: rotate(-6deg);
}

.copyright-area {
	background: #202020;
	padding: 25px 0;
}

.copyright-text p {
	margin: 0;
	font-size: 14px;
	color: #878787;
}

.copyright-text p a {
	color: #ff5e14;
}

.footer-menu li {
	display: inline-block;
	margin-left: 20px;
}

.footer-menu li:hover a {
	color: #ff5e14;
}

.footer-menu li a {
	font-size: 14px;
	color: #878787;
}

#feed {
	text-decoration: none;
}
</style>

</head>
<body>
	<div
		class="navbar navbar-expand-sm navbar-expand-md navbar-expand-lg navbar-dark bg-dark sticky-top">
		<a class="navbar-brand" href="index.html"><img src=""></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse " id="navbarTogglerDemo01">
			<ul class="navbar-nav mx-auto mb-2 mb-lg-0">
				<li class="nav-item "><a class="nav-link active"
					style="font-size: larger;" aria-current="page" href="#">Home</a></li>
				<li class="nav-item"><a class="nav-link"
					style="font-size: larger;" href="register.jsp">Register</a></li>
				<li class="nav-item"><a class="nav-link"
					style="font-size: larger;" href="admin.jsp">Admin</a></li>
				<li class="nav-item "><a class="nav-link"
					style="font-size: larger;" href="contact.jsp">Contact Us</a></li>
				<li class="nav-item "><a class="nav-link"
					style="font-size: larger;" href="about.jsp">About Us</a></li>
			</ul>
		</div>
	</div>
	</div>

	<div class="row">
		<div class="container-fluid w-100 vh-100">
			<div id="carouselExampleControls" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="images/gym4.jpeg" class="d-block w-100 vh-100" alt="">
					</div>
					<div class="carousel-item">
						<img src="images/gym3.jpg" class="d-block w-100 vh-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="images/gym1.jpg" class="d-block w-100 vh-100" alt="...">
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleControls" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleControls" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>
	</div>
	</div>

	<footer class="footer-section">
	<div class="container">
		<div class="footer-cta pt-5 pb-5">
			<div class="row">

				<div class="col-xl-4 col-md-4 mb-30">
					<div class="single-cta">
						<i class="far fa-envelope-open"></i>
						<div class="cta-text">
							<h4>
								<a href="feedback.jsp" id="feed" style="color: white">Feedback
								</a>
							</h4>
							<span>Click Feedback</span>
						</div>
					</div>
				</div>

				<div class="col-xl-4 col-md-4 mb-30">
					<div class="single-cta">
						<i class="fas fa-phone"></i>
						<div class="cta-text">
							<h4>Call us</h4>
							<span>9856225610</span>
						</div>
					</div>
				</div>
				<div class="col-xl-4 col-md-4 mb-30">
					<div class="single-cta">
						<i class="far fa-envelope-open"></i>
						<div class="cta-text">
							<h4>Mail us</h4>
							<span>fitnessworld@info.com</span>
						</div>
					</div>
				</div>


			</div>
		</div>
		<div class="footer-content pt-5 pb-5">
			<div class="row">
				<div class="col-xl-4 col-lg-4 mb-50">
					<div class="footer-widget">
						<div class="footer-logo">
							<a href="index.jsp"><img
								src="https://pbs.twimg.com/media/EAV66FLW4AA1Rj5?format=jpg&name=large"
								class="img-fluid" alt="logo"></a>
						</div>
						<div class="footer-text">
							<p>intentional, progressive workout programs with specific
								nutrition, recovery, and mindset tips along the way. wide range
								of Programs will help you make progress on your own schedule and
								at your speed..</p>
						</div>
						<div class="footer-social-icon">
							<span>Follow us</span> <a href="#"><i
								class="fab fa-facebook-f facebook-bg"></i></a> <a href="#"><i
								class="fab fa-twitter twitter-bg"></i></a> <a href="#"><i
								class="fab fa-google-plus-g google-bg"></i></a>
						</div>
					</div>
				</div>
				<div class="col-xl-4 col-lg-4 col-md-6 mb-30">
					<div class="footer-widget">
						<div class="footer-widget-heading">
							<h3>Useful Links</h3>
						</div>
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="about.jsp">about us</a></li>
							<li><a href="#">services</a></li>
							<li><a href="contact.jsp">Contact us</a></li>

						</ul>
					</div>
				</div>
				<div class="col-xl-4 col-lg-4 col-md-6 mb-50">
					<div class="footer-widget">
						<div class="footer-widget-heading">
							<h3>Subscribe</h3>
						</div>
						<div class="footer-text mb-25">
							<p>Don’t miss to subscribe to our new feeds, kindly fill the
								form below.</p>
						</div>
						<div class="subscribe-form">
							<form action="#">
								<input type="text" placeholder="Email Address">
								<button>
									<i class="fab fa-telegram-plane"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="copyright-area">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-6 text-center text-lg-left">
					<div class="copyright-text">
						<p>Copyright &copy; 2022, All Right Reserved</p>
					</div>
				</div>
				<div class="col-xl-6 col-lg-6 d-none d-lg-block text-right">
					<div class="footer-menu">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">Terms</a></li>
							<li><a href="#">Privacy</a></li>
							<li><a href="#">Policy</a></li>
							<li><a href="contact.jsp">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	</footer>







	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>

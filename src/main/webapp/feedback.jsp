<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
<style>
* {
	box-sizing: border-box;
}

body {
	padding: 1rem;
	color: #212d31;
	font-family: 'Roboto', sans-serif;
}

.contain {
	background-color: #eee;
	max-width: 1170px;
	margin-left: auto;
	margin-right: auto;
	padding: 1em;
}

div.form {
	background-color: #eee;
}

.contact-wrapper {
	margin: auto 0;
}

.submit-btn {
	float: left;
}

.reset-btn {
	float: right;
}

.form-headline:after {
	content: "";
	display: block;
	width: 10%;
	padding-top: 10px;
	border-bottom: 3px solid #ec1c24;
}

.highlight-text {
	color: #ec1c24;
}

.hightlight-contact-info {
	font-weight: 700;
	font-size: 22px;
	line-height: 1.5;
}

.highlight-text-grey {
	font-weight: 500;
}

.email-info {
	margin-top: 20px;
}

::-webkit-input-placeholder { /* Chrome */
	font-family: 'Roboto', sans-serif;
}

.required-input {
	color: black;
}

@media ( min-width : 600px) {
	.contain {
		padding: 0;
	}
}

h3, ul {
	margin: 0;
}

h3 {
	margin-bottom: 1rem;
}

.form-input:focus, textarea:focus {
	outline: 1.5px solid #ec1c24;
}

.form-input, textarea {
	width: 100%;
	border: 1px solid #bdbdbd;
	border-radius: 5px;
}

.wrapper>* {
	padding: 1em;
}

@media ( min-width : 700px) {
	.wrapper {
		display: grid;
		grid-template-columns: 2fr 1fr;
	}
	.wrapper>* {
		padding: 2em 2em;
	}
}

ul {
	list-style: none;
	padding: 0;
}

.contacts {
	color: #212d31;
}

.form {
	background: #fff;
}

form {
	display: grid;
	grid-template-columns: 1fr 1fr;
	grid-gap: 20px;
}

form label {
	display: block;
}

form p {
	margin: 0;
}

.full-width {
	grid-column: 1/3;
}

button, .submit-btn, .form-input, textarea {
	padding: 1em;
}

button, .submit-btn {
	background: transparent;
	border: 1px solid #ec1c24;
	color: #ec1c24;
	border-radius: 15px;
	padding: 5px 20px;
	text-transform: uppercase;
}

button:hover, .submit-btn:hover, button:focus, .submit-btn:focus {
	background: #ec1c24;
	outline: 0;
	color: #eee;
}

.error {
	color: #ec1c24;
}
</style>
</head>
<body>

	<div class="contain">

		<div class="wrapper">

			<div class="form">
				<h4>GET IN TOUCH</h4>
				<h2 class="form-headline">Send us a message</h2>
				<form id="submit-form" method="POST" action="feedback">
					<p>
						<input id="name" class="form-input" pattern="[A-Za-z]{2,20}"
							type="text" name="name" placeholder="Your Name">

					</p>
					<p>
						<input id="phonenumber" class="form-input" type="number"
							name="phonenumber" placeholder="Phone number"> <small
							id="name-error"></small>
					</p>

					<p class="full-width">
						<textarea minlength="10" id="message" cols="30" rows="7"
							name="message" placeholder="Your Message" required></textarea>
						<small></small>
					</p>
					<p class="full-width">
						<input type="checkbox" id="checkbox" name="checkbox" checked>
						Yes, I would like to receive communications by call / email about
						Company's services.
					</p>
					<p class="full-width">
						<input type="submit" class="submit-btn" value="Submit"
							onclick="checkValidations()">
						<button class="reset-btn" onclick="reset()">Reset</button>
					</p>
				</form>
			</div>


			<script>

function checkValidations(){
	var regnumber = /^[6-9]\d{9}$/gi;
	var number = document.getElementById('phonenumber').value;
   
	if (!regnumber.test(number)) {
		document.getElementById('name-error').style.color = 'red';
		document.getElementById('name-error').innerHTML = 'Invalid mobile number';

		return false;
		
	} else {
		document.getElementById('name-error').style.color = 'green';
		document.getElementById('name-error').innerHTML = 'valid mobile number';

	}
	
	return true;

	

}

</script>
</body>
</html>
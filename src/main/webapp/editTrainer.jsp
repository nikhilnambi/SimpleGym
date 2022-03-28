<%@page import="com.quest.entities.Trainers"%>
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

<title>Edit Trainer Details</title>
<style>
#img {
	width: 19%;
	height: 9%;
	margin-left: 12px;
	border-radius: 50px;
}

form {
	margin-top: 6%;
	margin-left: 40%;
}

h2 {
	margin-top: 4%;
	text-align: center;
}

button {
	border-radius: 20px;
	background-color: lightgreen;
}

button:hover {
	background-color: green;
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
  String id = request.getParameter("id");
  
  id = id==null?"0":id;
  

  GymRespository repo = new GymRespository();
  Trainers trainer = repo.getTrainerById(Integer.parseInt(id));
  
 

%>

	<h2>Edit Trainer</h2>
	<form action="edit-trainer" method="POST">

		Id <input type="number" placeholder="Id" name="id" required readonly
			value="<%=id%>"><br><br>
			
	    Name <input type="text"
			placeholder="Name" name="username" required
			value="<%=trainer.getName()%>"><br><br>
			
		Phonenumber<input type="number" placeholder="" name="phone-number"
			required value="<%=trainer.getPhonenumber()%>" required><br><br> 
			
	    Experience<input type="number" placeholder=""
			name="experience" required value="<%=trainer.getExperience()%>"><br><br> 
			
		Trainer Type<select name="trainer-type" required>
		
			<option disabled selected>Select Trainer Type</option>
			
			<option value="Premium"
				<%=trainer.getTrainerType().equals("Premium") ? "selected" : ""%>>Premium</option>
				
			<option value="Normal"
				<%=trainer.getTrainerType().equals("Normal") ? "selected" : ""%>>Normal</option>
		</select> <br> <br>
		
		 Gender:- <input type="radio" name="gender"
			value="male" <%=trainer.getGender().equals("male") ? "checked" : ""%>>male
		
		          <input type="radio" name="gender" value="female"
			  <%=trainer.getGender().equals("female") ? "checked" : ""%>>female

		<br><br>

		<button style="margin-left: 13%;" type="submit">Update</button>

	</form>

	<%
    
      String message = request.getParameter("message");
      message = message == null?"":"<h3>"+message+"</h3>";
   	  out.println(message);
   
   %>
	<br>
	<br>
	<button style="margin-left: 45%;">
		<a href="viewTrainers.jsp">Go Back</a>
	</button>


</body>
</html>
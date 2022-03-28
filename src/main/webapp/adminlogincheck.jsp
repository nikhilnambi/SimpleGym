<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
</head>
<body>

	<%
String uname=request.getParameter("userName");
String pass=request.getParameter("password");
session.setAttribute("uname", uname);
if(uname.equals("admin") && pass.equals("admin"))
{
response.sendRedirect("adminlogin.jsp");    
}

else
{
  
  response.sendRedirect("admin.jsp");    
  out.print("Incorrect");
  
}
   %>



</body>
</html>
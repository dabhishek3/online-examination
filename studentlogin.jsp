<html>
<head><title>Student Login</title></head>
<body>
<%

String username=request.getParameter("uname"); 
String pass=request.getParameter("psw");

if(username.equalsIgnoreCase("cetpa")&& pass.equalsIgnoreCase("1234")){
	response.sendRedirect("studentloginpage.jsp");	
}else
{
response.sendRedirect("project1.html");	
}
%>
</body>
</html>
<html>
<head><title>Admin Login</title></head>
<body>
<%

String username=request.getParameter("uname"); 
String pass=request.getParameter("psw");

if(username.equals("abhishek")&& pass.equals("1234")){
	response.sendRedirect("admin.jsp");	
}else
{
response.sendRedirect("project1.html");	
}
%>
</body>
</html>
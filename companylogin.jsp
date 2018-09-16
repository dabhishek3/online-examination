<html>
<head><title>Company Login</title></head>
<body>
<%

String username=request.getParameter("uname"); 
String pass=request.getParameter("psw");

if(username.equals("cetpa")&& pass.equals("1234")){
	response.sendRedirect("company.jsp");	
}else
{
response.sendRedirect("project1.html");	
}
%>
</body>
</html>
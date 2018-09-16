<html>
<head><title>Registration</title></head>
<body>
<i><h1>COMPANY REGISTRATION CONFIRMED:-</h1></i>

NAME :-<%=request.getParameter("cname") %><br>
CONTACT NO :- <%=request.getParameter("no") %><br>
EMAIL :- <%=request.getParameter("email") %><br>
PASSWORD :- <%=request.getParameter("psw") %><br>
RE-PASSWORD :- <%=request.getParameter("psw-repeat") %><br>
COMPANY ADDRESS :- <%=request.getParameter("caddress") %><br>
COMPANY TYPE :- <%=request.getParameter("ctype") %><br>

</body>
</html>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page errorPage="b.jsp" %>
<html>
<head><title>Registration</title></head>
<body>
<h1><i>Registration Confirmed:-</i></h1>
<br>
<br>
<br>
<br>
<h3>NAME :-<%=request.getParameter("fname") %><%=request.getParameter("lname") %><br></h3>
<h3>CONTACT NO :- <%=request.getParameter("no") %><br></h3>
<h3>EMAIL :- <%=request.getParameter("email") %><br></h3>
<h3>PASSWORD :- <%=request.getParameter("psw") %><br></h3>
<h3>GENDER :- <%=request.getParameter("gender") %></h3>


<%

Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentinfo","root","root");
PreparedStatement ps=conn.prepareStatement("insert into studentinfo value(?,?,?,?,?,?)");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String no=request.getParameter("no");
String email=request.getParameter("email");
String psw=request.getParameter("psw");
String gender=request.getParameter("gender");

ps.setString(1, fname);
ps.setString(2, lname);
ps.setString(3, no);
ps.setString(3, email);
ps.setString(4, psw);
ps.setString(5, gender);
int r=ps.executeUpdate();
out.println("record are afffected"+ r);
conn.close();



%>






</body>
</html>
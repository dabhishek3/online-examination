<HTML>
<head><title>Registration</title></head>
<body>
<h1></h1><i>REGISTRATION CONFIRMED:-</i></h1>
<br>
<br>



<h3>NAME :-<%=request.getParameter("fname") %>&nbsp&nbsp<%=request.getParameter("lname") %><br></h3>
<h3>CONTACT NO :- <%=request.getParameter("no") %><br></h3>
<h3>EMAIL :- <%=request.getParameter("email") %><br></h3>
<h3>PASSWORD :- <%=request.getParameter("psw") %><br></h3>
<h3>RE-PASSWORD :- <%=request.getParameter("pswrepeat") %><br></h3>
<h3>GENDER :- <%=request.getParameter("gender") %></h3>

<%
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentregistration","root","root");
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
}catch(Exception e){
	out.println("error");
}

%>


</body>
</HTML>





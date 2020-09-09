<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.btn{
  display: block;
  background-color:white;
  color: black;
  text-align: center;
  font-size: 20px;
  padding: 16px;
  text-decoration: none;
  font-family: Garamond;
  font-weight: bold;
}
.btn:hover{
  background-color: black;
  color: white;
  border: 1px solid black;
}
footer {
  background-color: #777;
  padding: 20px;
  text-align: center;
  color: white;
}
* {
  box-sizing: border-box;
}
#mytable{
  border-collapse: collapse;
}
ul {
  list-style-type: none;
  margin-left: 0px;
  margin-right: 0px;
  padding: 0;
  overflow: hidden;
  background-color: #333333;
}
body {
  font-family: Garamond;
  padding: 10px;
  margin: 40px;
  background: #f1f1f1;
}
.header {
  padding: 30px;
  text-align: center;
  background: lightgreen;
}
.header h1 {
  font-size: 50px;
}
li {
  float: left;
}
li a {
  display: block;
  color: white;
  text-align: center;
  font-size: 20px;
  padding: 16px;
  text-decoration: none;
}
li a:hover {
  background-color: #111111;
}
.topnav {
  overflow: hidden;
  background-color: #333;
}
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
.leftcolumn {   
  float: left;
  width: 75%;
}
.rightcolumn {
  float: right;
  width: 25%;
  padding-top: 0px;
  background-color: #f1f1f1;
  padding-left: 20px;
}
.fakeimg {
  background-color: #aaa;
  width: 100%;
  padding: 20px;
}
.card {
  background-color: white;
  padding-top: 10px;
  padding-bottom: 20px;
  margin-top: auto;
  margin-right: 0px;
  margin-bottom: auto;
  padding-left: 10px;
  padding-right: 10px;
}
.cardd{
  background-color: #f1f1f1;
  padding-top: 20px;
  padding-bottom: 20px;
  margin-top: auto;
  margin-right: 0px;
  margin-bottom: auto;
  padding-left: 10px;
  padding-right: 10px;
}
.cardddd {
  background-color: white;
  width: 100%;
  padding-left: 10px;
  padding-top: 40px;
  padding-bottom: 40px;
  margin-top: 20px;
  
}
.row:after {
  content: "";
  display: table;
  clear: both;
}
.footer {
  font-size: 10px;
  padding: 20px;
  text-align: center;
  background: #ddd;
  margin-top: 20px;
}
.right{
  float: right;
}
.inputtt{
  padding:10px;
  display:block;
  border:none;
  border:1px solid #000;
  width: 65%;
  margin-left: 0px;
  margin-right: auto;
  }
.btn{
  border:none;
  font-size:23px;
  display:block;
  overflow:hidden;
  padding: 6px 10px;
  text-decoration:none;
  color:white;
  background-color:#000;
  text-align:center;
  font-family: Garamond;
  font-weight: bold;
}
.butn{
  color: white;
  text-align: center;
  font-size: 20px;
  padding: 16px;
  padding-top: auto;
  padding-bottom: auto;
  text-decoration: none;
  background-color: #333333;
  margin-top: 20px;
  margin-bottom: 10px;
  
}
.butn:hover{
  background-color:white;
  color: #000;
  border: 1px solid black;
}
.btn:hover{
  background-color:white;
  color: #000;
  border: 1px solid black;
}
</style>
<title>WELCOME</title>
</head>
<body>


<%
String username1=request.getParameter("username");
String password1=request.getParameter("password");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "sanya";
String userId = "sanyablog";
String password = "sanyablog";
String dbuser;
String dbpass;
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM logincred";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	dbuser = resultSet.getString("username");
	dbpass = resultSet.getString("password");
	if(username1.equals(dbuser)&&password1.equals(dbpass)){
%>
<div class="header">
  <h1>WELCOME <%= resultSet.getString("username")%></h1>
 </div>
<ul>
  <li><a href="/pages/home.jsp">Home</a></li>
  <li><a href="/pages/showblogs.jsp">Blog</a></li>
  <li><a href="/pages/contact.jsp">Contact</a></li>
</ul>
<br>
<%
String driverNamee = "com.mysql.cj.jdbc.Driver";
String connectionUrle = "jdbc:mysql://localhost:3306/";
String dbNamee = "sanya";
String userIde = "sanyablog";
String passworde = "sanyablog";
try {
Class.forName(driverNamee);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connectione = null;
Statement statemente = null;
ResultSet resultSete = null;
%> 
<div class="rightcolumn">
<div class="cardd">
</div>
</div>
<form  method="post" action="/add" style="text-align:center">
<input type="submit" name="Show all Blogs" class="btn right" value="New blog">
</form>
<form align="center" style="padding: 0px 0px 0px 0px;">
<input type="search" class="inputtt" id="myinput" onkeyup="myFunction()" placeholder="search for a blog's name">
</form>
<br>
<div class="row">
<div class="leftcolumn">
<table id="mytable">
<%
try{ 
connectione = DriverManager.getConnection(connectionUrle+dbNamee, userIde, passworde);
statemente=connectione.createStatement();
String sqle ="SELECT * FROM blogs";

resultSete = statemente.executeQuery(sqle);
while(resultSete.next()){
%>
      <tr id="myrow" >
      <td class="cardddd"><a style="font-size:40px;text-decoration:none;color:black;"><%=resultSete.getString("btitle") %></a></td>
      <td class="card"><a class="butn" href="/pages/viewblog.jsp?bno=<%=resultSete.getInt("bno")%>">View</a></td>
      <td class="card"><a class="butn" href="/pages/update.jsp?bno=<%=resultSete.getInt("bno")%>">Edit</a></td>
      <td class="card"><a class="butn" href="/pages/deleteblog.jsp?bno=<%=resultSete.getInt("bno")%>">Delete</a></td> </tr>
 
<%
}
}catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</div>
<%
}
	else{
		%>
<div class="header">
  <h1>sanyasingh.com</h1>
 </div>
<ul>
  <li><a href="/pages/home.jsp">Home</a></li>
  <li><a href="/pages/showblogs.jsp">Blog</a></li>
  <li><a href="/pages/contact.jsp">Contact</a></li>
</ul>
<br>
<h1>WRONG LOGIN CREDENTIALS%></h1>
 <form  method="post" action="loginpage.jsp" style="text-align:center">
 <input style="border-bottom:none;" type="submit" class="btn" value="Go to login page">
 </form>
 <form  method="post" action="blog.jsp" style="text-align:center">
 <input style="border-bottom:none;" type="submit" class="btn" value="Go to blogs">
 </form>
		<%
	}
}
}
catch (Exception e) {
e.printStackTrace();
}
%>
<br>
<footer>
  <p>Copyright © 2020 Sanya Singh. All Rights Reserved</p>
</footer>
<script>
function myFunction() {
  var input, filter, table, tr, i, txtValue, td;
  input = document.getElementById("myinput");
  filter = input.value.toUpperCase();
  table = document.getElementById("mytable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>

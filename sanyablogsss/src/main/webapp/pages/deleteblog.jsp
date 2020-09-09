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
<title>Blog-delete</title>
<style>
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
  background: white;
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
  padding: 6px 14px;
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
</head>
<body>
<div class="header">
  <h1>sanyasingh.com</h1>
 </div>
<ul>
  <li><a href="/pages/home.jsp">Home</a></li>
  <li><a href="/pages/showblogs.jsp">Blog</a></li>
  <li><a href="/pages/contact.jsp">Contact</a></li>
</ul>
<br>
<%
String bno = request.getParameter("bno");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "sanya";
String userId = "sanyablog";
String password = "sanyablog";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
PreparedStatement ps = null;
%>

<%
try{
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
String sql ="DELETE FROM blogs where bno="+bno;
ps = connection.prepareStatement(sql);
int i = ps.executeUpdate();
}
catch (Exception e) {
e.printStackTrace();
}
%>
<%
try{
Connection conn = null;
Statement state = null;
ResultSet result = null;
%>
<div class="rightcolumn">
<div class="card">
      <h3>Sanya Singh</h3>
      <p>follow me on:<br><br>
      <a href="https://www.instagram.com/singhsanya_/"><img src="\images\insta.jpg" height="40"></a>
    <a href="https://www.linkedin.com/in/sanya-singh-94222816a/"><img src="\images\linkedin.jpg" height="40"></a>
   <a href="https://www.pinterest.com/singhsanya2302/boards/"> <img src="\images\pinterest.jpg" height="40"></a>
   <a href="https://twitter.com/singhsanya2302"> <img src="\images\twitter.jpg" height="40"> </a>     
   <a href="mailto:sanyasingh23@outlook.com"> <img src="\images\email.jpg" height="40"></a></article></section>
      </p>    </div>
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
conn = DriverManager.getConnection(connectionUrl+dbName, userId, password);
state=connection.createStatement();
String sql ="SELECT * FROM blogs";

result = state.executeQuery(sql);
while(result.next()){
%>

      <tr id="myrow" >
      <td class="cardddd"><a style="font-size:40px;text-decoration:none;color:black;"><%=result.getString("btitle") %></a></td>
      <td class="card"><a class="butn" href="/pages/viewblog.jsp?bno=<%=result.getInt("bno")%>">View</a></td>
      <td class="card"><a class="butn" href="/pages/update.jsp?bno=<%=result.getInt("bno")%>">Edit</a></td>
      <td class="card"><a class="butn" href="/pages/deleteblog.jsp?bno=<%=result.getInt("bno")%>">Delete</a></td> 
  </tr>
 
<%
}
}catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</div>
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
</body>
</html>
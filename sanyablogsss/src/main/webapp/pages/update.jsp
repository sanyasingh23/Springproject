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
<title>Blog-showblogs-edit</title>
<style>
* {
  box-sizing: border-box;
}
body {
  font-family: Garamond;
  padding: 10px;
  text-align: center;
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
.btn{
  border:none;
  font-size:23px;
  display:block;
  overflow:hidden;
  padding: 6px 16px;
  margin-left: auto;
  margin-right: auto;
  text-decoration:none;
  color:white;
  background-color:#000;
  text-align:center;
  font-family: Garamond;
  font-weight: bold;
}
.inputtt{
  padding:10px;
  display:block;
  border:none;
  border:1px solid #000;
  width: 50%;
  margin-left: auto;
  margin-right: auto;
  }
textarea{
  margin-left: auto;
  margin-right: auto;
  font-size:20px;
  width:800px;
  height:400px;
}
</style>
</head>
<body>
<div class="header">
  <h1>sanyasingh.com</h1>
 </div>
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
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM blogs where bno="+bno;
resultSet = statement.executeQuery(sql);
while(resultSet.next()) {
%>

<form method="post" action="/update" style="text-align:center;" id="update">
<input type="text"  style="font-size:20px;display:none;" name="bno" value="<%=resultSet.getInt("bno") %>"><br><br>
<label style="text-align:center;font-size:25px;"><b>BLOG TITLE</b></label>&emsp;
<input type="text"  style="font-size:20px;" name="btitle" value="<%=resultSet.getString("btitle") %>"><br><br>
<p style="text-align:center;font-size:25px;">BLOG CONTENT</p>&emsp;&ensp;&ensp;&ensp;
<textarea class="inputtt" name="bdesc" form="update" ><%=resultSet.getString("bdesc") %></textarea><br><br>
<input type="submit" class="btn" value="Save">
</form>
<%
}
}
catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
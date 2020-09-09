<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>

<%ResultSet resultset =null;%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Blog View</title>
<style>
<style>
* {
  box-sizing: border-box;
}
footer {
  background-color: #777;
  padding: 20px;
  text-align: center;
  color: white;
}
.header {
  padding: 30px;
  text-align: center;
  background: lightgreen;
}
.header h1 {
  font-size: 40px;
}
body {
  font-family: Garamond;
  padding: 10px;
  margin: 40px;
  background: #f1f1f1;
}
article {
  background-color: #f1f1f1;
  padding: 20px;
}
</style>
</head>
<body>

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
<div class="header">
  
<h1><%=resultSet.getString("btitle") %></h1></div><br>
<article>
      
  <p style="font-size:20px;text-align:center;padding-left:40px;padding-right:40px;"><%=resultSet.getString("bdesc") %></p>
  
</article>
<%
}
}
catch (Exception e) {
e.printStackTrace();
}
%>
<footer>
  <p>Copyright © 2020 Sanya Singh. All Rights Reserved</p>
</footer>
</body>
</html>
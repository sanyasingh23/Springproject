<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="blog.jsp" rel="import" />

<title>Blog-Add a blog</title>
<style>
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
  background: #cccccc;
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
}
.btn{
  border:none;
  font-size:20px;
  display:inline-block;
  padding:8px 16px;
  overflow:hidden;
  text-decoration:none;
  color:white;
  background-color:#000;
  text-align:center;
  font-family: Garamond;
  font-weight: bold;
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

<h1 style="text-align:center;">Add a new blog</h1>
<form method="post" action="/added" style="text-align:center" id="form">
<h3><em> Blog's Title </em></h3>&emsp;
<input type="text" name="btitle" class="inputtt" value="max 50 characters..."><br><br>
<h3 style="text-align:center;"><em>Blog's Content(max:1000 words)</em></h3>&emsp;&ensp;&ensp;&ensp;
<textarea class="inputtt" type="text" name="bdesc" form="form" style="text-align:left;width:700px;height:300px;" >
</textarea><br><br>
<input type="submit" class="btn" value="Add Blog">
</form>

<br><br>
<footer style="font-size:15px;text-align:center;"><br><br><br><br><br> Copyright © 2020 Savya Singh.  All rights reserved.</footer>

</body>
</html>
    
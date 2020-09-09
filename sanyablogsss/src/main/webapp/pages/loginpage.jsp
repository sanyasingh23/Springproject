<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>LOGIN PAGE</title>
<meta charset="ISO-8859-1">
<style>
* {
  box-sizing: border-box;
}
body {
  font-family: Garamond;
margin: 40px;}
article {
  background-color: white;
  padding: 20px;
  color: black;
  font-size: 20px;
  }
footer {
  background-color: #777;
  padding: 20px;
  text-align: center;
  color: white;
}
ul {
  list-style-type: none;
  margin-left: 0px;
  margin-right: 0px;
  padding: 0;
  overflow: hidden;
  background-color: #333333;
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
li .button {
  border: none;
  color: white;
  background-color: #333333;
  text-align: center;
  padding: 16px;
  font-family: Garamond;
  font-size: 20px;
  display: inline-block;
  text-decoration: none;
}

li .button:hover {
  background-color: #111111;
  border: none;
  text-decoration: none;
}
article a{
  text-decoration: none;
  text-align: center;
  color: white;
}
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
input{
padding:8px;
display:block;
border:none;
border-bottom:1px solid #ccc;
width:50%;
}
 </style>
</head>
<body>
<ul>
  <li><a href="/pages/home.jsp">Home</a></li>
  <li><a href="/pages/blog.jsp">Blog</a></li>
  <li><a href="/pages/contact.jsp">Contact</a></li>
</ul>

 <article>
    
  <h2>LOGIN PAGE</h2>
 
 <form method="post" action="loginsign.jsp" >
   <h3><em> Enter Username: </em></h3>&emsp;
<input type="text" name="username"><br>
  <h3><em> Enter Password: </em></h3>&emsp;
<input type="password" name="password"><br>

 <input style="border-bottom:none;" type="submit" class="btn" value="Sign In">
 
</form>
</article>
<br>
<footer>
  <p>Copyright © 2020 Sanya Singh. All Rights Reserved</p>
</footer>

</body>
</html>
    
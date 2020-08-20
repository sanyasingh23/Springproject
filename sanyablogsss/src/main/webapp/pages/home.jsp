<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Sanya Singh - Home</title>
<meta charset="ISO-8859-1">
<style>
* {
  box-sizing: border-box;
}
body {
  font-family: Garamond;
}
article {
  background-color: white;
  padding: 40px;
}
.article{
background-color:#f1f1f1;
  padding: 40px;
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
img{
  float: right;
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
article img{
  white-space: nowrap;
  padding-left: 20px;
  padding-right:30px;
}
}
</style>
</head>
<body>
<ul>
  <li><a href="/pages/home.jsp">Home</a></li>
  <li><a href="/pages/showblogs.jsp">Blog</a></li>
  <li><a href="/pages/contact.jsp">Contact</a></li>
</ul>
<img src="\images\sanya.png" height="210">
<section><article><h1 style="margin-left:20px;font-size:30px;">Sanya Singh</h1><p style="font-size:20px">
My name is Sanya, and I am currently a job seeker. I have a keen interest in full stack development using Spring, Java, HTML and CSS. I am currently pusuing Bachelors in Computer Science Engineering from Mody University of Science and Technology, Lakshmangarh, Rajasthan. I am from Vadodara, Gujarat. My hobbies include calligraphy, singing, playing badminton and sketching.</p>
<a href="https://www.instagram.com/sanyasingh_23/"><img src="\images\insta.jpg" style="float:left;" height="40"></a>
    <a href="https://www.linkedin.com/in/sanya-singh-94222816a/"><img src="\images\linkedin.jpg" style="float:left;" height="40"></a>
   <a href="https://www.pinterest.com/singhsanya2302/boards/"> <img src="\images\pinterest.jpg" style="float:left;" height="40"></a>
   <a href="https://twitter.com/singhsanya2302"> <img src="\images\twitter.jpg" style="float:left;" height="40"> </a>     
   <a href="mailto:sanyasingh23@outlook.com"> <img src="\images\email.jpg" style="float:left;" height="40"></a></article></section>

    <ul>
      <li><button class="button" onclick="openPro('Education')">Education</button></li>
      <li><button class="button" onclick="openPro('Interests')">Interests</button></li>
      <li><button class="button" onclick="openPro('Projects')">Projects</button></li>
    </ul>
 
 <div class="article">
    <div id="Education" class="tag">
  <h2>EDUCATION</h2>
  
  <p style="font-size:20px;">Mody University of Science and Technology: <b>B.Tech. (Computer Science and Engineering) 2018-2022</b></p>
  <p style="font-size:20px;">Bright Day School</p>
  
</div>

<div id="Interests" class="tag" style="display:none;">
  <h2>INTERESTS</h2>
  <p style="font-size:20px;">Full Stack Development, Spring Framework, Agile, Spring Framework</p>
</div>

<div id="Projects" class="tag" style="display:none;">
  <h2>PROJECTS</h2>
  <p style="font-size:20px;">Elementary Spring Boot Project<br>Currency Convertor (C)<br>BookStore Management System (C++) <br> Food Website (HTML, CSS)</p>
</div>
</div>
<br>
<footer>
  <p>Copyright © 2020 Sanya Singh. All Rights Reserved</p>
</footer>
<script>
function openPro(Name) {
  var i;
  var x = document.getElementsByClassName("tag");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  document.getElementById(Name).style.display = "block";  
}
</script>
</body>
</html>
    
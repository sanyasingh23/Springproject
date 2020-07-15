<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<DOCTYPE! html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
  $("#edu").click(function(){
    $("#education").slideToggle("slow");
  });
});
$(document).ready(function(){
  $("#pro").click(function(){
    $("#projects").slideToggle("slow");
  });
});
$(document).ready(function(){
  $("#int").click(function(){
    $("#interests").slideToggle("slow");
  });
});
</script>
<style>
* {box-sizing: border-box;}
.head1 {
  height: 100%;
}
body {
  background-color: #fFF;
}
.header {
  overflow: hidden;
  background-color: #000;
  padding: 20px 10px;
}
.header a{
  font-size: 23px;
  color: #fFF;
  text-decoration: none;
  padding: 10px;
}
.header a:hover {
  background-color: #fFF;
  color: #000;
}
#edu, #pro, #int, #education, #projects, #interests {
  padding: 10px 150px 10px 150px;
  text-align: center;
  background-color: #000;
  border: none;
  color: #fFF;
  font-size: 25px;
  posit6ion: relative;
  margin-left: 20px;
}

#education, #projects, #interests {
  padding: 50px;
  background-color: #c1c1c1;
  display: none;
  color: black;
  font-size: 20px;
}
.foot p {
  position: relative;
  text-align: center;
  background-color: #dedede;
  padding: 8px;
}
</style>
<title>Sanya Singh</title>
</head>
<body>
<div class="head1">
<div class="header">
<a class="active" href="#home">Home</a>
<a href="\pages\blog.jsp">Blog</a>
<a href="#contact">Contact</a>
</div>
<br>
<table>

<tr>
<td>
<img src="\images\sanya.jpg" alt="NA" height="346" width="346" style="float:left;margin-left:50px;"></td>
<td style="font-size:20px;padding:50px;"><h2>Sanya Singh</h2>Hi. My name is Sanya Singh. I am currently pursuing my Bachelors in Computer Science and Engineering from Mody University of Science and Technology, Lakshmangarh, Rajasthan. I am from Vadodara, Gujarat. My hobbies are singing, sketching, swimming, calligraphy and playing badminton. My goal is to be a recognized in my work of field.<hr>
<a href="#"><i style="font-size:33px;float:left;color:black;margin-left:0px;" class="fa">&#xf08c;</i> </a>
<a href="#"><i style="font-size:33px;float:left;color:black;margin-left:50px;" class="fa">&#xf099;</i> </a>
<a href="#"><i style="font-size:33px;float:left;color:black;margin-left:50px;" class="fa">&#xf16d;</i> </a>
<a href="#"><i style="font-size:33px;float:left;color:black;margin-left:50px;" class="fa">&#xf0d2;</i> </a>
</td>
</tr>

</table>
<table>
<tr>
<td>
<p style="font-size:20px;margin-left:50px;">
A secret door concealed in the wall panelling reveals access to your guest suites. The beautiful parquet flooring in the original herringbone pattern is simply exquisite. The aged oak wood, treated only with natural oils, gives the silkiest feel when walked on barefoot.
</p></td>
<td>
<div>

<div id="edu">Education</div>
<div id="education">Mody University of Science and Technology, Lakshmangarh, Rajasthan<br>Bright Day School, Vadodara, Gujarat</div>
<div id="pro">Projects</div>
<div id="projects">Minor Project on Spring Boot Application(Java)<br>Food Information Website(HTML, CSS, JS)<br>Elementary BookStore Management System (C++)<br>Currency Convertor (C)</div>
<div id="int">Interests</div>
<div id="interests">Java, Spring Framework, HTML, Python, Big Data Analytics, Art, Law</div>

</div>
</td>
</tr>

<tr>
<td colspan="2">
<div class="foot">
<p>Copyright © Sanya Singh. All rights reserved.</p>
</div>
</td>
</tr>
</table>
</div>
</body>
</html>
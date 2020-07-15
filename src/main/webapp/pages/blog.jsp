<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}
.mytable table{
    float: left;
    width: 80%;
}
body {
  font-family: Arial;

  background: #f1f1f1;
}

.header {
  padding: 30px;
  font-size: 40px;
  text-align: center;
  background: white;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;

  border: 1px solid #ddd;
  font-size: 18px;
 
}

#myTable th, #myTable td {
  text-align: center;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
 
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
.fakeimg {
  background-color: #fff;
  text-align: center;
  }
  .rightcolumn {
  float:left;
  padding-left: 10px;
  padding-right: 0px;
  width: 20%;
}
.card {
   text-align: center;
   background-color: white;
   padding: 10px;
   margin-top: 20px;
}
.row:after {
  content: "";
  display: table;
  clear: both;
}


</style>
<title>My Blog</title>
</head>
<body>

<div class="header">
  <h2>techshoes.com</h2>
</div>

<form method="post" action="/display">
Enter id: <input type="text" name="bid"><br>
Enter title: <input type="text" name="btitle"><br>
Enter description: <input type="text" name="bdescription"><br>
<input type="submit">
</form>

<form method="post" action="/deleted">
Enter blogid to be deleted: <input type="text" name="bid"><br>
<input type="submit">
</form>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
<div class="mytable">
<table id="myTable">
  <tr>
    <td>1</td>
    <td>Air Jordans</td>
      <h5>Dec 7, 2017</h5>
      <td><div class="fakeimg" style="height:200px;"><img src="https://rukminim1.flixcart.com/image/800/960/j8lxyfk0/shoe/4/m/a/basketball-shoes-10-5-savecart-jordan-blue-white-original-imaeycn5uybnzf9n.jpeg?q=50" height="100%" ></div>
      <p>Released by Nike</p></td>
  </tr>
  <tr>
  <td>2</td>
    <td>Chuck TaylorAll Star</td>
      <td><h5>Sep 2, 2017</h5>
      <div class="fakeimg" style="height:200px;"><img src="https://i.ebayimg.com/images/g/edAAAOSw3HpcioeH/s-l640.jpg" height="100%"></div>
      <p>Released by Converse</p></td>
  </tr>
  <tr>
  <td>${bid}</td>
    <td>${btitle}</td>
      <td><h5>Aug 5, 2017</h5>
      <div class="fakeimg" style="height:200px;"><img src="https://i.ebayimg.com/images/g/edAAAOSw3HpcioeH/s-l640.jpg" height="100%"></div>
      <p>${bdescription}</p></td>
  </tr>
</table>
</div>
<div class="rightcolumn">
    <div class="card">
      <h2>About Me</h2>
      <div class="fakeimg" style="height:100px;padding:0px;"><img src="https://i.pinimg.com/736x/a4/58/33/a45833522725f206992771a2f92ce80b.jpg" height="100%"></div>
      <p>Sanya Singh</p>
    </div>
    
    <div class="card">
      <h3>My Interests</h3>
      <p>Shoes<br>Art<br>Singing</p>
    </div>
  </div>



<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
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

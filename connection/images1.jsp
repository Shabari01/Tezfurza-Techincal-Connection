<%-- 
    Document   : images1
    Created on : Feb 14, 2018, 10:57:57 AM
    Author     : Sabari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <link rel="stylesheet" href="link.css">
<style>
#logo
{
        width: 150px;
	    height: 190px;
		padding-right:50px;
		padding-bottom:80px;
		margin-top:-15px;
}


#event
{
       font-family:algerian;
       color:black;
       font-size:100px;
       text-shadow:0px 0px 5px green;
	   text-align:center;
       
}
#nav
{      font-size: 20px;
	   font-weight: bold;
	   height:100px;
	   width:1365px;
	   background-color:dad702;
	   box-shadow:0px 0px 10px black;
}
.container
{
  padding-top:20px; 
  }
#button
{
    
	color:yellow;
  }
	
#name
	{
	font-family:Matura MT Script Capitals;
	padding-left:400px;
	text-shadow:0px 0px 5px green;
	padding-top:30px;
	padding-right:200px;
	}
  </style>
</head>
<body style="background-image:linear-gradient(#abe9d7,#abe9d7,white)">
>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style.css">
  <script src="css2/bootstrap.min.js"></script>
  <script src="js2/jquery.min.js"></script>
  <header>
  <nav class="navbar navbar-default navbar-fixed-top" id="nav" role="banner">
  
  <div class="navbar-header" id="menu"><class="navbar-toogle" data-target=".navbar-collapse" 
  data-toogle="collapse"
  type="button">
  <span class="sr-only">toogle navigation</span></button>
  <a class="navbar-brand" href="sasurieweb.html">
  <img alt="logo" src="img/logo.png" id="logo">
  </a>
  </div>
  <div class="collapse navbar-collapse navbar-left" id="event">
  <h2 align="left">TEZFUERZA-2018</h2>
  </div>
  <div  id="name">
  <h3 align="right">Think N Link</h3>
  </div>
  </nav>
  </header><br><br><br>
  <p align="right"><font size="4">ID:18021999</font></p>
 <br>
 
 <div class="container" id="button">
       

       <ul class="pager">
       <li class="previous"><a href="#"><</a></li>
       
       <li><a href="#">1</a></li>
       <li><a href="#">2</a></li>
       <li><a href="#">3</a></li>
       <li><a href="#">4</a></li>
       <li class="next"><a href="#">></a></li>
	   </ul>
</div>

<div class="container">
     <p><font size="6">1.King of the Forest<br/></p>
  <div class="row">
    <div class="col-sm-3">
      <img src="image/c1.jpg" height=30% width=70%>
    
    </div>
    <div class="col-sm-3">
      <img src="image/c2.jpg" height=30% width=70%>
      
    </div>
    <div class="col-sm-3">
      <img src="image/c3.jpg" height=30% width=70%>
    </div>
	<div class="col-sm-3">
      <img src="image/3.jpg" height=30% width=70%>
    </div>
  </div>
  <h4>
Answer
<form action="reg.php" method="post">
<input type="text" name="a" required><br/>
<p style="padding-left:400px">
<button type="button" class="btn btn-primary">First Clue</button>
<button type="button" class="btn btn-primary">Second Clue</button>
<button type="button" class="btn btn-primary">Third Clue</button>
<button type="button" class="btn btn-success">Submit</button>



</p>
</div>
</form>
    </body>
</html>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
    <%@ page trimDirectiveWhitespaces="true" %>
<%@page import="java.*" %>
<%
   String ConnectionURL="jdbc:mysql://192.182.183.13:3306/tezfuerza";
   int number = (int) (Math.random() * 4); 
   String numb=Integer.toString(number);
//        out.println("Random number"+number);
        String std_id=(String)session.getAttribute("std_id"); 
  //      out.println(std_id);
   try{
       Class.forName("com.mysql.jdbc.Driver").newInstance();
       Connection con=DriverManager.getConnection(ConnectionURL,"sasurie","sasurieinfotech");
       Statement stmt=con.createStatement();
       if(con!=null){
          // out.println("Yes");
       }
      ResultSet rs =stmt.executeQuery("SELECT * FROM `technical_connection_questions` where id='"+number+"';");
      //ResultSet rs =stmt.executeQuery("SELECT * FROM `image_table` where id='1';");
       while(rs.next())
       { 
           
        String filename=rs.getString("filename");
        //out.print(filename);
        String name=request.getParameter("name");
        String id=rs.getString("id");
        String filename2=rs.getString("filename2");
        String filename3=rs.getString("filename3");
        String filename4=rs.getString("filename4");
        String answer=rs.getString("answer");
        //out.print(answer);
        if(answer!=name){
        //out.println("yes") ;
        }
        else{
            //out.println(name);
        }
      //String demo=request.getParameter("demo");
      //out.println(demo);
      //String name=request.getParameter("uname");  
//out.print("Welcome "+name);  
session.setAttribute("name",numb);
session.setAttribute("std_id",std_id);
   %>
   
       <tr>
           <th></th><!--td><//%=id %></td-->
           <th></th>
       </tr>
       
           <td><!--img src="images/<//%=filename %>"width="200" height="200"></td-->
       
<script>
    function submit(){
        
        var img1=document.getElementById("img1");
        img1.src = "images/<%=filename2 %> ";   
        var y = document.getElementById("myDIV").value;
        //alert(y);
        document.getElementById("s").value=y;
    document.getElementById("demo").innerHTML = y;
        var x = document.getElementById('myDIV');
        document.getElementById("my").disabled = false;
  document.getElementById("di").disabled = false;
    if (x.style.visibility === 'hidden') {
        x.style.visibility = 'hidden';
    } else {
        x.style.visibility = 'hidden';
    }
    }
    /*
	function addTheImage(width,height) 
{     var img = document.createElement('img');
    
    img.width=width;
    img.height=height;
     img.src = "images/<//%=filename2 %> ";   
 document.body.appendChild(img); 
 //var y = document.getElementById("myDIV").value;
    //document.writeln(y);
    alert(y);
    //document.getElementById("s").value=y;
    //document.getElementById("demo").innerHTML = y;
  //var x = document.getElementById('myDIV');
  
  //document.getElementById("my").disabled = false;
  //document.getElementById("div").disabled = false;
  /*  if (x.style.visibility === 'hidden') {
        x.style.visibility = 'hidden';
    } else {
        x.style.visibility = 'hidden';
    }
}   */
</script>
<!--button onclick="addTheImage(200,200)" id="myDIV" value="3">First_clue</button-->
<p id="demo"></p>

<script>
	function addTheSecondImage() 
{   
    //alert("ss");
    var img2=document.getElementById("img2");
        img2.src = "images/<%=filename3 %> ";   
        var y = document.getElementById("my").value;
       // alert(y);
        document.getElementById("s").value=y;
    document.getElementById("demo").innerHTML = y;
        var x = document.getElementById('my');
        document.getElementById("sa").disabled = false;
  document.getElementById("div").disabled = false;
    if (x.style.visibility === 'hidden') {
        x.style.visibility = 'hidden';
    } else {
        x.style.visibility = 'hidden';
    }
    }
        /* var img = document.createElement('img');
    img.width=width;
    img.height=height;
     img.src = "images/<//%=filename3 %> ";   
 document.body.appendChild(img); 
  var y = document.getElementById("my").value;
  document.getElementById("s").value=y;
  alert(y);
    document.getElementById("demo").innerHTML = x;
  var x = document.getElementById('my');
  document.getElementById("sa").disabled = false;
    if (x.style.visibility === 'hidden') {
        x.style.visibility = 'hidden';
    } else {
        x.style.visibility = 'hidden';
    }
} */
</script>
<!--button onclick="addTheSecondImage(200,200) " id="my" value="2" disabled="yes">Second_clue</button-->


<script>
	function addTheThirdImage() 
{    
    //alert("ss");
    var img3=document.getElementById("img3");
        img3.src = "images/<%=filename4 %> ";   
        var y = document.getElementById("sa").value;
      //  alert(y);
        document.getElementById("s").value=y;
    document.getElementById("demo").innerHTML = y;
        var x = document.getElementById("sa");
        document.getElementById("sa").disabled = false;
  document.getElementById("div").disabled = false;
    if (x.style.visibility === 'hidden') {
        x.style.visibility = 'hidden';
    } else {
        x.style.visibility = 'hidden';
    }
    }
        /* var img = document.createElement('img');
    img.width=width;
    img.height=height;
     img.src = "images/<//%=filename4 %> ";   
 document.body.appendChild(img); 
  var y = document.getElementById("sa").value;
  document.getElementById("s").value=y;
  alert(y);
    document.getElementById("demo").innerHTML = x;
  var x = document.getElementById('sa');
  document.getElementById("div").disabled = false;
    if (x.style.visibility === 'hidden') {
        x.style.visibility = 'hidden';
    } else {
        x.style.visibility = 'hidden';
    } 
} */
</script>
<!--button onclick="addTheThirdImage(200,200) " id="sa" value="1" disabled="yes">Third_clue</button-->


<!--div id="counter" >3</div-->

<script type="text/javascript">
function countdown() {
    var i = document.getElementById('counter');
    i.innerHTML = parseInt(i.innerHTML)-1;
    if (parseInt(i.innerHTML)===0) {
       clearInterval(timerId);
       var x = document.getElementById('div');
    if (x.style.visibility === 'hidden') {
        x.style.visibility = 'hidden';
    } else {
        x.style.visibility = 'hidden';
    }
    }
}
var timerId = setInterval(function(){ countdown(); },1000);
</script>
</script>
</body>
<form action="crct.jsp" method="post">
<!--input type="submit" name="btn" id="div" disabled="yes" >
<!--input type="text" name="name" id="name">
<input type="hidden" name="s" id="s"-->
<!--input type="hidden" value="3" id="s" id="s"-->

</form>
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
  #counter{
      font-size:  40px;
      
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
    
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style.css">
  <script src="css2/bootstrap.min.js"></script>
  <script src="js2/jquery.min.js"></script>
  <header>
  <nav class="navbar navbar-default " id="nav" role="banner">
  
  <div class="navbar-header" id="menu"><class="navbar-toogle" data-target=".navbar-collapse" 
  data-toogle="collapse"
  type="button" ></class>
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
  </header><br><div id="id">
  <p align="right"><font size="8">ID:<%=std_id%></font></p></div>
<br><center>
 <div id="counter"  >60</div>
</center>
<div class="container">
     <p><font size="6">1.<br/></p>
  <div class="row">
    <div class="col-sm-3">
      <img src="images/<%=filename %>" height=250px width=250px>
    
    </div>
    <div class="col-sm-3">
        <img src="images/......" height=250px width=250px id="img1">
      
    </div>
    <div class="col-sm-3">
        <img src="images/......." height=250px width=250px id="img2">
    </div>
	<div class="col-sm-3">
      <img src="images/" height=250px width=250px id="img3">
    </div>
  </div>
  <h4>

<p style="padding-left:400px">
<button onclick="submit()" id="myDIV" value="3" class="btn btn-primary">First Clue</button>
<button onclick="addTheSecondImage() " id="my" value="2" disabled="yes" class="btn btn-primary">Second Clue</button>
<button onclick="addTheThirdImage(200,200) " id="sa" value="1" disabled="yes" class="btn btn-primary">Third Clue</button>
<form action="crct.jsp" method="post">
    <!--input type="text" name="name" id="name"-->
    Answer
<input type="text" name="name"id="div" ><br/>
<input type="hidden" name="s" id="s">
<input type="submit" name="btn" id="di" disabled="yes" class="btn btn-success" align=""></button>
</form>


</p>
</div>

    </body>
</html>

       <%
       }
   }catch(Exception e)
   {
       out.println(e);
   }
  %>    
<%-- 
    Document   : rule
    Created on : Feb 13, 2018, 7:21:38 PM
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
 <%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>    
<%@page import="java.*" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
   String ConnectionURL="jdbc:mysql://localhost:3306/image";
   String std_id=request.getParameter("id");
   //out.print(std_id);
   
   try{
       Class.forName("com.mysql.jdbc.Driver").newInstance();
       Connection con=DriverManager.getConnection(ConnectionURL,"root","");
       Statement stmt=con.createStatement();
       if(con!=null){
           //out.println("Yes");
       }
      ResultSet rs =stmt.executeQuery("SELECT * FROM `details` WHERE id='"+std_id+"';");
       while(rs.next())
       { 
           if(std_id!=null){
               
           
         String id=rs.getString("id");
         String name=rs.getString("name");
         String dept=rs.getString("dept");
         String year=rs.getString("year");
         String clg=rs.getString("clg");
           
         //out.println(id);
         //out.println(name);
         //out.println(dept);
         //out.println(year);
         //out.println(clg);
      session.setAttribute("std_id",std_id);
   %>
   
       
  
  <!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css1/bootstrap.css">
  <script src="js1/jquery.min.js"></script>
  <link rel="stylesheet" href="css1/style.css">
  <script src="js1/bootstrap.min.js"></script>
</head>
<style type="text/css">
  #myNavbar
  {
    color:black;

  }
  .text
  {
    margin-left:4%;
    font-size:10px;
    font-style:"Times new roman";
  }
  .rules
  {
    font-size:20px;

  
}
#full
{
  margin:10px;
  margin-left:15%;
}

  
   .navbar
   {
    padding-top:-20px;
   }
   #row1
   {
     border-style: dotted;
      margin-right:3px;
      width:500px;
      margin-top:6px;
    
   }
   #row2
   {
    margin-top:5px;
     border-style:dotted;
     font-size:20px;
     padding-bottom:30px;
     width:500px;

      
   }
   .p
   {
    content: '✓';

   }
   ul p:before {
  content: '✓';
}
#img
{
  padding-left:10px;
  padding-top:-10px;
  
}
#nav
{
  box-shadow: 0px 0px 50px green;
}
#button
{

 border-radius: 25%; 
 background-color: orange;
 box-shadow:black;
 border-style:solid;
    border-width: 5px;
    color:white;
    border-color:black;

}
.ul
{
  margin-right:-10px;
}
.navbar-toggle
{
  border-color:green;
}
.navbar-brand
{
  padding:0px;
}


   
    
   
</style>
<body >
    <form action="indexs.jsp" method="post">
<header>
<nav class="navbar navbar" style="background-color:lightblue;padding-bottom:20px" id="nav">
  <div class="container-fluid" >
    <div class="navbar-header">
      <button type="button " class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <div>
      <a class="navbar-brand" id="img"> <img src="img\logo.png" height="180px" width="150px"></a>
    </div>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active">
          <div class="text" style="padding-left:400px">
          <h1>Tezfureza~2018</h1>
          <h1>Think-n-Link</h1>
        </div>
      </li>
      </div>
  
</nav>
</header>
<div class="container" style="padding-left:80px;padding-top:30px">
  <center><h1  class="normal"><b>Rules & Regulations</b></h1></center></div>


  <div style="background-color:lightgreen">
         <div class="container" style="padding-top:20px" id="full">
    <div class="row" >
          <div class="col-xs-5" id="row1">
                     <h2><b>Details</b></h2>
                     <h3>Id no:-<b><%=id%></b></h3>
                     <h3>Name:-<b><%=name%></b></h3>
                     <h3>College:-<b><%=clg%></b></h3>
                     <p><button class="w3-button w3-blue" id="button">Take Test</button></p>
              </div>
               <div class="col-xs-6" id="row2">
                       <h2><b>Test Details</b></h2>
                       <p>Total no of questions<b>10</b></p>
                      <p>Time for one question<b>80 seconds</b></p>
                      <p>Mark until per question<b>10</b></p>
                      <p>No negative marks</p>
                </div>
    </div>

                  
              
                   <div >
                    <h2>Rules</h2>
                    <h1 class="rules">
                      <ul class="ul">
                    <p> Page refresh is disabled</p>
                    <p> You should not move another tab when test is live</p>
                    <p> Rule3</p>
                    <p> Rule4</p></ul></h1>
                   </div> 
               </div>
             </div>
    </div>
  

</form>
       <%
       }else{
               request.getRequestDispatcher("index.jsp").forward(request,response);
           }
       }
   }catch(Exception e)
   {
       out.println("NO");
   }
  %>


  
    </body>
</html>

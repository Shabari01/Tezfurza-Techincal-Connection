<%-- 
    Document   : index11
    Created on : Feb 14, 2018, 3:16:03 PM
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="index.html" method="post">
        <h1>Thank you for participating <b>Think n Link</b></h1>
        <%
            String std_id=(String)session.getAttribute("std_id"); 
            session.setAttribute("std_id",std_id);
        try{
            
            String number=(String)session.getAttribute("name"); 
            
            String s=request.getParameter("s");
            int a=Integer.parseInt(s);
            //out.print(a);
            int b=(Integer)session.getAttribute("b");
            //out.print(b);
        String name=request.getParameter("name");
    //out.print(name);
    //int a=3;
        String ConnectionURL="jdbc:mysql://192.182.183.13:3306/tezfuerza";
         
        Class.forName("com.mysql.jdbc.Driver").newInstance();
       Connection con=DriverManager.getConnection(ConnectionURL,"sasurie","sasurieinfotech");
       Statement stmt=con.createStatement();
       if(con!=null){
      //     out.println("Yes");
       }
        ResultSet rs =stmt.executeQuery("SELECT * FROM `technical_connection` where id='"+number+"';");
            while(rs.next())
       { 
      String answer=rs.getString("answer");
     //out.print(answer);
      if(!(name.equals(""))){
     if(answer.equals(name)){
         b=a+b;
         //out.println("correct"+b);
         //if(name==null){
             //out.println("hi");
             //a=3;
         
             session.setAttribute("b",b);
         }else{
     //out.println("wrong ans"+b);
     
          session.setAttribute("b",b);
     }
      }else{
          
          session.setAttribute("b",b);
     //out.println(" empty"+b);
      }
       //a=a+1;
       //out.print(b);
     stmt.executeUpdate("insert into technical_connection values('','"+std_id+"','30','"+b+"','','',*)");
     
     request.getSession().invalidate();
       }
     }catch(Exception e)
     {
     }
        
        %>
        <input type="submit" value="Finish test"/>
</form>
    </body>
</html>

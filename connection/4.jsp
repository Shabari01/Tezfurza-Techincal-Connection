<%-- 
    Document   : validation
    Created on : Feb 12, 2018, 2:50:28 PM
    Author     : Sabari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
    
<%@page import="java.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                 
            String number=(String)session.getAttribute("name");  
            //int number=Integer.parseInt(numbe);
            out.print("Hello "+number); 
            
            
            
            String name=request.getParameter("name");
    out.print(name);
    
    String s=request.getParameter("s");
    out.print("hello"+s);
   String ConnectionURL="jdbc:mysql://localhost:3306/image";
   try{
       Class.forName("com.mysql.jdbc.Driver").newInstance();
       Connection con=DriverManager.getConnection(ConnectionURL,"root","");
       Statement stmt=con.createStatement();
       if(con!=null){
           out.println("Yes");
       
      ResultSet rs =stmt.executeQuery("SELECT * FROM `image_table` where id='"+number+"';");
      //ResultSet rs =stmt.executeQuery("SELECT * FROM `image_table` where id='1';");
      
        out.print(" rhello");
       while(rs.next())
       { 
           out.print("hello");
      String answer=rs.getString("answer");
     out.print(answer);
     if(answer.equals(name)){
         
        stmt.executeUpdate("update login set score='"+s+"' where sno='3';");
        request.getRequestDispatcher("3.jsp").forward(request,response);
     }else
     {
         request.getRequestDispatcher("3.jsp").forward(request,response);
         out.println("not same");
     }
       }}
   }catch(Exception e){}
            %>
            
    </body>
</html>

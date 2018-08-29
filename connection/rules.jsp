<%-- 
    Document   : rules
    Created on : Feb 11, 2018, 5:44:19 PM
    Author     : Sabari
--%>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
    
<%@page import="java.*" %>
<%
   String ConnectionURL="jdbc:mysql://localhost:3306/image";
   try{
       Class.forName("com.mysql.jdbc.Driver").newInstance();
       Connection con=DriverManager.getConnection(ConnectionURL,"root","");
       Statement stmt=con.createStatement();
       if(con!=null){
           out.println("Yes");
       }
      //ResultSet rs =stmt.executeQuery("SELECT * FROM `image_table` where id='"+number+"';");
      ResultSet rs =stmt.executeQuery("SELECT * FROM `login` where id='1';");
      out.println("Yes");
      String std_id=request.getParameter("std_id");
      //out.println(std_id);
       while(rs.next())
       { 
           
           //String std_id=request.getParameter("std_id");
           out.print(std_id);
           String id=rs.getString("id");
           String name=rs.getString("name");
           String dept=rs.getString("dept");
           String clg=rs.getString("clg");
           if(std_id.equals(id))
           {
               out.print(std_id);
              // out.print(name);
               //out.print(dept);
               //out.print(clg);
           }
   %>
       <%
       }
   }catch(Exception e)
   {
       out.println("NO");
   }
  %>    
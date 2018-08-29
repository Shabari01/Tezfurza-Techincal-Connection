<%-- 
    Document   : index
    Created on : Jan 20, 2018, 4:24:51 PM
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
      ResultSet rs =stmt.executeQuery("SELECT * FROM `image_table` WHERE id='1';");
       while(rs.next())
       { 
         String filename=rs.getString("filename");
      
      String id=rs.getString("id");
      
   %>
   <table style="width: 100%">
       <tr>
           <th>Id</th><td><%=id %></td>
           <th>Image</th>
       </tr>
       <tr>
           <td><img src="images/<%=filename %>"width="200" height="200"></td>
       </tr>
       
   </table>
       
       <%
       }
   }catch(Exception e)
   {
       out.println("NO");
   }
  %>
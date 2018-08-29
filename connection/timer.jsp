<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
    
<%@page import="java.*" %>
<%
    String name=request.getParameter("name");
    out.print(name);
    
    String s=request.getParameter("s");
    out.print("hello"+s);
   String ConnectionURL="jdbc:mysql://localhost:3306/image";
   //int number = (int) (Math.random() * 5); 
     //   out.println(number);
   try{
       Class.forName("com.mysql.jdbc.Driver").newInstance();
       Connection con=DriverManager.getConnection(ConnectionURL,"root","");
       Statement stmt=con.createStatement();
       if(con!=null){
           out.println("Yes");
       }
      //ResultSet rs =stmt.executeQuery("SELECT * FROM `image_table` where id='"+number+"';");
      ResultSet rs =stmt.executeQuery("SELECT * FROM `image_table` where id='1';");
      

       while(rs.next())
       { 
       //  String filename=rs.getString("filename");

         //String name=request.getParameter("name");
      String id=rs.getString("id");
     // String filename2=rs.getString("filename2");
       //String filename3=rs.getString("filename3");
      String answer=rs.getString("answer");
     out.print(answer);
     if(answer.equals(name)){
        out.println("yes") ;
     }else
     {
         out.println("not same");
     }
   %>
   
       <tr>
           <th>Id</th><td><%=id %></td>
           <th>Image</th>
       </tr>
       
           <td><img src="images/<% /*=filename */%>"width="200" height="200"></td>
       
</body>
<input type="submit" name="btn" id="div">
<input type="text" name="name" id="name">
       <%
       }
   }catch(Exception e)
   {
       out.println("NO");
   }
  %>    
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
    
<%@page import="java.*" %>
<%
   String ConnectionURL="jdbc:mysql://localhost:3306/image";
   int number = (int) (Math.random() * 4); 
   String numb=Integer.toString(number);
        out.println(number);
   try{
       Class.forName("com.mysql.jdbc.Driver").newInstance();
       Connection con=DriverManager.getConnection(ConnectionURL,"root","");
       Statement stmt=con.createStatement();
       if(con!=null){
           out.println("Yes");
       }
      ResultSet rs =stmt.executeQuery("SELECT * FROM `image_table` where id='"+number+"';");
      //ResultSet rs =stmt.executeQuery("SELECT * FROM `image_table` where id='1';");
       while(rs.next())
       { 
         String filename=rs.getString("filename");
         out.print(filename);
         String name=request.getParameter("name");
      String id=rs.getString("id");
      String filename2=rs.getString("filename2");
       String filename3=rs.getString("filename3");
      String answer=rs.getString("answer");
     out.print(answer);
     if(answer!=name){
        out.println("yes") ;
     }else{out.println(name);}
      String demo=request.getParameter("demo");
      out.println(demo);
      //String name=request.getParameter("uname");  
//out.print("Welcome "+name);  
session.setAttribute("name",numb);
   %>
   
       <tr>
           <th>Id</th><td><%=id %></td>
           <th>Image</th>
       </tr>
       
           <td><img src="images/<%=filename %>"width="200" height="200"></td>
       
<script>
	function addTheImage(width,height) 
{     var img = document.createElement('img');
    
    img.width=width;
    img.height=height;
     img.src = "images/<%=filename2 %> ";   
 document.body.appendChild(img); 
 var y = document.getElementById("myDIV").value;
    //document.writeln(y);
    alert(y);
    document.getElementById("s").value=y;
    //document.getElementById("demo").innerHTML = y;
  var x = document.getElementById('myDIV');
    if (x.style.visibility === 'hidden') {
        x.style.visibility = 'hidden';
    } else {
        x.style.visibility = 'hidden';
    }
}   
</script>
<button onclick="addTheImage(200,200)" id="myDIV" value="3">First_clue</button>
<p id="demo"></p>

<script>
	function addTheSecondImage(width,height) 
{     var img = document.createElement('img');
    
    img.width=width;
    img.height=height;
     img.src = "images/<%=filename3 %> ";   
 document.body.appendChild(img); 
  var y = document.getElementById("my").value;
  document.getElementById("s").value=y;
  alert(y);
    document.getElementById("demo").innerHTML = x;
  var x = document.getElementById('my');
    if (x.style.visibility === 'hidden') {
        x.style.visibility = 'hidden';
    } else {
        x.style.visibility = 'hidden';
    }
} 
</script>
<button onclick="addTheSecondImage(200,200) " id="my" value="2">Second_clue</button>
<div id="counter">60</div>

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
<form action="answer.jsp" method="post">
<input type="submit" name="btn" id="div">
<input type="text" name="name" id="name">
<input type="hidden" name="s" id="s">

</form>
       <%
       }
   }catch(Exception e)
   {
       out.println("NO");
   }
  %>    
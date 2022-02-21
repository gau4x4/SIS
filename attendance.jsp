<%-- 
    Document   : uploadatt
    Created on : Nov 6, 2014, 9:35:18 PM
    Author     : GAURAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="Css/style.css" type="text/css" media="all" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function myfunction(){
                alert("MARKS SUCCESSFULLY UPDATED");
            }
        </script>
    </head>
    
    <body>
                <%@page import= "java.sql.*;" %>
<%      String roll =request.getParameter("rollnumber");
        String b1 =request.getParameter("a1");
        String b2=request.getParameter("a2");
        String b3=request.getParameter("a3");
        String b4=request.getParameter("a4");
        String b5=request.getParameter("a5");
        String b6 =request.getParameter("a6");/*
        String b7=request.getParameter("a7");
        String b8=request.getParameter("a8");
        String b9=request.getParameter("a9");
        String b10=request.getParameter("a10");
        String b11=request.getParameter("a11");
        String b12=request.getParameter("a12");
        String b13=request.getParameter("a13");
        String b14=request.getParameter("a14");
        String b15=request.getParameter("a15");
        String b16 =request.getParameter("a16");
        String b17=request.getParameter("a17");
        String b18=request.getParameter("a18");
        String b19=request.getParameter("a19");
        String b20=request.getParameter("a20");
        String b21 =request.getParameter("a21");
        String b22=request.getParameter("a22");
        String b23=request.getParameter("a23");
        String b24=request.getParameter("a24");
        String b25=request.getParameter("a25");
        String b26 =request.getParameter("a26");
        String b27=request.getParameter("a27");
        String b28=request.getParameter("a28");
        String b29=request.getParameter("a29");
        String b30=request.getParameter("a30");
        String b31 =request.getParameter("a31");
        String b32=request.getParameter("a32");
        String b33=request.getParameter("a33");
        String b34=request.getParameter("a34");
        String b35=request.getParameter("a35");
        String b36 =request.getParameter("a36");
        String b37=request.getParameter("a37");
        String b38=request.getParameter("a38");
        String b39=request.getParameter("a39");
        String b40=request.getParameter("a40");
        String b41 =request.getParameter("a41");
        String b42=request.getParameter("a42");
        String b43=request.getParameter("a43");
        String b44=request.getParameter("a44");
        String b45=request.getParameter("a45");
        String b46 =request.getParameter("a46");
        String b47=request.getParameter("a47");
        String b48=request.getParameter("a48");
        String b49=request.getParameter("a49");
        String b50=request.getParameter("a50");
        String b51=request.getParameter("a51");
        String b52 =request.getParameter("a52");
        String b53=request.getParameter("a53");
        String b54=request.getParameter("a54");
        String b55=request.getParameter("a55");
        */
        
        
         out.println("WELCOME:");
         out.println("MARKS UPLOADED NOW ");
         %><a href="home.jsp"></a><%
			
try {
            String url = "jdbc:mysql://localhost:3306/signup";
		    
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,"root","");
		
			
            Statement stmt = conn.createStatement();
		
            ResultSet rs;
		    
                
                   stmt.executeUpdate("INSERT into sesmarks values('"+roll+"','"+b1+"','"+b2+"','"+b3+"','"+b4+"','"+b5+"','"+b6+"')");
  
               
                
			  
			
            conn.close();
			 
        } catch (SQLException e) {
		
            System.out.println("Got an exception! ");
            out.println("DUPLICATE DATA");
        }
		
   
  %>
   <div id="division">
       <a href="dataupdation.jsp"><img src="Images/hawa.png">UPLOAD ADDENDANCE</a><br>
        <a href="loginse.jsp"><img src="Images/hawa.png">BACK</a><br>
    <span>SESSIONAL MARKS</span>
  <div id="form-div">
      <form class="form" id="form1" action="uploadatt.jsp">
      
      <p class="email">
          <input name="rollnumber" type="text"  id="email" value="" placeholder="ROLLNUMBER" />
        <label for="user">ROLLNUMBER</label>
      </p>
          <p class="email">
          <input name="a1" type="text"  id="email" value=""  placeholder="EIT-501" />
        <label for="MN">E-COMMERCE</label>
      </p>
      <p class="web">
          <input type="text" name="a2" id="web"  placeholder="ECS-502"/>
        <label for="type">DAA</label>
      </p>
      <p class="web">
          <input type="text" name="a3" id="web"  placeholder="ECS-504" />
        <label for="type">COMPUTER GRAPHICS</label>
      </p>
          <p class="web">
              <input type="text" name="a4" id="web" placeholder="EHU-501" />
        <label for="type">ECONOMICS</label>
      </p>
      <p class="web">
          <input type="text" name="a5" id="web"  placeholder="EIT-505"/>
          <label for="type">ISCL</label><br>
          
      </p>
          <p class="web">
          <input type="text" name="a6" id="web"  placeholder="ECS-501"/>
        <label for="type">OPERATING SYSTEM</label>
      </p>
          <p class="submit">
              <input type="submit" name="password" id="web" placeholder="PASSWORD" />
        
      </p>
      </div></div>
   <div id="foot">
       <p>@Designed &amp; Developed By GAURAV PATHAK &AMP; MANVENDRA SINGH</p>
   </div>
    </body>
</html>

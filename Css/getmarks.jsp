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
<% 
    
       Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup", "root", "");

Statement statement = connection.createStatement();
ResultSet resultset1;

         String id1 = request.getParameter("rollnumber");   
         String id2=id1;
         ResultSet resultset = statement.executeQuery("select * from sesmarks where rollnumber = '" +id1+ "'") ;
          //resultset1 = statement.executeQuery("select * from signup where rollnumber = '" +id2+ "'") ;
          
            if(!resultset.next()) {
                out.println("Sorry, Could Not Find That ROLLNUMBER. ");
                RequestDispatcher dispatcher=request.getRequestDispatcher("/error2.jsp");
	        dispatcher.forward(request,response);
               
            } 
            else
            {
            
       /*out.print(" <TABLE border=1> ");
          out.print("<TR>");
               out.print("<TH>ROLLNUMBER</TH>");
               out.print("<TH>E-COMMERCE</TH>");
               out.print("<TH>DAA</TH>");
               out.print("<TH>COMPUTER GRAPHICS</TH>");
               out.print("<TH>ECONOMICS</TH>");
               out.print("<TH>ISCL</TH>");
               out.print(" <TH>OPERATING SYSTEM</TH>");
               
               
           out.print("</TR>");

           
           out.print("<TR>");
          
             out.print("  <TD> ");
             out.print( resultset.getString(1));
             out.print("</TD>");
             out.print("  <TD> ");
             out.print( resultset.getString(2));
             out.print("</TD>");
             out.print("  <TD> ");
             out.print( resultset.getString(3));
             out.print("</TD>");
             out.print("  <TD> ");
             out.print( resultset.getString(4));
             out.print("</TD>");
             out.print("  <TD> ");
             out.print( resultset.getString(5));
             out.print("</TD>");
             out.print("  <TD> ");
             out.print( resultset.getString(6));
             out.print("</TD>");
              out.print("  <TD> ");
             out.print( resultset.getString(7));
             out.print("</TD>");
           out.print("</TR>");

        out.print("</TABLE>");*/
            %>
<div id="division">
    <span>GET YOUR RESULT</span>
  <div id="form-div">
      <form action="getmarks.jsp">
      <p class="email">
          <label for="user">ROLLNUMBER</label>
          <input name="rollnumber" type="text"  id="email" value="" placeholder="ROLLNUMBER" />
        
      </p>
          <p class="submit">
              <input name="a1" type="submit"  id="email" value="SUBMIT"  placeholder="EIT-501" />
        
          </p>
      </form></div></div>
   <div id="division">
    <span>SESSIONAL MARKS</span>
  <div id="form-div">
      <form class="form" id="form1" action="uploadatt.jsp">
      
      <p class="email">
          <input name="rollnumber" type="text"  id="email" value="<%out.print( resultset.getString(1));%>" placeholder="ROLLNUMBER" />
        <label for="user">ROLLNUMBER</label>
      </p>
          <p class="email">
              <input name="a1" type="text"  id="email" value="<%out.print( resultset.getString(2));%>"  placeholder="EIT-501" />
        <label for="MN">E-COMMERCE</label>
      </p>
      <p class="web">
          <input type="text" name="a2" id="web" value="<%out.print( resultset.getString(3));%>"  placeholder="ECS-502"/>
        <label for="type">DAA</label>
      </p>
      <p class="web">
          <input type="text" name="a3" id="web" value="<%out.print( resultset.getString(4));%>" placeholder="ECS-504" />
        <label for="type">COMPUTER GRAPHICS</label>
      </p>
          <p class="web">
              <input type="text" name="a4" id="web" value="<%out.print( resultset.getString(5));%>"placeholder="EHU-501" />
        <label for="type">ECONOMICS</label>
      </p>
      <p class="web">
          <input type="text" name="a5" id="web"  value="<%out.print( resultset.getString(6));%>" placeholder="EIT-505"/>
          <label for="type">ISCL</label><br>
          
      </p>
          <p class="web">
          <input type="text" name="a6" id="web" value="<%out.print( resultset.getString(7));%>" placeholder="ECS-501"/>
        <label for="type">OPERATING SYSTEM</label>
      </p>
     <!-- <p class="email">
          <input name="rollnumber" type="text"  id="email" value="<%//out.print( resultset1.getString(1));%>" placeholder="NAME" />
        <label for="user">NAME</label>
      </p>-->
          <%}%>
      </div></div>
   <div id="foot">
       <p>@Designed &amp; Developed By GAURAV PATHAK &AMP; MANVENDRA SINGH</p>
   </div>
    </body>
</html>

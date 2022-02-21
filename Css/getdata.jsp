<%-- 
    Document   : getdata
    Created on : Nov 6, 2014, 11:49:23 AM
    Author     : GAURAV
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<% 
       Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup", "root", "");

Statement statement = connection.createStatement();

         String id1 = request.getParameter("rolln");   

         ResultSet resultset = statement.executeQuery("select * from signup where rollnumber = '" +id1+ "'") ; 

            if(!resultset.next()) {
                out.println("Sorry, could not find that ROLLNUMBER. ");
               // out.println("Welcome"+"\t"+id1+"\t"+"User");
            } 
            else
            {
            
       out.print(" <TABLE border=1> ");
          out.print("<TR>");
               out.print("<TH>FIRST NAME</TH>");
               out.print("<TH>LAST NAME</TH>");
               out.print("<TH>FATHER' FIRST NAME</TH>");
               out.print("<TH>FATHER'SLAST NAME</TH>");
               out.print("<TH>USERNAME</TH>");
               out.print("<TH>PASSWORD</TH>");
               out.print(" <TH>MAIL</TH>");
               out.print("<TH>ROLLNUMBER</TH>");
               out.print("<TH>USERTYPE</TH>");
               out.print("<TH>STREET</TH>");
               out.print("<TH>DISTRICT</TH>");
               out.print("<TH>STATE</TH>");
               out.print("<TH>COUNTRY</TH>");
               out.print("<TH>ZIP</TH>");
               out.print("<TH>COURSE</TH>");
               out.print("<TH>BRANCH</TH>");
               out.print("<TH>YEAR</TH>");
               out.print("<TH>MOBILE NUMBER</TH>");

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
             out.print("</TD>");out.print("  <TD> ");
             out.print( resultset.getString(8));
             out.print("</TD>");
             out.print("  <TD> ");
             out.print( resultset.getString(9));
             out.print("</TD>");
             out.print("  <TD> ");
             out.print( resultset.getString(10));
             out.print("</TD>");
             out.print("  <TD> ");
             out.print( resultset.getString(11));
             out.print("</TD>");
             out.print("  <TD> ");
             out.print( resultset.getString(12));
             out.print("</TD>");
             out.print("  <TD> ");
             out.print( resultset.getString(13));
             out.print("</TD>");
             out.print("  <TD> ");
             out.print( resultset.getString(14));
             out.print("</TD>");
             out.print("  <TD> ");
             out.print( resultset.getString(15));
             out.print("</TD>");
             out.print("  <TD> ");
             out.print( resultset.getString(16));
             out.print("</TD>");
             out.print("  <TD> ");
             out.print( resultset.getString(17));
             out.print("</TD>");
             out.print("  <TD> ");
             out.print( resultset.getString(18));
             out.print("</TD>");
             
             
           out.print("</TR>");

        out.print("</TABLE>");
            }%>
       
</body>
</html>
<%-- 
    Document   : updatestu
    Created on : Nov 7, 2014, 12:38:40 AM
    Author     : GAURAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import= "java.sql.*;" %>
<%
        String s1 = request.getParameter("f_name");
        String s2=request.getParameter("l_name");
        String s3=request.getParameter("f_fname");
        String s4=request.getParameter("f_lname");
        String S19=request.getParameter("dob");
        String s20=request.getParameter("sex");
        String s5=request.getParameter("username");
        String s6=request.getParameter("password");
        String s7=request.getParameter("mail");
        String s8=request.getParameter("rollnumber");
        String s9=request.getParameter("usertype");
        String s10=request.getParameter("street");
        String s11=request.getParameter("district");
        String s12=request.getParameter("state");
        String s13=request.getParameter("country");
        String s14=request.getParameter("zip");
        String s15=request.getParameter("course");
        String s16=request.getParameter("branch");
        String s17=request.getParameter("year");
        String s18=request.getParameter("mobile");
        
         out.println("WELCOME:"+s1);
         out.println("YOU ARE REGISTERED NOW ");
         %><a href="home.jsp"></a><%
			
try {
            String url = "jdbc:mysql://localhost:3306/signup";
		    
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,"root","");
		
			
            Statement stmt = conn.createStatement();
		
            ResultSet rs;
		    
                 
         
         stmt.executeUpdate("UPDATE login SET `Password`="+s6+"' where `rollnumber`='"+s8+"'");       
			  
			
            conn.close();
			 
        } catch (Exception e) {
		
            System.out.println("Got an exception! ");
            out.println(e);
        }
		
   
  %>
    </body>
</html>

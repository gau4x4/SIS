<%-- 
    Document   : changepass
    Created on : Nov 6, 2014, 1:26:02 PM
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

String s21=request.getParameter("input4");
String s22=request.getParameter("password");
String s23=request.getParameter("newpassword");
String s24=request.getParameter("repeatnewpassword");
String s26=request.getParameter("input5");
String s25="";          
			boolean b2=false;
			boolean b3=false;
			
try {
            String url = "jdbc:mysql://localhost:3306/signup";
		

            Connection conn = DriverManager.getConnection(url,"root","");
		
			
            Statement stmt = conn.createStatement();
		     ResultSet rs1;
            ResultSet rs;
			boolean b1=false;
			
		  
           
		    rs1 = stmt.executeQuery("SELECT * FROM signup WHERE `password`='"+s22+"' and `input4`='"+s21+"'");
			while(rs1.next())
			{
			s25 = rs1.getString("input5");
			b1=true;
			}
		
           if(b1)
            {	
			  if(s23.equals(s24))
			  {
                b2=true;			
                
                stmt.executeUpdate("UPDATE login SET `password`='"+s23+"' where `input4`='"+s21+"'");
              }
			   else
			   {
			     if(s25.equals("s"))
				 {
	             RequestDispatcher dispatcher=request.getRequestDispatcher("/loginse.jsp");
	              dispatcher.forward(request,response);
				  }
				  else
				   {
	           RequestDispatcher dispatcher=request.getRequestDispatcher("/loginse.jsp");
	           dispatcher.forward(request,response);
				  }
				  
		       }  
		    }
			else
			{

			     if(s25.equals("s"))
				 {
	             RequestDispatcher dispatcher=request.getRequestDispatcher("/loginse.jsp");
	            dispatcher.forward(request,response);
				  }
				  else
				   {
	             RequestDispatcher dispatcher=request.getRequestDispatcher("/loginse.jsp");
	             dispatcher.forward(request,response);
				  }
		    }  
			b3=s25.equals("s");
            conn.close();
			 
        
		} catch (Exception e) {
		b2=false;
            System.out.println("Got an exception! ");
            out.println(e);
        }
		if(b2)
	            {
			     if(b3)
				 {
	             RequestDispatcher dispatcher=request.getRequestDispatcher("/error.jsp");
	            dispatcher.forward(request,response);
				  }
				  else
				   {
	             RequestDispatcher dispatcher=request.getRequestDispatcher("/error.jsp");
	             dispatcher.forward(request,response);
				  }
	             }
   
  %>
    </body>
</html>


<html>
<head>
<title>REGISTRATION </title>


</head>
<body>
    <H1>ADMIN REGISTERED</h1>
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
        
        String s9=request.getParameter("usertype");
        String s10=request.getParameter("street");
        String s11=request.getParameter("district");
        String s12=request.getParameter("state");
        String s13=request.getParameter("country");
        String s14=request.getParameter("zip");
       
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
		    
                 stmt.executeUpdate("INSERT into signup values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+S19+"','"+s20+"','"+s5+"','"+s6+"','"+s7+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"','"+s13+"','"+s14+"','"+s18+"')");
  
                
			  
			
            conn.close();
			 
        } catch (Exception e) {
		
            System.out.println("Got an exception! ");
            out.println(e);
        }
		
   
  %>
  <h1>FOR SECURITY PERPOSES LOGOUT FIRST AND THEN LOGIN<A>?</A></h1>
  
</body>
</html>  
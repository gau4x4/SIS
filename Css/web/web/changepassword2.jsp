<html>
<head>
<title>changepassword2</title>
</head>
<body>

<%@page import= "java.sql.*;" %>
<%

String s21=request.getParameter("studentid");
String s22=request.getParameter("password");
String s23=request.getParameter("newpassword");
String s24=request.getParameter("confirmpassword");
String s25="";          
			boolean b2=false;
			boolean b3=false;
			
try {
            String url = "jdbc:mysql://localhost:3306/onlineexam";
		

            Connection conn = DriverManager.getConnection(url,"root","");
		
			
            Statement stmt = conn.createStatement();
		     ResultSet rs1;
            ResultSet rs;
			boolean b1=false;
			
		   //rs = stmt.executeQuery("SELECT * FROM login WHERE `Password`='"+s22+"' and `UserId`='"+s21+"'");
           
		    rs1 = stmt.executeQuery("SELECT * FROM login WHERE `Password`='"+s22+"' and `UserId`='"+s21+"'");
			while(rs1.next())
			{
			s25 = rs1.getString("Status");
			b1=true;
			}
		
           if(b1)
            {	
			  if(s23.equals(s24))
			  {
                b2=true;
stmt.executeUpdate("UPDATE login SET `f_name`='"+s1+"',`l_name`='"+s2+"',`f_fname`='"+s3+"',`f_lname`='"+s4+"',`dob`='"+s19+"',`sex`='"+s20+"',`username`='"+s5+"',`password`='"+s6+"',`mail`='"+s7+"',`rollnumber`='"+s8+"',`usertype`='"+s9+"',`street`='"+s10+"',`district`='"+s11+"',`state`='"+s12+"',`country`='"+s13+"',`zip`='"+s14+"',`course`='"+s15+"',`branch`='"+s16+"',`year`='"+s17+"',`mobile`='"+s18+"' where `rollnumber`='"++"'");				
                stmt.executeUpdate("UPDATE login SET `Password`="+s7+"' where `UserId`='"+s21+"'");
                stmt.executeUpdate("UPDATE login SET `Password`='"+s23+"' where `UserId`='"+s21+"'");
              }
			   else
			   {
			     if(s25.equals("s"))
				 {
	             RequestDispatcher dispatcher=request.getRequestDispatcher("/changepasswords.jsp");
	              dispatcher.forward(request,response);
				  }
				  else
				   {
	           RequestDispatcher dispatcher=request.getRequestDispatcher("/changepasswordt.jsp");
	           dispatcher.forward(request,response);
				  }
				  
		       }  
		    }
			else
			{

			     if(s25.equals("s"))
				 {
	             RequestDispatcher dispatcher=request.getRequestDispatcher("/changepasswords.jsp");
	            dispatcher.forward(request,response);
				  }
				  else
				   {
	             RequestDispatcher dispatcher=request.getRequestDispatcher("/changepasswordt.jsp");
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
	             RequestDispatcher dispatcher=request.getRequestDispatcher("/student.jsp");
	            dispatcher.forward(request,response);
				  }
				  else
				   {
	             RequestDispatcher dispatcher=request.getRequestDispatcher("/teacher.jsp");
	             dispatcher.forward(request,response);
				  }
	             }
   
  %>
</body>
</html>  
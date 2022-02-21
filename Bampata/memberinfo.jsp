<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <link rel="stylesheet" href="styles.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Member Information</title>
    </head>
    <body>
    <h2>Member Information</h2>
    <%
     String mid = request.getParameter("mid");
     // get connection
     Connection con = lm.Database.getConnection();
     Statement st = con.createStatement();
     ResultSet rs = st.executeQuery("select * from members where mid = " + mid);
     if (! rs.next())
     {
         out.println("<h4>Sorry! Member Not Found!</h4>");
         out.println("<p/> <a href='javascript:history.back()'>Back</a>");
         return;
     }
    %>
    <table border="1" cellspacing="2"  width="100%">
     <thead>
        <tr>
         <td>Member ID </td>
         <td><%=rs.getString("mid")%></td>
        </tr>
        <tr>
        <td>Member Name </td>
        <td><%=rs.getString("name")%></td>
        </tr>
        
        <tr>
        <td>Email Address </td>
        <td><%=rs.getString("email")%></td>
        </tr>
        
        <tr>
        <td>Date of Joining </td>
        <td><%=rs.getString("djoin")%></td>
        </tr>
        
        <tr>
        <td>Deposit Amount </td>
        <td><%=rs.getString("depamt")%></td>
        </tr>
    </table>
    <%            
     rs.close();
     st.close();
     con.close();
    %>
    <p>
    <a href="javascript:history.back()">Back</a>
    &nbsp; 
    <a href="home.jsp">Home Page</a>
   </body>
</html>

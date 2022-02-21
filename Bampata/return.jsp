<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Return Of Book</title>
    </head>
    <body>
    <jsp:useBean id="user" scope="session" class="lm.UserBean" />
    <jsp:useBean id="trans" scope="page" class="lm.TransactionBean" />
    <table border=1  width=100%>
        <tr>
        <td style="font:700 14pt verdana;background-color:navy;color:white">Result </td>
        </tr>
        
        <tr>
        <td style="font:700 12pt verdana">
    <%
       String bid = request.getParameter("bid");
       if ( trans.returnBook(bid,user.getLname()))  
           out.println("Book Return Is Successful!");
       else
           out.println("Book Return Has Failed!");

    %>
        </td>
        </tr>
    </table>
    <p>
    <a href="home.jsp">Home Page</a> &nbsp;
    <a href="javascript:history.back()">Back</a>
    </body>
</html>

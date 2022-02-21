<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book</title>
    </head>
    <body>
        <jsp:useBean id="book" scope="page" class="lm.BookBean" />
        <jsp:setProperty name="book" property="*"/>
        <table cellpadding=5 border=1 width="100%">
            <tr>
            <td bgcolor="navy" style="color:white"> Result</td>
            </tr>
            <tr>
            <td>
          
          <%
           int bid = book.addBook();
           if ( bid == -1)
               out.println("Sorry! Book could not be added!");
           else
               out.println("Book was added successfully. Book ID = " + bid );
        %>  
            </td>
            </tr>
        </table>
        <a href="javascript:history.back()">Back</a>
        <a href="home.jsp">Home Page</a>
    </body>
</html>

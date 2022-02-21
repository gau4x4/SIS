<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head>
        <link rel="stylesheet" href="styles.css"/>
        <style>
            a { color:white}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        </head>
    <body>
        <table border="0" width="100%" height="100%" >
            <tbody>
                <tr>
                    <td bgcolor="navy" width="25%" valign="top">
                        <a href="issuebook.jsp">Issue Book</a>
                        <br/>
                        <a href="returnbook.jsp">Return Book</a>
                        <p/>
                        
                        <a href="memberinfo.html">Member Information</a>
                        <a href="bookinfo.html">Book Information</a>
                        <p/>
                        <a href="addbook.html">Add Book</a>
                        <br/>
                        <a href="addmember.html">Add Member</a>
                        <p/>
                        
                        <a href="search.jsp">Search for Books</a>
                        <p/>
                        
                        <a href="logout.jsp">Logout</a>
                        <br/>
                    </td>
                    <td valign="top">
                     <jsp:useBean id="user" scope="session" class="lm.UserBean" />
                     <h4>Welcome TO  ${user.fullname} </h4>
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>

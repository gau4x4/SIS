<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="styles.css" rel="stylesheet"/>
    </head>
    <body>
    <center>
    <h1>Library Management</h1>
    <h3>Login</h3>
    <form action="index.jsp" method="post">
    <table >
        <tbody>
            <tr>
                <td>Login Name</td>
                <td><input type="text" name="lname" value="" width="150px" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="pwd" value="" width="150px" /></td>
            </tr>
        </tbody>
    </table>
    <input type="submit" value="Login"/>
    </form>
    <jsp:useBean id="user" scope="session" class="lm.UserBean" />
    <jsp:setProperty name="user" property="*"/>
    <%
     if ( request.getParameter("lname") == null)
             return;
     
     if ( user.login())
         response.sendRedirect("home.jsp");
     else
         out.println("Invalid Login! Please Try Again!");
    %> 
    </center>        
    </body>
</html>

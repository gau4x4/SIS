<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <link rel="stylesheet" href="styles.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search For Books</title>
    </head>
    <body>
    <h2>Search For Books</h2>
    <form action="search.jsp">
        <table border="0">
            <tbody>
                <tr>
                    <td>Title Contains</td>
                    <td><input type="text" name="title" value="" /></td>
                </tr>
                <tr>
                    <td>Written By </td>
                    <td><input type="text" name="author" value="" /></td>
                </tr>
                <tr>
                    <td>Subject</td>
                    <td><select name="subject" width="200px">
                        <option value="all">All</option>
                  <option value="java">Java Language</option>
                  <option value="dnet">.NET</option>
                  <option value="c">C Language</option>
                  <option value="ora">Oracle</option>
                  <option value="others">Others</option>
              </select></td>
                </tr>
                <tr>
                    <td colspan=2><input type="radio" name="status" value="a" checked />Available Books <input type="radio" name="status" value="i" />Issued Books  <input type="radio" name="status" value="all" />All Books</td>
                </tr>
            </tbody>
        </table>
        <input type="submit" value="Search" />
        <input type="button" value="Cancel" onclick="javascript:document.URL='home.jsp'" />
    </form>
    <%
       if (  request.getParameter("title") == null )
             return;
       
      // create condition
      String cond=" 1 = 1 ";
      
      String title = request.getParameter("title");
      if ( title.length() > 0)
          cond += " and  upper(name) like '%" + title.toUpperCase() + "%'";
      String author = request.getParameter("author");
      if ( author.length() > 0)
          cond += " and upper(authors) like '%" + author.toUpperCase() + "%'";
      
      String subject = request.getParameter("subject");
      if ( ! subject.equals("all"))
          cond += " and upper(subject) = '" + subject.toUpperCase() + "'";
           
      String status = request.getParameter("status");
      if ( status.equals("a"))
          cond += " and status = 'a'";
      else
            if ( status.equals("i"))
                  cond += " and status = 'i'";
      
      // out.println(cond);
      
      // get connection
      Connection con = lm.Database.getConnection();
      Statement st = con.createStatement();
      ResultSet rs = st.executeQuery("select * from books where " + cond);
    %>
    <table border="1" cellspacing="2"  width="100%">
        <thead>
            <tr>
                <th>Subject</th>
                <th>Book Name</th>
                <th>Authors</th>
                <th>Publisher</th>
                <th>Purchased On</th>
                <th>Price</th>
                <th>Status</th>
                <th>&nbsp;</th>
            </tr>
        </thead>
      <%
        while ( rs.next())
        {
      %>
        <tr>
        <td><%=rs.getString("subject")%></td>
        <td><%=rs.getString("name")%></td>
        <td><%=rs.getString("authors")%></td>
        <td><%=rs.getString("publisher")%></td>
        <td><%=rs.getString("dp")%></td>
        <td><%=rs.getString("price")%></td>
        <td><%=rs.getString("status")%></td>
        <td>
        
        <%
           if (  rs.getString("status").equals("a"))
              out.println("<a href=issuebook.jsp?bid=" + rs.getString("bid") + ">Issue</a>");
           else
             out.println("<a href=returnbook.jsp?bid=" + rs.getString("bid") + ">Return</a>");
        %>
        </td>
      </tr>
      <%            
       }
       rs.close();
       st.close();
       con.close();
      %>
    </table>
   </body>
</html>

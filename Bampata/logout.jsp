<%
    // terminate session
    session.invalidate();
    response.sendRedirect("index.jsp");
    
%>
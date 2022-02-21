<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<script language="javascript">
    function gotobookinfo()
    {
       document.URL = "bookinfo.jsp?bid=" + form1.bid.value;
    }
</script>
<html>
    <head>
       <link rel="stylesheet" href="styles.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Return  Book</title>
    </head>
    <body>

    <h2>Return Of Book</h2>
    
    <form action="return.jsp" id="form1">
    Book Id : <input type="text" name="bid" value="${param.bid}"  size="5" /> <a href="javascript:gotobookinfo()">Details </a>
    <p/>
    <input type="submit" value="Return Book" />
    </form>
   
    </body>
</html>

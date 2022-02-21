<%-- 
    Document   : dataupdation
    Created on : Nov 6, 2014, 8:05:49 PM
    Author     : GAURAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="Css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
  
<link rel="stylesheet" href="css/template.css" type="text/css" media="screen" title="no title" charset="utf-8" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js" type="text/javascript"></script>

		<script src="js/jquery.validationEngine-en.js" type="text/javascript"></script>
		<script src="js/jquery.validationEngine.js" type="text/javascript"></script>

    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                   <%@page import= "java.sql.*;" %>
<%      String dat =request.getParameter("date");
        String b1 =request.getParameter("a1");
        String b2=request.getParameter("a2");
        String b3=request.getParameter("a3");
        String b4=request.getParameter("a4");
        String b5=request.getParameter("a5");
        String b6 =request.getParameter("a6");
        String b7=request.getParameter("a7");
        String b8=request.getParameter("a8");
        String b9=request.getParameter("a9");
        String b10=request.getParameter("a10");
        String b11=request.getParameter("a11");
        String b12=request.getParameter("a12");
        String b13=request.getParameter("a13");
        String b14=request.getParameter("a14");
        String b15=request.getParameter("a15");
        String b16 =request.getParameter("a16");
        String b17=request.getParameter("a17");
        String b18=request.getParameter("a18");
        String b19=request.getParameter("a19");
        String b20=request.getParameter("a20");
        String b21 =request.getParameter("a21");
        String b22=request.getParameter("a22");
        String b23=request.getParameter("a23");
        String b24=request.getParameter("a24");
        String b25=request.getParameter("a25");
        String b26 =request.getParameter("a26");
        String b27=request.getParameter("a27");
        String b28=request.getParameter("a28");
        String b29=request.getParameter("a29");
        String b30=request.getParameter("a30");
        /*String b31 =request.getParameter("a31");
        String b32=request.getParameter("a32");
        String b33=request.getParameter("a33");
        String b34=request.getParameter("a34");
        String b35=request.getParameter("a35");
        String b36 =request.getParameter("a36");
        String b37=request.getParameter("a37");
        String b38=request.getParameter("a38");
        String b39=request.getParameter("a39");
        String b40=request.getParameter("a40");
        String b41 =request.getParameter("a41");
        String b42=request.getParameter("a42");
        String b43=request.getParameter("a43");
        String b44=request.getParameter("a44");
        String b45=request.getParameter("a45");
        String b46 =request.getParameter("a46");
        String b47=request.getParameter("a47");
        String b48=request.getParameter("a48");
        String b49=request.getParameter("a49");
        String b50=request.getParameter("a50");
        String b51=request.getParameter("a51");
        String b52 =request.getParameter("a52");
        String b53=request.getParameter("a53");
        String b54=request.getParameter("a54");
        String b55=request.getParameter("a55");
        */
        
        
         out.println("WELCOME:");
         out.println("ATTENDANCE UPDATED");
         %><a href="home.jsp"></a><%
			
try {
            String url = "jdbc:mysql://localhost:3306/signup";
		    
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,"root","");
		
			
            Statement stmt = conn.createStatement();
		
            ResultSet rs;
		    
                
                   stmt.executeUpdate("INSERT into attendance values('"+dat+"','"+b1+"','"+b2+"','"+b3+"','"+b4+"','"+b5+"','"+b6+"','"+b7+"','"+b8+"','"+b9+"','"+b10+"','"+b11+"','"+b12+"','"+b13+"','"+b14+"','"+b15+"','"+b16+"','"+b17+"','"+b18+"','"+b19+"','"+b20+"','"+b21+"','"+b22+"','"+b23+"','"+b24+"','"+b25+"','"+b26+"','"+b27+"','"+b28+"','"+b29+"','"+b30+"')");
  
               
                
			  
			
            conn.close();
			 
        } catch (Exception e) {
		
            System.out.println("Got an exception! ");
            out.println(e);
        }
		
   
  %>
       
    <div id="division">
        <a href="uploadatt.jsp"><img src="Images/hawa.png">UPLOAD MARKS</a><br>
        <a href="loginse.jsp"><img src="Images/hawa.png">BACK</a>
        <h1>UPLOAD ATTENDANCE</h1>
        <div id="form-div">
            <form  action="dataupdation.jsp">
               
            <table>
                <tr><td><input type="text" name="date"/></td></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a1" type="radio"  id="email" value="1" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a2" type="radio"  id="email" value="1" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a3" type="radio"  id="email" value="1" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a4" type="radio"  id="email" value="1" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a5" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a6" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a7" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a8" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a9" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a10" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a11" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a12" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a13" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a14" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a15" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a16" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a17" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a18" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a19" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a20" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a21" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a22" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a23" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a24" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a25" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a26" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a27" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a28" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a29" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a30" type="checkbox"  id="email" value="A" /><td>
            </p></tr><!--
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a31" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a32" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a33" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a34" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a35" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a36" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a37" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a38" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a39" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a40" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a41" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313000</label><td>
            <td><input name="a42" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313043</label><td>
            <td><input name="a43" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313044</label><td>
            <td><input name="a44" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313045</label><td>
            <td><input name="a45" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313046</label><td>
            <td><input name="a46" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313047</label><td>
            <td><input name="a47" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313048</label><td>
            <td><input name="a48" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313049</label><td>
            <td><input name="a49" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313050</label><td>
            <td><input name="a50" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313051</label><td>
            <td><input name="a51" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313052</label><td>
            <td><input name="a52" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313053</label><td>
            <td><input name="a53" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313054</label><td>
            <td><input name="a54" type="checkbox"  id="email" value="A" /><td>
            </p></tr>
            <tr>
            <p class="email">
            <td><label for="attendance">1214313055</label><td>
            <td><input name="a55" type="checkbox"  id="email" value="A" /><td>
            </p></tr>-->
            <tr>
            <p class="email">
            <td><label for="attendance">SUBMIT</label><td>
            <td><input name="a55" type="submit"  id="email" value="SUBMIT" /><td>
            </p></tr>
            
            
            
            </table>
            </form>
  </div></div>
    </body>
</html>

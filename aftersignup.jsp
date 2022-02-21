<%-- 
    Document   : aftersignup
    Created on : Nov 5, 2014, 8:03:38 PM
    Author     : GAURAV
--%>



<%@ page import="java.sql.*" %>   

<!DOCTYPE html>
<html>
    <head>
	    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type" /><meta content="text/javascript" http-equiv="Content-Script-Type" /><meta content="text/css" http-equiv="Content-Style-Type" /><meta id="MetaDescription" name="DESCRIPTION" content="" /><meta id="MetaKeywords" name="KEYWORDS" content="Th" /><meta id="MetaCopyright" name="COPYRIGHT" content="Copyright 2014 by IMSEC" /><meta id="MetaGenerator" name="GENERATOR" content="DotNetNuke " /><meta id="MetaAuthor" name="AUTHOR" content="" /><meta name="RESOURCE-TYPE" content="DOCUMENT" /><meta name="DISTRIBUTION" content="GLOBAL" /><meta id="MetaRobots" name="ROBOTS" content="INDEX, FOLLOW" /><meta name="REVISIT-AFTER" content="1 DAYS" /><meta name="RATING" content="GENERAL" /><meta http-equiv="PAGE-ENTER" content="RevealTrans(Duration=0,Transition=1)" /><style id="StylePlaceholder" type="text/css"></style><link href="Styles/default.css" type="text/css" rel="stylesheet"/>
		<link href="Styles/home.css" type="text/css" rel="stylesheet"/>
		<link href="Styles/container.css" type="text/css" rel="stylesheet"/>
		<link href="Styles/portal.css" type="text/css" rel="stylesheet"/>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js?cdv=48" type="text/javascript"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js?cdv=48" type="text/javascript"></script>
		<link rel='SHORTCUT ICON' href='Images/icon.jpg' type='image/x-icon' />     
        
        <link rel="stylesheet" type="text/css" href="jquery.fancybox.css" media="screen" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Styles/styles.css">
        <title>SIS</title>
		<link rel="stylesheet" href="getmarks_files/formoid1/formoid-solid-green.css" type="text/css" />
<script type="text/javascript" src="getmarks_files/formoid1/jquery.min.js"></script>
        <script type="text/javascript" src="Script/jquery.js"></script>
        <script type="text/javascript" src="Script/jquery.bxslider.min.js"></script>
        <script type="text/javascript" src="Script/jquery.li-scroller.1.0.js"></script>
        <link rel="stylesheet" type="text/css" href="Styles/jquery.fancybox.css" media="screen" />
        <link type="text/css" href="Styles/jquery.bxslider.css" rel="stylesheet" />
<link href="Styles/default.css" type="text/css" rel="stylesheet"/><link href="Styles/home.css?cdv=48" type="text/css" rel="stylesheet"/><link href="Styles/container.css" type="text/css" rel="stylesheet"/><link href="Styles/portal.css" type="text/css" rel="stylesheet"/><script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js?cdv=48" type="text/javascript"></script><script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js?cdv=48" type="text/javascript"></script><link rel='SHORTCUT ICON' href='Images/icon.jpg' type='Image/x-icon' />     
        
<script type="text/javascript" src="Script/jquery.js"></script>
<script type="text/javascript" src="Script/js.js"></script>
        
<script type="text/javascript" src="Script/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="Script/jquery.li-scroller.1.0.js"></script>
 <script type="text/javascript">
 	$(document).ready(function(){
	$("#homeitem").click(function(){
		$(".pages").hide(300);
		$("#homep").show(400);
	});
	$("#sesmarksitem").click(function(){
		$(".pages").hide(300);
		$("#sesmarks").show(400);
	});
	$("#theoryitem").click(function(){
		$(".pages").hide(300);
		$("#theory").show(400);
	});
	$("#practicalitem").click(function(){
		$(".pages").hide(300);
		$("#practical").show(400);
	});
	$("#assignmentitem").click(function(){
		$(".pages").hide(300);
		$("#assignment").show(400);
	});
	
	$("#attendanceitem").click(function(){
		$(".pages").hide(300);
		$("#attendance").show(400);
	});
	$("#preitem").click(function(){
		$(".pages").hide(300);
		$("#prep").show(400);
	});
	$("#indiitem").click(function(){
		$(".pages").hide(300);
		$("#indip").show(400);
	});
	$("#aboutitem").click(function(){
		$(".pages").hide(300);
		$("#aboutp").show(400);
	});
	
	$("#contactitem").click(function(){
		$(".pages").hide(300);
		$("#contactp").show(400);
	});
	
	});
</script>
<link type="text/css" href="Styles/jquery.bxslider.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('.slider').bxSlider({
                auto: true,
                speed: 1500,
                pager: false,
                controls: false,
                reponsive: false
            });
            $(".open").click(function () {
                $(".campuses-wrapper ul").slideDown("slow");
            });
            $(".close").click(function () {
                $(".campuses-wrapper ul").slideUp("slow");
            });
            $(".toggle a").click(function () {
                $(".toggle a").toggle();
            });
            $(".slider-wrapper, #s").click(function () {
                $(".campuses-wrapper ul").slideUp("slow");
            });
            $("#university-ticker").liScroll({ travelocity: 0.10 });
        });
	
	</script>
   
        <script type="text/javascript" src="Script/jquery.fancybox.js?v=2.1.5"></script>
        <link rel="stylesheet" type="text/css" href="Script/jquery.fancybox.css?v=2.1.5" media="screen" />
	<script type="text/javascript">
	    $(document).ready(function () {
	        $('.fancybox').fancybox();
	    });
	</script>
</head>
<body>

   <style type="text/css">


.pages
{
    position:absolute;
	width:auto;
	height:auto;
	color:black;
	top:200px;
	margin:5px;
	padding:20px;
	border:4px solid #333300;
	display:none;
	background-color:#00ffcc;
    font-family: "Copperplate Gothic";
	font-style:italic;
}
td{
border:4px #006666 solid ;
background-color:#0f0f2e;
color:white;
margin:2px;
padding:2px;
padding-bottom:5px;
height:18px;
width:120px;
float:bottom;
text-align:center;


}
body{
background-color:#0f0f2e;
background-attachment: fixed;
	background-image:	-webkit-linear-gradient(85deg, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 20%), /* linear bottom */
						-webkit-radial-gradient(40% 60%,ellipse farthest-side, rgba(255, 255, 255, 0.45) -10%, rgba(255, 255, 255, 0) 100%),/* center white */
						-webkit-radial-gradient(50% -10%,circle farthest-side, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 30%),/* top center white */
						-webkit-radial-gradient(100% 0%,ellipse farthest-side, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 20%),/* top right white */
						-webkit-radial-gradient(0% 0%,ellipse farthest-side, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 10%),/* top left white */
						-webkit-radial-gradient(90% 60%,ellipse farthest-side, rgba(0, 0, 0, 0.35) -10%, rgba(0, 0, 0, 0) 100%),/* center right black */
						-webkit-radial-gradient(20% 10%,circle farthest-side, rgba(0, 0, 0, 0.25) -10%, rgba(0, 0, 0, 0) 20%);/* top left black */
						
	background-image:	-moz-linear-gradient(85deg, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 20%), /* linear bottom */
						-moz-radial-gradient(40% 60%,ellipse farthest-side, rgba(255, 255, 255, 0.45) -10%, rgba(255, 255, 255, 0) 100%),/* center white */
						-moz-radial-gradient(50% -10%,circle farthest-side, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 30%),/* top center white */
						-moz-radial-gradient(100% 0%,ellipse farthest-side, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 20%),/* top right white */
						-moz-radial-gradient(0% 0%,ellipse farthest-side, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 10%),/* top left white */
						-moz-radial-gradient(90% 60%,ellipse farthest-side, rgba(0, 0, 0, 0.35) -10%, rgba(0, 0, 0, 0) 100%),/* center right black */
						-moz-radial-gradient(20% 10%,circle farthest-side, rgba(0, 0, 0, 0.25) -10%, rgba(0, 0, 0, 0) 20%);/* top left black */
						
	background-image:	-ms-linear-gradient(85deg, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 20%), /* linear bottom */
						-ms-radial-gradient(40% 60%,ellipse farthest-side, rgba(255, 255, 255, 0.45) -10%, rgba(255, 255, 255, 0) 100%),/* center white */
						-ms-radial-gradient(50% -10%,circle farthest-side, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 30%),/* top center white */
						-ms-radial-gradient(100% 0%,ellipse farthest-side, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 20%),/* top right white */
						-ms-radial-gradient(0% 0%,ellipse farthest-side, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 10%),/* top left white */
						-ms-radial-gradient(90% 60%,ellipse farthest-side, rgba(0, 0, 0, 0.35) -10%, rgba(0, 0, 0, 0) 100%),/* center right black */
						-ms-radial-gradient(20% 10%,circle farthest-side, rgba(0, 0, 0, 0.25) -10%, rgba(0, 0, 0, 0) 20%);/* top left black */
					
	background-image:	-o-linear-gradient(85deg, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 20%), /* linear bottom */
						-o-radial-gradient(40% 60%,ellipse farthest-side, rgba(255, 255, 255, 0.45) -10%, rgba(255, 255, 255, 0) 100%),/* center white */
						-o-radial-gradient(50% -10%,circle farthest-side, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 30%),/* top center white */
						-o-radial-gradient(100% 0%,ellipse farthest-side, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 20%),/* top right white */
						-o-radial-gradient(0% 0%,ellipse farthest-side, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 10%),/* top left white */
						-o-radial-gradient(90% 60%,ellipse farthest-side, rgba(0, 0, 0, 0.35) -10%, rgba(0, 0, 0, 0) 100%),/* center right black */
						-o-radial-gradient(20% 10%,circle farthest-side, rgba(0, 0, 0, 0.25) -10%, rgba(0, 0, 0, 0) 20%);/* top left black */
					
	background-image:	linear-gradient(85deg, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 20%), /* linear bottom */
						radial-gradient(40% 60%,ellipse farthest-side, rgba(255, 255, 255, 0.45) -10%, rgba(255, 255, 255, 0) 100%),/* center white */
						radial-gradient(50% -10%,circle farthest-side, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 30%),/* top center white */
						radial-gradient(100% 0%,ellipse farthest-side, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 20%),/* top right white */
						radial-gradient(0% 0%,ellipse farthest-side, rgba(255, 255, 255, 0.35) -10%, rgba(255, 255, 255, 0) 10%),/* top left white */
						radial-gradient(90% 60%,ellipse farthest-side, rgba(0, 0, 0, 0.35) -10%, rgba(0, 0, 0, 0) 100%),/* center right black */
						radial-gradient(20% 10%,circle farthest-side, rgba(0, 0, 0, 0.25) -10%, rgba(0, 0, 0, 0) 20%);/* top left black */

						-webkit-border-top-left-radius: 5px;
    -webkit-border-top-right-radius: 5px;
    -moz-border-radius-topleft: 5px;
    -moz-border-radius-topright: 5px;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;

    -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.65);
    -moz-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.65);
    box-shadow: 0 1px 5px rgba(0, 0, 0, 0.65);
						
						
						
						}
caption{
border:4px #006666 solid ;
background-color:#0f0f2e;
color:white;
margin-bottom:10px;
margin-left:450px;
padding:2px;
height:25px;
width:auto;

text-align:center;


}
th{
font-size:12px;
border:4px #006666 solid ;
background-color:#0f0f2e;
margin:2px;
color:white;
padding:2px;
height:18px;
width:auto;
float:center;
text-align:center;

}
#assignment td{
border:4px #006666 solid ;
background-color:#0f0f2e;
color:white;
margin:2px;
padding:2px;
height:18px;
width:200px;
float:bottom;
text-align:center;


}
#assignment caption{
border:4px #006666 solid ;
background-color:#0f0f2e;
color:white;
margin-bottom:10px;
margin-left:450px;
padding:2px;
height:25px;
width:220px;

text-align:center;


}
#assignment th{
font-size:12px;
border:4px #006666 solid ;
background-color:#0f0f2e;
margin:2px;
color:white;
padding:2px;
height:18px;
width:auto;
float:center;
text-align:center;

}
#hasname{
height:100px;
background-color:#0f0f2e;
width:auto;
}
#hasname p{
color:white;
float:right;
margin:5px;
padding:5px;
font-family:"Copperplate Gothic";
font-size:15px;
}
#hasname span{
color:white;
float:left;
margin:5px;
padding:5px;
font-family:"Copperplate Gothic";
font-size:15px;

}
</style>


<div class="university-bulletin-wrapper">
	<div class="university-bulletin">
    	<div class="bulletin-link">
            <a href="IT.jsp" title="College News"> NOTICE</a>
        </div>

        <div id="dnn_newsticker"><div class="DnnModule DnnModule-DNN_HTML DnnModule-7503"><a name="7503"></a>
    <div class="dnnPEMContNotitle"><div id="dnn_ctr7503_ContentPane" class="dnnPEMContNotitleBody"><div id="dnn_ctr7503_ModuleContent" class="DNNModuleContent ModDNNHTMLC">
	<div id="dnn_ctr7503_HtmlModule_lblContent" class="Normal">
	<ul id="university-ticker" class="newsticker">
    <li><span>WELCOME TO SIS    A STUDENT INFORMATICS [ RUN BY INFORMATION & TECHNOLOGY DEPARTMENT OF IMS ENGINEERING COLLEGE ]</span><a href=""></a>
    </li>
    <li>  <span>SYSTEM ADMINISTRATORS GAURAV PATHAK IT 3RD YEAR/MANVENDRA SINGH IT 3RD YEAR</span><a href=""></a></li>
    <li>
    <span></span> <a href=""></a>
    </li>
    <li>
    <span></span><a href=""></a></li>
</ul>
</div>
</div></div></div></div></div>       
 </div>
</div>

<div id='cssmenu'>
    <ul>
       <li><a ><span id="homeitem">Home</span></a></li>
	   <li class='has-sub'><a ><span id="">Marks</span></a>
	      <ul>
	        <li class='first'><a ><span id="sesmarksitem">Sessional Marks</span></a> </li>
	        <li class='first'><a ><span id="theoryitem">Theory Marks</span></a> </li>
            <li class='last'><a><span id="practicalitem">Practical Marks</span></a> </li>		
         </ul>
	  </li>
       <li class='has-sub'><a ><span id="productitem">Services</span></a>
	     <ul>
           <li class='first'><a ><span id="assignmentitem">Assignment</span></a> </li>
		   <li class='first'><a><span id="attendanceitem">Attendance</span></a> </li>
        </ul>
	   </li>
       <li class="first"><a ><span id="preitem">Previous Results</span></a></li>
       <li class="first"><a ><span id="indiitem">Individual Services</span></a></li>
       <li class="first"><a ><span id="aboutitem">About</span></a></li>
       <li class='last'><a><span id="contactitem">Contact</span></a></li>
       
   </ul>
</div>
<div id="hasname">
<p>HELLO:-  <%=session.getAttribute("name[first]")%> <%=session.getAttribute("name[last]")%><a  href="aftersignup.jsp"><img style="height:50px" src="Images/df.png"/></a></p>
<a href="logout.jsp"><span>LOGOUT</span></a>
<span>USER:-<%=session.getAttribute("input5")%>  </span><br>
<font size="15" color="red" face="arial"><center>----SIS----</center></font>
<footer>
	<div class="footer-container">
    	<div class="footer-logo-sc">
        	
            <ul>
                	<li class="fb"><a href="https://www.facebook.com/gpgp525" target="_blank" title="Facebook">facebook</a></li>
                    <li class="tw"><a href="https://twitter.com/gpgp525" title="twitter" target="_blank">twitter</a></li>
                    <li class="gp"><a href="https://plus.google.com/u/0/gaurav/posts" title="googleplus" target="_blank">googleplus</a></li>
                    <li class="ln"><a href="http://www.linkedin.com/groups/" title="linkedin" target="_blank">linkedin</a></li>
            </ul>
        </div>
        
    </div>
</footer>

</div>
<%! String userdbName;
String userdbPsw;
String dbUsertype;
%>
<%
Connection con= null;
PreparedStatement ps = null;
PreparedStatement ps1 = null;
PreparedStatement ps2 = null;
PreparedStatement ps3 = null;
PreparedStatement ps4 = null;
PreparedStatement psdaa = null;
ResultSet rs = null;
ResultSet rs1 = null;
ResultSet rs2 = null;
ResultSet rs3 = null;
ResultSet rs4 = null;
ResultSet rsdaa = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/signup";
String user = "root";
String dbpsw = "";
String s122 = "";
String s123 = "";

String UserIDType = (String)session.getAttribute("input5");
String sqldaa = " select sum(daa) from 3itattendance where roll="+1214313017+"" ;
String sql = " select * from sesmarks" ;
String sql1 = " select * from assignment " ;
String sql2 = " select * from 3itattendance" ;
String sql3 = " select * from 3itlim" ;
String sql4 = " select * from 3itpim" ;
String name = request.getParameter("input4");
String password = request.getParameter("password");
String usertype = request.getParameter("input5");


	try{
		Class.forName(driverName);
		con = DriverManager.getConnection(url, user, dbpsw);
		ps = con.prepareStatement(sql);
		ps1 = con.prepareStatement(sql1);
		ps2 = con.prepareStatement(sql2);
		ps3 = con.prepareStatement(sql3);
		ps4 = con.prepareStatement(sql4);
		psdaa = con.prepareStatement(sqldaa);
		
		rs = ps.executeQuery();
		rs1 = ps1.executeQuery();
		rs2 = ps2.executeQuery();
		rs3 = ps3.executeQuery();
		rs4 = ps4.executeQuery();
		rsdaa = psdaa.executeQuery();
		try{
	     if(UserIDType.equals(null))
          {
           response.sendRedirect("/loginse.jsp");

          }
         else
         {
		

%>
<div id="homep" class="pages">
<table>
<%
int ask=0;
while(ask!=10){%>
<tr>
<th>ANSWER</th>
<th>ANSWER</th>
<th>ANSWER</th>
<th>ANSWER</th>
<th>ANSWER</th>
<th>ANSWER</th>
<th>ANSWER</th>
<th>ANSWER</th>
</tr>
<tr>
<td><%=ask%></td>
<td><%=ask%></td>
<td><%=ask%></td>
<td><%=ask%></td>
<td><%=ask%></td>
<td><%=ask%></td>
<td><%=ask%></td>
<td><%=ask%></td>
</tr>
<%ask++;}%>
</table>  
</div>

<div id="sesmarks" class="pages">
<table >
<caption>SESSIONAL MARKS</caption>
<th>ID</th>
<th>ROLLNUMBER</th>
<th>YEAR</th>
<th>STATUS</th>
<th>NAME</th>
<th>DAA</th>
<th>E-COMMERCE</th>
<th>CG</th>
<th>ISCL</th>
<th>ECONOMICS</th>
<th>OS</th>
<%
while(rs.next())
{
	String name1 = rs.getString("id");
	String name2 = rs.getString("rollnumber");
	String name11 = rs.getString("yr");
	String name3 = rs.getString("status");
	String name4 = rs.getString("name");
	String name5 = rs.getString("subject1");
	String name6 = rs.getString("subject2");
	String name7 = rs.getString("subject3");
	String name8 = rs.getString("subject4");
	String name9 = rs.getString("subject5");
	String name10 = rs.getString("subject6");
%>
<tr>

<td><%=name1%></td>
<td><%=name2%></td>
<td><%=name11%></td>
<td><%=name3%></td>
<td><%=name4%></td>

<td><%=name5%></td>
<td><%=name6%></td>
<td><%=name7%></td>
<td><%=name8%></td>
<td><%=name9%></td>
<td><%=name10%></td>
</tr>
<%
	}%>
</table>
<form class="formoid-solid-green" style="background-color:#0f0f2e;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:auto;min-width:150px" method="post"action="SAM.jsp"><div class="title"><h2>GET YOUR MARKS BY ROLLNUMBER </h2><h4></h4></div>
	<div class="element-number" title="ROLLNUMBER"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" min="0" max="12143999999" name="number" required="required" placeholder="ROLLNUMBER" value=""/><span class="icon-place"></span></div></div>
	<div class="submit"><input type="submit" value="Submit"/>
	</form>
</div>
</div>
<div id="theory" class="pages">
<table >
<caption>THEORY INTERNAL MARKS</caption>
<th>ID</th>
<th>ROLLNUMBER</th>
<th>YEAR</th>
<th>STATUS</th>
<th>NAME</th>
<th>E-COMMERCE</th>
<th>DAA</th>
<th>ECONOMICS</th>
<th>CG</th>
<th>OS</th>
<th>ISCL</th>
<th>MINI PRO</th>
<th>CG LAB</th>
<th>OS LAB</th>
<th>DAA LAB</th>
<th>GATE</th>
<th>APTITUDE</th>
<th>PDP</th>
<th>JAVA</th>
<%

while(rs3.next())
{
	String dd1 = rs3.getString("id");
	String dd2 = rs3.getString("roll");
	String dd3 = rs3.getString("status");
	String dd4 = rs3.getString("year");
	String dd5 = rs3.getString("name");
	String dd6 = rs3.getString("ecommerce");
	String dd7 = rs3.getString("daa");
	String dd8 = rs3.getString("economics");
	String dd9 = rs3.getString("cg");
	String dd10 = rs3.getString("os");
	String dd11 = rs3.getString("iscl");
	String dd12 = rs3.getString("mini");
	String dd13 = rs3.getString("cglab");
	String dd14 = rs3.getString("oslab");
	String dd15 = rs3.getString("daalab");
	String dd16 = rs3.getString("gate");
	String dd17 = rs3.getString("appt");
	String dd18 = rs3.getString("pad");
	String dd19 = rs3.getString("java");
	
	
%>
<tr>
<td><%=dd1%></td>
<td><%=dd2%></td>
<td><%=dd3%></td>
<td><%=dd4%></td>
<td><%=dd5%></td>
<td><%=dd6%></td>
<td><%=dd7%></td>
<td><%=dd8%></td>
<td><%=dd9%></td>
<td><%=dd10%></td>
<td><%=dd11%></td>
<td><%=dd12%></td>
<td><%=dd13%></td>
<td><%=dd14%></td>
<td><%=dd15%></td>
<td><%=dd16%></td>
<td><%=dd17%></td>
<td><%=dd18%></td>
<td><%=dd19%></td>
<%}%>
</tr>
</table>
</div>

<div id="practical" class="pages">
<table >
<caption>LAB INTERNAL MARKS</caption>
<th>ID</th>
<th>ROLLNUMBER</th>
<th>STATUS</th>
<th>YEAR</th>
<th>NAME</th>
<th>E-COMMERCE</th>
<th>DAA</th>
<th>ECONOMICS</th>
<th>CG</th>
<th>OS</th>
<th>ISCL</th>
<th>MINI PRO</th>
<th>CG LAB</th>
<th>OS LAB</th>
<th>DAA LAB</th>
<th>GATE</th>
<th>APTITUDE</th>
<th>PDP</th>
<th>JAVA</th>
<%
while(rs4.next())
{
	String ddd1 = rs4.getString("id");
	String ddd2 = rs4.getString("roll");
	String ddd3 = rs4.getString("status");
	String ddd4 = rs4.getString("year");
	String ddd5 = rs4.getString("name");
	String ddd6 = rs4.getString("ecommerce");
	String ddd7 = rs4.getString("daa");
	String ddd8 = rs4.getString("economics");
	String ddd9 = rs4.getString("cg");
	String ddd10 = rs4.getString("os");
	String ddd11 = rs4.getString("iscl");
	String ddd12 = rs4.getString("mini");
	String ddd13 = rs4.getString("cglab");
	String ddd14 = rs4.getString("oslab");
	String ddd15 = rs4.getString("daalab");
	String ddd16 = rs4.getString("gate");
	String ddd17 = rs4.getString("appt");
	String ddd18 = rs4.getString("pad");
	String ddd19 = rs4.getString("java");
	
%>
<tr>
<td><%=ddd1%></td>
<td><%=ddd2%></td>
<td><%=ddd3%></td>
<td><%=ddd4%></td>
<td><%=ddd5%></td>
<td><%=ddd6%></td>
<td><%=ddd7%></td>
<td><%=ddd8%></td>
<td><%=ddd9%></td>
<td><%=ddd10%></td>
<td><%=ddd11%></td>
<td><%=ddd12%></td>
<td><%=ddd13%></td>
<td><%=ddd14%></td>
<td><%=ddd15%></td>
<td><%=ddd16%></td>
<td><%=ddd17%></td>
<td><%=ddd18%></td>
<td><%=ddd19%></td>
<%}%>
</tr>
</table>
</div>

<div id="assignment" class="pages">
<table>
<caption>ASSIGNMENTS</caption>
<th>SUBJECT</th>
<th>SUBJECT YEAR</th>
<th>SUBJECT CODE</th>
<th>SUBJECT TEACHER</th>
<th>ASSIGNMENT NO.</th>
<th>ASSIGNMENT </th>
<th>SUBMISSION </th>
<%
while(rs1.next())
{
	String name100 = rs1.getString("subject");
	String name200 = rs1.getString("year");
	String name300 = rs1.getString("subjectcode");
	String name400 = rs1.getString("subjectteacher");
	String name500 = rs1.getString("assignmentno");
	String name600 = rs1.getString("assignment");
	String name700 = rs1.getString("submission");
	
%>
<tr>
<td><%=name100%></td>
<td><%=name200%></td>
<td ><%=name300%></td>
<td><%=name400%></td>
<td><%=name500%></td>
<td><%=name600%></td>
<td><%=name700%></td>
</tr>
<%}%>
</table>
</div>
<div id="attendance" class="pages">
<table >
<caption>ATTENDANCE</caption>
<th>ID</th>
<th>ROLLNUMBER</th>
<th>YEAR</th>
<th>STATUS</th>
<th>NAME</th>
<th>E-COMMERCE</th>
<th>DAA</th>
<th>ECONOMICS</th>
<th>CG</th>
<th>OS</th>
<th>ISCL</th>
<th>MINI PRO</th>
<th>CG LAB</th>
<th>OS LAB</th>
<th>DAA LAB</th>
<th>GATE</th>
<th>APTITUDE</th>
<th>PDP</th>
<th>JAVA</th>
<%
while(rs2.next())
{
	String d1 = rs2.getString("id");
	String d2 = rs2.getString("roll");
	String d3 = rs2.getString("status");
	String d4 = rs2.getString("year");
	String d5 = rs2.getString("name");
	String d6 = rs2.getString("ecommerce");
	String d7 = rs2.getString("daa");
	String d8 = rs2.getString("economics");
	String d9 = rs2.getString("cg");
	String d10 = rs2.getString("os");
	String d11 = rs2.getString("iscl");
	String d12 = rs2.getString("mini");
	String d13 = rs2.getString("cglab");
	String d14 = rs2.getString("oslab");
	String d15 = rs2.getString("daalab");
	String d16 = rs2.getString("gate");
	String d17 = rs2.getString("appt");
	String d18 = rs2.getString("pad");
	String d19 = rs2.getString("java");
	
	
	
	
	
%>
<tr>
<td><%=d1%></td>
<td><%=d2%></td>
<td><%=d3%></td>
<td><%=d4%></td>
<td><%=d5%></td>
<td><%=d6%></td>
<td><%=d7%></td>
<td><%=d8%></td>
<td><%=d9%></td>
<td><%=d10%></td>
<td><%=d11%></td>
<td><%=d12%></td>
<td><%=d13%></td>
<td><%=d14%></td>
<td><%=d15%></td>
<td><%=d16%></td>
<td><%=d17%></td>
<td><%=d18%></td>
<td><%=d19%></td>
</tr>
<%}%>

</table>
</div>
<div id="prep" class="pages">
    <form class="formoid-solid-green" style="background-color:#0f0f2e;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:auto;min-width:150px" method="post"action="SAM.jsp"><div class="title"><h2>GET YOUR INFO BY ROLLNUMBER FOR THIS SESSION</h2><h4></h4></div>
	  <div class="element-number" title="ROLLNUMBER"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" min="0" max="12143999999" name="number" required="required" placeholder="ROLLNUMBER" value=""/><span class="icon-place"></span></div></div>
	  <div class="element-number" title="ROLLNUMBER"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" min="0" max="12143999999" name="session" required="required" placeholder="SESSION YY/YY" value=""/><span class="icon-place"></span></div></div>
	  <div class="submit"><input type="submit" value="Submit"/>
	</form>
    </div>	

</div>
<div id="indip" class="pages">
    <form class="formoid-solid-green" style="background-color:#0f0f2e;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:auto;min-width:150px" method="post"action="SAM.jsp"><div class="title"><h2>GET YOUR INFO BY ROLLNUMBER FOR THIS SESSION</h2><h4></h4></div>
	  <div class="element-number" title="ROLLNUMBER"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" min="0" max="12143999999" name="number" required="required" placeholder="ROLLNUMBER" value=""/><span class="icon-place"></span></div></div>
	  <div class="submit"><input type="submit" value="Submit"/>
	</form>
    </div>	
	<form class="formoid-solid-green" style="background-color:#0f0f2e;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:auto;min-width:150px" method="post"action="SAM.jsp"><div class="title"><h2>GET YOUR INFO BY ROLLNUMBER FOR THIS SESSION</h2><h4></h4></div>
	  <div class="element-number" title="ROLLNUMBER"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" min="0" max="12143999999" name="number" required="required" placeholder="ROLLNUMBER" value=""/><span class="icon-place"></span></div></div>
	  <div class="submit"><input type="submit" value="Submit"/>
	</form>
    </div>	
	<form class="formoid-solid-green" style="background-color:#0f0f2e;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:auto;min-width:150px" method="post"action="SAM.jsp"><div class="title"><h2>GET YOUR INFO BY ROLLNUMBER FOR THIS SESSION</h2><h4></h4></div>
	  <div class="element-number" title="ROLLNUMBER"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" min="0" max="12143999999" name="number" required="required" placeholder="ROLLNUMBER" value=""/><span class="icon-place"></span></div></div>
	  <div class="submit"><input type="submit" value="Submit"/>
	</form>
    </div>	
	<form class="formoid-solid-green" style="background-color:#0f0f2e;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:auto;min-width:150px" method="post"action="SAM.jsp"><div class="title"><h2>GET YOUR INFO BY ROLLNUMBER FOR THIS SESSION</h2><h4></h4></div>
	  <div class="element-number" title="ROLLNUMBER"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" min="0" max="12143999999" name="number" required="required" placeholder="ROLLNUMBER" value=""/><span class="icon-place"></span></div></div>
	  <div class="submit"><input type="submit" value="Submit"/>
	</form>
    </div>	
	


</div>
<div id="aboutp" class="pages">
<b>THIS IS A WEBSITE DISIGNED FOR STUDENT INFORMATICS</b>
</div>
<div id="contactp" class="pages">
<center><img src="Contact.jpg"></center>
<br>
<center><font color=darkred>
<b>GAURAV PATHAK IT 3RD YEAR +919873203880</b><br>
<b>MANVENDRA SINGH IT 3RD YEAR +919873203880</b><br>
<b>IMS Engineering College</b></font>
<br>NH-24, Adhyatmik Nagar, Near Dasna,
<br>Distt: Ghaziabad. Uttar Pradesh-201009.
<br>Phone: (91)120-3013800 Fax: 0120-2769235
<br>E-mail: imsec@imsec.ac.in, director@imsec.ac.in </center>
<br><br>
<br><br>
</font>
</div>
<%

}}
catch(Exception e)
{
	response.sendRedirect("/loginse.jsp?msgstring=Session Exception");
}
}

catch(SQLException sqe)
{
	out.println("home"+sqe);
}
%>

</body>
</html>

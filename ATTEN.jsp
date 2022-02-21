<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>ODD SEMESTER (14-15) </title>
	<link rel="stylesheet" href="CH/sand.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="blurBg-true" style="background-color:#009999; " >
    

<%@ page import="java.sql.*" %>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;
PreparedStatement ps1 = null;
ResultSet rs1 = null;
PreparedStatement ps2 = null;
ResultSet rs2 = null;
PreparedStatement ps3 = null;
ResultSet rs3 = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/signup";
String user = "root";
String password = "";
String UserID = (String)session.getAttribute("number");
String UserIDType = (String)session.getAttribute("input5");
String d7=request.getParameter("input5");
String sql = "select subt from upd where `id`="+UserID+"";
String sql1 = "select suby from upd where `id`="+UserID+"";
String sql2 = "select subbr from upd where `id`="+UserID+"";
String sql3 = "select subbat from upd where `id`="+UserID+"";



try {
	Class.forName(driverName);
	con = DriverManager.getConnection(url, user, password);
	ps = con.prepareStatement(sql);
	rs = ps.executeQuery();
    ps1 = con.prepareStatement(sql1);
	rs1 = ps1.executeQuery();	
	ps2 = con.prepareStatement(sql2);
	rs2 = ps2.executeQuery();
	ps3 = con.prepareStatement(sql3);
	rs3 = ps3.executeQuery();
    try{
	if(UserIDType.equals(null))
    {
	
     response.sendRedirect("/loginse.jsp");

    }
   else
   {
   if(!UserIDType.equals("STUDENT")&&!UserIDType.equals("HOD")&&!UserIDType.equals("DIRECTOR")){
%>
<!-- Start Formoid form-->
<link rel="stylesheet" href="atten_files/formoid1/formoid-solid-green.css" type="text/css" />
<script type="text/javascript" src="atten_files/formoid1/jquery.min.js"></script>
<div style="color:#3333FF; font-size:45px;font-family: Courier NEW; margin-right: 2px; background-color: #0f0f2e;height: 120px; width:100%;margin: 8px 12px 12px 2px;  border:5px solid ; padding:5px 5px 5px 5px;">
<center>IMS ENGINEERING COLLEGE PORTAL</center>
<span>

</div>

<div style="color:#3333FF;font-family: Courier NEW; margin-right: 2px; background-color: #0f0f2e;height: auto; font-size:15px;width:200px;margin: 8px 2px 2px 2px; position:absolute; border:5px solid ; padding:5px 5px 5px 5px;">

<div class="nav-container">
	<nav>
    	<ul>
        	<li class="divcover">
            	<a href="info.jsp">Discover IMS</a>
                <ul>
                    <li><a href="facts.jsp" title="Facts">Facts</a></li>	
                    <li><a href="place_1.html" title="Facts">Placement</a></li>	
                	<li><a href="history.jsp" title=" History">History</a></li>
                        <li><a href="mission.jsp" title="Mission">Mission</a></li>
                    <li><a href="org.jsp" title="Organization">Organization</a></li>
                    <li><a href="accrid.jsp" title="Accreditation">Accreditation</a></li>
                    <li><a href="internationallink.jsp" title="International Linkages">International Linkages</a></li>
                    <li><a href="aboutgzb.jsp" title="About GHAZIABAD City">About GHAZIABAD</a></li>
                    <li><a href="careers.jsp" title="Jobs,Careers">Careers</a></li>
                </ul>
            </li>
            <li class="lifeat">
                <a href="Hostels.html">Life At IMS</a>
                <ul>
                    <li><a href="ATTEN.jsp" title="Campuses">Campuses</a>
                       
                    </li>
                 	
                    <li><a href="club.jsp" title="Clubs and Societies">Clubs and Societies</a></li>
                    <li><a href="studentservice.jsp" title="Student Services">Student Services</a></li>
					<li><a href="residence.jsp" title="Student Services">Residence</a></li>
                    <li><a href="international.jsp" title="International Students">International Students</a></li>
                    
                </ul>
            </li>
            <li class="departments">
            	<a href="#">Departments</a>
                <ul>
                    <li class="sub-nav">
                        <a href="apld.jsp" target="_blank">APPLD &AMP HUM.</a>
                    	
                    </li>
                  <li class="sub-nav">
                      <a href="BTE.jsp" target="_blank" title="Department of Biotechnology">BIOTECHNOLOGY</a>
                    </li>
                    <li class="sub-nav">
                        <a href="cse.jsp" target="_blank" title="Department of Computer Sciences &amp; Engineering">COMP. SCIENCES</a>
                    	
                    </li>
                    
                    <li class="sub-nav">
                        <a href="IT.jsp" target="_blank" title="Department of Information Technology">INFO TECH</a>
                
                    </li>

                    
                </ul>
            </li>
            <li class="admissions">
            	<a href="#">Admissions</a>
                <ul>
               
                    <li><a href="admission.jsp" title="Undergraduate" onclick="pages();">Undergraduate</a></li>
                    <li><a href="admission.jsp" title="Postgraduate">Postgraduate</a></li>
					<li><a href="admission.jsp" title="PhD">PhD</a></li>
                    <li><a href="admission.jsp" title="International Student">International Student</a></li>
                </ul>
            </li>
            <li class="alumni">
                <a href="alumini.jsp" title="Alumni" target="_blank">Alumni</a>
				
            </li>
			<li class="alumniI">
                <a href="logout.jsp" title="Alumni" target="_blank">Logout</a>
				
            </li>
        </ul>
    </nav>
</div>
</div>
<form action="rooh1.jsp"class="formoid-solid-green" style="background-color:#009999;font-size:14px;font-family:'Courier New',Courier,monospace;color:#34495E;max-width:600px;min-width:150px" method="post"><div class="title"><h2>ODD SEMESTER (14-15)</h2></div>
	<div class="element-input" title="FACULTY NAME"><label class="title"><p> <%=session.getAttribute("input5")%> NAME</label><div class="item-cont"><h1 class="large"><%=session.getAttribute("name[first]")%> <%=session.getAttribute("name[last]")%> </h1></div></div>
	<div class="element-multiple" title="PURPOSE"><label class="title">PURPOSE<span class="required">*</span></label><div class="item-cont"><div class="large"><select data-no-selected="Nothing selected" name="multiple[]" multiple="multiple" required="required">

		<option value="INSERT ATTENDANCE">INSERT ATTENDANCE</option>
		<option value="CUMULATIVE ATTENDANCE">CUMULATIVE ATTENDANCE</option>
		<option value="DAILY ATTENDANCE">DAILY ATTENDANCE</option>
		<option value="CHARTWAISE ATTENDANCE">CHARTWAISE ATTENDANCE</option>
		<option value="UPLOAD ASSIGNMENT">UPLOAD ASSIGNMENT</option>
		<option value="DATEWISE ATTENDANCE">DATEWISE ATTENDANCE</option>
		<option value="THEORY INTERNAL MARKS">THEORY INTERNAL MARKS</option>
		<option value="INSERT SESSIONAL MARKS">INSERT SESSIONAL MARKS</option>
		<option value="SUBJECTWISE SESSIONAL MARKS">SUBJECTWISE SESSIONAL MARKS</option>
		<option value="VIEW CUMULATIVE MARKS OF SESSIONAL">VIEW CUMULATIVE MARKS OF SESSIONAL</option></select><span class="icon-place"></span></div></div></div>
	<div class="element-multiple" title="SUBJECT NAME"><label class="title">SUBJECT<span class="required">*</span></label><div class="item-cont"><div class="large"><select data-no-selected="Nothing selected" name="multiple1[]" multiple="multiple" required="required">
<%

while(rs.next())
{
	String subt = rs.getString("subt");
%>
		<option value=<%=subt%>><%=subt%></option>
		<%		
	}%>

		</select><span class="icon-place"></span></div></div></div>
	<div class="element-multiple" title="SUBJECT YEAR"><label class="title">SUBJECT YEAR<span class="required">*</span></label><div class="item-cont"><div class="large"><select data-no-selected="Nothing selected" name="multiple2[]" multiple="multiple" required="required">
<%
	while(rs1.next())
{
	String subt1 = rs1.getString("suby");
%>		
		<option value=<%=subt1%>><%=subt1%></option><%}%>

		</select><span class="icon-place"></span></div></div></div>
	<div class="element-multiple" title="SUBJECT BRANCH"><label class="title">SUBJECT BRANCH<span class="required">*</span></label><div class="item-cont"><div class="large"><select data-no-selected="Nothing selected" name="multiple3[]" multiple="multiple" required="required">

	<%
	while(rs2.next())
{
	String subt2 = rs2.getString("subbr");
%>	
		<option value=<%=subt2%>><%=subt2%></option><%}%>

%></select><span class="icon-place"></span></div></div></div>
	<div class="element-multiple" title="BATCH"><label class="title">SUBJECT BATCH<span class="required">*</span></label><div class="item-cont"><div class="large"><select data-no-selected="Nothing selected" name="multiple4[]" multiple="multiple" required="required">
	<%
	while(rs3.next())
{
	String subt3 = rs3.getString("subbat");
%>	
		<option value=<%=subt3%>><%=subt3%></option><%}%>
				<%
		}}
		}
		catch(Exception e)
		{
		            
		response.sendRedirect("/loginse.jsp?msgstring=2");
		}
		}
catch(SQLException sqe)
{
	out.println("loginse"+sqe);
}

%></select><span class="icon-place"></span></div></div></div>
	
<div class="submit"><input type="submit" value="Submit"/></div></form><script type="text/javascript" src="atten_files/formoid1/formoid-solid-green.js"></script>
<!-- Stop Formoid form-->


</body>
</html>

<%-- 
    Document   : new
    Created on : Oct 29, 2014, 11:31:52 AM
    Author     : GAURAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="jquery.fancybox.css" media="screen" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NEWS</title>
        <title>IMS ENGINEERING COLLEGE</title>
        <script type="text/javascript" src="Script/jquery.js"></script>
        <script type="text/javascript" src="Script/jquery.bxslider.min.js"></script>
        <script type="text/javascript" src="Script/jquery.li-scroller.1.0.js"></script>
        <link rel="stylesheet" type="text/css" href="Styles/jquery.fancybox.css" media="screen" />
        <link type="text/css" href="Styles/jquery.bxslider.css" rel="stylesheet" />
<link href="Styles/default.css" type="text/css" rel="stylesheet"/><link href="Styles/home.css?cdv=48" type="text/css" rel="stylesheet"/><link href="Styles/container.css" type="text/css" rel="stylesheet"/><link href="Styles/portal.css" type="text/css" rel="stylesheet"/><script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js?cdv=48" type="text/javascript"></script><script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js?cdv=48" type="text/javascript"></script><link rel='SHORTCUT ICON' href='Images/icon.jpg' type='Image/x-icon' />     
        
<script type="text/javascript" src="Script/jquery.js"></script>
        
<script type="text/javascript" src="Script/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="Script/jquery.li-scroller.1.0.js"></script>

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
#university-highlights h1{
	font-size: 30px;
	color: #3a7b07;
	margin-bottom: 10px;
	font-family: 'Open Sans';
	text-transform: uppercase;
	font-weight: 600;
}
#university-highlights section{
	max-width: 100%;
	width:100%;
	float: left;
}
#university-highlights section article{
	background: #f2f2f2;
	width: 100%;
	padding: 10px;
	margin-bottom: 20px;
	float: left;
}
#university-highlights section article figure{
	height: 100px;
	margin-right: 20px;
	float: left;
}
#university-highlights section article h3{
	font-size: 14px;
	font-weight: bold;
}
#university-highlights section article h3 a, #university-highlights section article h2 a{
	color: #000000;
}
#university-highlights section article h2{
	font-size: 16px;
	margin-top: 5px;
	font-weight: bold;
}
#university-highlights section article p{
	font-size: 14px;
	line-height: 16px;
	margin-top: 5px;
}
#university-highlights section .readall-wrapper{
	width: 100%;
}
#university-highlights section .readall{
	font-size: 16px;
	color: #FFFFFF;
	background: #3a7b07;
	padding: 10px 25px;
	float: left;
}
#newsheader{
 height: 150px;
 width: 100%;
 background-color: transparent;
 font-size: 50px;
 font-style: italic;
 color: #006699;
    
    
}
</style>
<div class="university-bulletin-wrapper">
	<div class="university-bulletin">
    	<div class="bulletin-link">
            <a href="news.jsp" title="College News">College News</a>
        </div>

        <div id="dnn_newsticker"><div class="DnnModule DnnModule-DNN_HTML DnnModule-7503"><a name="7503"></a>
<div class="dnnPEMContNotitle"><div id="dnn_ctr7503_ContentPane" class="dnnPEMContNotitleBody"><!-- Start_Module_7503 --><div id="dnn_ctr7503_ModuleContent" class="DNNModuleContent ModDNNHTMLC">
	<div id="dnn_ctr7503_HtmlModule_lblContent" class="Normal">
	<ul id="university-ticker" class="newsticker">
    <li><span>WELCOME TO IMSEC NEWS PORTAL</span><a href=""></a>
    </li>
    <li>  <span>AAJ CHORI HO GAYI HAI</span><a href=""></a></li>
    <li>
    <span>SAARE CHOR PAKDE GAYE HAI</span> <a href=""></a>
    </li>
    <li>
    <span>PARANTU PAISA GAYAB HAI</span><a href=""></a></li>
</ul>
</div>

</div><!-- End_Module_7503 --></div></div></div></div>
        <!--
        <ul id="university-ticker">
        <li>
        
        </li>
        
            <li><span>10/10/2007</span><a href="#">The first thing ...</a></li>
            <li><span>10/10/2007</span><a href="#">End up doing is ...</a></li>
            <li><span>10/10/2007</span><a href="#">The code that you ...</a></li>
        
        </ul>
        -->
    </div>
</div>
<div id="newsheader"><center>College News</center>
</div>
<button></button>
<div id="university-highlights">
<section>
<h1>COLLEGE Highlights</h1>
<table id="dnn_ctr5600_Viewnewsforview_lstContent" cellspacing="0" style="width:100%;border-collapse:collapse;">
	<tr>
		<td>
<article>
<figure>
<img id="dnn_ctr5600_Viewnewsforview_lstContent_ImagePreview_0" title="IMSEC" src="Images/08-50-52.jpg" alt="IMS" style="height:100px;width:160px;" />
</figure>
<h3 class="date">
<a href="#"><span id="dnn_ctr5600_Viewnewsforview_lstContent_lblDate_0">29</span> <span id="dnn_ctr5600_Viewnewsforview_lstContent_lblMonth_0">OCT</span> <span id="dnn_ctr5600_Viewnewsforview_lstContent_lblYear_0">2014</span></a>
</h3>
    <h2 class="post-heading"><a id="dnn_ctr5600_Viewnewsforview_lstContent_hpTitle_0" title="IMSEC" href="news.jsp">2014 Opportunity At IMSEC</a></h2>
<p>
<span id="dnn_ctr5600_Viewnewsforview_lstContent_lblDescription_0">
Registrations open. 
</span>

</p>
</article>

</td>
	</tr><tr>
		<td>
<article>
<figure>
<img id="dnn_ctr5600_Viewnewsforview_lstContent_ImagePreview_1" title=" STUDENT CAREER FAIR 2014" src="09-40-33.JPG" alt=" STUDENT CAREER FAIR 2014" style="height:100px;width:160px;" />
</figure>
<h3 class="date">
<a href="#"><span id="dnn_ctr5600_Viewnewsforview_lstContent_lblDate_1">28</span> <span id="dnn_ctr5600_Viewnewsforview_lstContent_lblMonth_1">OCT</span> <span id="dnn_ctr5600_Viewnewsforview_lstContent_lblYear_1">2014</span></a>
</h3>
<h2 class="post-heading"><a id="dnn_ctr5600_Viewnewsforview_lstContent_hpTitle_1" title=" STUDENT CAREER FAIR 2014" href="/News.aspx?Type=News&amp;NewsId=751"> STUDENT CAREER FAIR 2014</a></h2>
<p>
<span id="dnn_ctr5600_Viewnewsforview_lstContent_lblDescription_1">.


</span>

</p>
</article>

</td>
	</tr><tr>
		<td>
<article>
<figure>
<img id="dnn_ctr5600_Viewnewsforview_lstContent_ImagePreview_2" title="Lulli" src="15-15-48.jpg" alt="lulli" style="height:100px;width:160px;" />
</figure>
<h3 class="date">
<a href="#"><span id="dnn_ctr5600_Viewnewsforview_lstContent_lblDate_2">26</span> <span id="dnn_ctr5600_Viewnewsforview_lstContent_lblMonth_2">OCT</span> <span id="dnn_ctr5600_Viewnewsforview_lstContent_lblYear_2">2014</span></a>
</h3>
<h2 class="post-heading"><a id="dnn_ctr5600_Viewnewsforview_lstContent_hpTitle_2" title="Kashmir Floods 2014" href="/News.aspx?Type=News&amp;NewsId=747">India</a></h2>
<p>
<span id="dnn_ctr5600_Viewnewsforview_lstContent_lblDescription_2"> 

</span>

</p>
</article>

</td>
	</tr><tr>
		<td>
<article>
<figure>
<img id="dnn_ctr5600_Viewnewsforview_lstContent_ImagePreview_3" title="Society of Computer Science organized &#39;Androi..." src="16-43-30.jpg" alt="Society of Computer Science organized &#39;Androi..." style="height:100px;width:160px;" />
</figure>
<h3 class="date">
<a href="#"><span id="dnn_ctr5600_Viewnewsforview_lstContent_lblDate_3">23</span> <span id="dnn_ctr5600_Viewnewsforview_lstContent_lblMonth_3">OCT</span> <span id="dnn_ctr5600_Viewnewsforview_lstContent_lblYear_3">2014</span></a>
</h3>
<h2 class="post-heading"><a id="dnn_ctr5600_Viewnewsforview_lstContent_hpTitle_3" title="Society of Computer Science organized &#39;Androi..." href="/News.aspx?Type=News&amp;NewsId=744">Society of Computer Science organized 'Androi...</a></h2>
<p>
<span id="dnn_ctr5600_Viewnewsforview_lstContent_lblDescription_3">Society of Computer Science organized 'Android Workshop' at Dasna Campus. </span>

</p>
</article>

</td>
	</tr><tr>
		<td>
<article>
<figure>
<img id="dnn_ctr5600_Viewnewsforview_lstContent_ImagePreview_4" title=" ." src="16-08-56.JPG" alt=" ..." style="height:100px;width:160px;" />
</figure>
<h3 class="date">
<a href="#"><span id="dnn_ctr5600_Viewnewsforview_lstContent_lblDate_4"></span> <span id="dnn_ctr5600_Viewnewsforview_lstContent_lblMonth_4">OCT</span> <span id="dnn_ctr5600_Viewnewsforview_lstContent_lblYear_4">2014</span></a>
</h3>
<h2 class="post-heading"><a id="dnn_ctr5600_Viewnewsforview_lstContent_hpTitle_4" title=" " href="#"> ..</a></h2>
<p>
<span id="dnn_ctr5600_Viewnewsforview_lstContent_lblDescription_4"></span>

</p>
</article>

</td>
	</tr>
</table>
<tr><td>
<article>
<figure>
<img id="dnn_ctr5600_Viewnewsforview_lstContent_ImagePreview_0" title="IMSEC" src="08-50-52.jpg" alt="IMS" style="height:100px;width:160px;" />
</figure>
<h3 class="date">
<a href="#"><span id="dnn_ctr5600_Viewnewsforview_lstContent_lblDate_0">29</span> <span id="dnn_ctr5600_Viewnewsforview_lstContent_lblMonth_0">OCT</span> <span id="dnn_ctr5600_Viewnewsforview_lstContent_lblYear_0">2014</span></a>
</h3>
    <h2 class="post-heading"><a id="dnn_ctr5600_Viewnewsforview_lstContent_hpTitle_0" title="IMSEC" href="news.jsp">2014 Opportunity At IMSEC</a></h2>
<p>
<span id="dnn_ctr5600_Viewnewsforview_lstContent_lblDescription_0">
Registrations open. 
</span>

</p>
</article>

</td>
	</tr>

<!--<div class="readall-wrapper">
<a class="readall" href="news.jsp" title="Read All News">Read All</a>
</div>-->

</section>
</div>


<br />
</div><!-- End_Module_5600 --></div></div></div></div>    
    </body>
</html>

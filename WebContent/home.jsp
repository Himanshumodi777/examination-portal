
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="styles.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
    <!-- jQuery lib from google server ===================== -->

<script src="js/jquery-1.7.2.min.js"></script>
<!--  javaScript -->
<script>  
<!--  // building select nav for mobile width only -->
$(function(){
	// building select menu
	$('<select />').appendTo('nav');

	// building an option for select menu
	$('<option />', {
		'selected': 'selected',
		'value' : '',
		'text': 'Choise Page...'
	}).appendTo('nav select');

	$('nav ul li a').each(function(){
		var target = $(this);

		$('<option />', {
			'value' : target.attr('href'),
			'text': target.text()
		}).appendTo('nav select');

	});

	// on clicking on link
	$('nav select').on('change',function(){
		window.location = $(this).find('option:selected').val();
	});
});

// show and hide sub menu
$(function(){
	$('nav ul li').hover(
		function () {
			//show its submenu
			$('ul', this).slideDown(150);
		}, 
		function () {
			//hide its submenu
			$('ul', this).slideUp(150);			
		}
	);
});

</script>

</head>
<body>

<%
	response.setContentType("text/html");
	
	HttpSession s=request.getSession();
	String id=(String)s.getAttribute("xyz");
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor", "root", "himanshu");
		PreparedStatement ps=con.prepareStatement("select id from admin where id=?");
		ps.setString(1, id);

		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			
		}
		else
		{
			response.sendRedirect("adminlogin.html");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
	
<div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">
                <a href="index.html" target="_blank">INDEX</a>
                <span class="right">
                    <a href="admin.html">
                        <strong>LOGOUT</strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div><!--/ freshdesignweb top bar -->
			<header>
				<h1><span>online Exam</span>WELCOME TO ADMIN HOME PAGE</h1>
            </header>       
     <!-- start header here-->
	<header>
		<div id="fdw">
				<!--nav-->
					<nav>
						<ul>
							<li class="current"><a href="http://www.freshdesignweb.com">TEST<span class="arrow"></span></a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
									<li><a class="subCurrent" href="http://www.freshdesignweb.com">CREATE TEST</a></li>
									<li><a href="http://www.freshdesignweb.com">INSERT QUESTION</a></li>
									<li><a href="http://www.freshdesignweb.com">EDIT TEST</a></li>
								</ul>
							</li>
							<li><a href="http://www.freshdesignweb.com">VIEW TEST</a></li>
							<li><a href="http://www.freshdesignweb.com">APPROVE TEST</a></li>
							<li>
								<a href="http://www.freshdesignweb.com">SHOW<span class="arrow"></span></a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
									<li><a href="http://www.freshdesignweb.com">SHOW RESULT </a></li>
									<li><a href="http://www.freshdesignweb.com">SHOW STUDENT DATABASE </a></li>
									</ul>
						
							<li><a href="http://www.freshdesignweb.com">ABOUT</a></li>
							<li><a href="http://www.freshdesignweb.com">CONTACT</a></li>
						</ul>
					</nav>
		</div><!-- end fdw -->
	</header><!-- end header -->
    
</div>
	

</body>
</html>
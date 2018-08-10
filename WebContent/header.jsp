<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Commercial   
Description: A two-column, fixed-width design with simple color scheme.
Version    : 1.0
Released   : 20120520
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>home page</title>
<link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
</head>
<body>

 
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header">
			<div id="logo">
				<h1><a href="#">Online Test</a></h1>
							</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu-wrapper"  >
		<ul id="menu">
			<li class="current_page_item"><a href="adminhome.jsp"><span>Homepage</span></a></li>
			<li><span>Test</span>
				<ul>
					<li class="first"> <a href="createtest.jsp">Create Test</a> </li>
					<li> <a href="insertquestion.jsp">Insert Question </a> </li>
					<li class="last"> <a href="viewtest.jsp">View Test</a> </li>
					<li> <a href="viewquestion.jsp">View Question</a> </li>
				</ul>
			</li>
			<li><a href="studentdatabase.jsp"><span>Student Info.</span></a></li>
			<li><a href="viewresult.jsp"><span>Result</span></a></li>
			<li><span>Edit</span>
				<ul>
					<li class="first"> <a href="edittest.jsp">Edit Test</a> </li>
					<li> <a href="editquestion.jsp">Edit Question</a> </li>
				
				</ul>
			</li>
			
			<li><span>Admin</span>
				<ul>
					<li class="first"> <a href="adminsignup.html">Add Admin</a> </li>
					<li> <a href="adminlogout.jsp">Logout</a> </li>
					
				</ul>
			</li>
			
			<li><a href="http://cdgi.edu.in/contact-us.php"><span>About Us</span></a></li>
		</ul>
		<script type="text/javascript">
			$('#menu').dropotron();
		</script>
	</div>
	<!-- end #menu -->
	<div id="splash"><img src="images/4.jpg" width="980" height="300" alt="" /></div>
	
	
	
</body>
</html>

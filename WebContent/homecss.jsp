<!DOCTYPE html>
<html>
<head>
<title>Demo Drop Down Responsive Menu with CSS/jQuery</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="styles.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
    <!-- jQuery lib from google server ===================== -->
	<script src="js/jquery-1.7.2.min.js"></script>

</head>
<body>
<div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">
                <a href="index.html" target="_blank">INDEX</a>
                <span class="right">
                    <a href="adminhome.jsp">
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
							<li class="current"><a href="adminhome.jsp">TEST<span class="arrow"></span></a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
									<li><a class="subCurrent" href="createtest.jsp">CREATE TEST</a></li>
									<li><a href="insertquestion.jsp">INSERT QUESTION</a></li>
									<li><a href="edittest.jsp">EDIT TEST</a></li>
								</ul>
							</li>
							<li><a href="viewtest.jsp">VIEW TEST</a></li>
							<li><a href="approvetest.jsp">APPROVE TEST</a></li>
							<li>
								<a href="showdatabbase.jsp">SHOW<span class="arrow"></span></a>
								<ul style="display: none;" class="sub_menu">
									<li class="arrow_top"></li>
									<li><a href="showdatabase.jsp">SHOW RESULT </a></li>
									<li><a href="showdatabase.jsp">SHOW STUDENT DATABASE </a></li>
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

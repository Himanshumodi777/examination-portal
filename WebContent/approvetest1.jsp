<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%><%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" media="screen" href="css/style3.css" />
<title>create Test</title>
</head>
<body>
<%
	String test_name=request.getParameter("approve");
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","himanshu");
		PreparedStatement ps1 =con.prepareStatement("update test set status='0'");
		
		
		int i=0;
		i=ps1.executeUpdate();
		PreparedStatement ps =con.prepareStatement("update test set status='1'where test_name=?");
		
		ps.setString(1, test_name);
		i=0;
		i=ps.executeUpdate();
		if(i==1)
		{
			%>
					<script type="text/javascript">
					function testapproved(){  
					window.location.href = "adminhome.jsp";
	    			alert("Test approved : " +test_name);
	    			
	    			}
					testapproved();


</script>
			<%
		}
		else
		{
		
			response.sendRedirect("approvetest.jsp");	
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

%>






</body>
</html>
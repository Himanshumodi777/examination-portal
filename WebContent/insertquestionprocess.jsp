<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%><%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" media="screen" href="css/style3.css" />
<title></title>
</head>
<body>
<%
	String test_name=request.getParameter("test_name");
	String question=request.getParameter("question");
	String A=request.getParameter("A");
	String B=request.getParameter("B");
	String C=request.getParameter("C");
	String D=request.getParameter("D");
	String correct=request.getParameter("correct");

	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","himanshu");
		PreparedStatement ps =con.prepareStatement("insert into testquestion values(?,?,?,?,?,?,?)");
		ps.setString(1, test_name);
		ps.setString(2, question);
		ps.setString(3, A);
		ps.setString(4, B);
		ps.setString(5, C);
		ps.setString(6, D);
		ps.setString(7, correct);
		
		int i=0;
		i=ps.executeUpdate();
		if(i==0)
		{
			%>
					<script type="text/javascript">
					function falseentry(){  
					window.location.href = "createtest.jsp";
	    			alert("Wrong Entry in Form.....Please enter the correct information");
	    			
	    			}
					falseentry();


</script>
			<%
		}
		else
		{
		
			response.sendRedirect("insertquestion.jsp");	
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

%>






</body>
</html>
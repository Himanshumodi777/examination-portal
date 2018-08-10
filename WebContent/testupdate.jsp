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
String test_name=(String)session.getAttribute("test_name");

   
     String time=request.getParameter("td");
	 String numques=request.getParameter("question");
	 String cm=request.getParameter("cm");
	 String im=request.getParameter("im");
	 String instruction=request.getParameter("instruction");

		try
		{
			

			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","himanshu");
			PreparedStatement ps =con.prepareStatement("update test set time=?,number_of_question=?,marks_correct=?, marks_incorrect=?, instruct=? where test_name=?");
			ps.setString(1,time);
			ps.setString(2, numques);
			ps.setString(3, cm);
			ps.setString(4, im);
			ps.setString(5, instruction);
			ps.setString(6, test_name);
			
			int i=0;
			i=ps.executeUpdate();
			if(i==0)
			{
				%>
						<script type="text/javascript">
						function falseentry(){  
						window.location.href = "edittest.jsp";
		    			alert("Wrong Entry in Form.....Please enter the correct information");
		    			
		    			}
						falseentry();


						</script>
				<%
			}
			else
			{
				
				response.sendRedirect("edittest.jsp");	
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

	 


%>






</body>
</html>
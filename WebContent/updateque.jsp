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

   
     String question=request.getParameter("question");
	 String opt1=request.getParameter("opta");
	 String opt2=request.getParameter("optb");
	 String opt3=request.getParameter("optc");
	 String opt4=request.getParameter("opt4");
	 String correct=request.getParameter("correct");
		try
		{
			

			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","himanshu");
			PreparedStatement ps =con.prepareStatement("update testquestion question=?,option_a=?,option_b=?, option_c=?, option_d=?,correct=? where test_name=?");
			ps.setString(1,question);
			ps.setString(2, opt1);
			ps.setString(3, opt2);
			ps.setString(4, opt3);
			ps.setString(5, opt4);
			ps.setString(6, correct);
			ps.setString(7, test_name);
			
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
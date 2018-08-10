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
String id=(String)session.getAttribute("id");

   
     String pass=request.getParameter("pass");
	 String studname=request.getParameter("studname");
	 String lastname=request.getParameter("lastname");
	 String emailid=request.getParameter("email");
	 String dob=request.getParameter("dob");
	 String x=request.getParameter("contact");
	// int contact1=Integer.parseInt(x);
	 String branch=request.getParameter("branch");
	 String address=request.getParameter("address");
	 String gender=request.getParameter("gender");
	 out.println("sssss");
		try
		{
			

			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","himanshu");
			PreparedStatement ps =con.prepareStatement("update student set password=?,fname=?,lname=?, emailid=?, dob=?, contact=?, branch=?, address=?, gender=? where id=?");
			
			ps.setString(2,pass);
			ps.setString(3, studname);
			ps.setString(4, lastname);
			ps.setString(5, emailid);
			ps.setString(6, dob);
			ps.setString(7,x);
			ps.setString(8, branch);
			ps.setString(9, address);
			ps.setString(10, gender);
			

			out.println("sswwwwsss");
			int i=0;
			i=ps.executeUpdate();
			if(i==0)
			{
				
				out.println("sswwwwssspp");
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
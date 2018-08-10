    
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","himanshu");
			PreparedStatement ps=con.prepareStatement("select * from admin where id=? and Password=?");
			ps.setString(1, id);
			ps.setString(2, pass);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				HttpSession s=request.getSession();
				s.setAttribute("xyz", id);
				
				response.sendRedirect("adminhome.jsp");
				
			}
			else
			{
					
			
			%>	
			<script type="text/javascript">
					function falselogin(){  
					window.location.href = "adminlogin.html";
	    			alert("Incorrect Enrollment_id & Password");
	    			
	    			}
					falselogin();


</script>

		 <%   
		 		
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	




%>


</body>
</html>
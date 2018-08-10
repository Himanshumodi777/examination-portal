
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
<body  >

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
	
	
	<jsp:include page="header.jsp"/>
	
	
	 <jsp:include page="footer.jsp"/>
      


</body>
</html>
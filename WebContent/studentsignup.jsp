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
String password=request.getParameter("pass");
String fname=request.getParameter("nm");
String lname=request.getParameter("lm");
String email=request.getParameter("em");
String date=request.getParameter("dt");
String contact=request.getParameter("cn");

String branch=request.getParameter("br");
String address=request.getParameter("ad");
String gender=request.getParameter("gen");



try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","himanshu");
	PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2,password);
	ps.setString(3,fname);
	ps.setString(4,lname);
	ps.setString(5,email);
	ps.setString(6,date);
	ps.setString(7, contact);
	ps.setString(8,branch);
	ps.setString(9,address);
	ps.setString(10,gender);
	
	int i=0;
	i=ps.executeUpdate();
	if(i!=0)
	{	
	response.sendRedirect("studentlogin.html");
	}
	else
	
	{
		response.sendRedirect("signup.html");
	}
	
	}
catch(Exception e)
{
	e.printStackTrace();
}	
%>

</body>
</html>
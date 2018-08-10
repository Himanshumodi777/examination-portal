<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ page import="java.sql.*" %><%@page import="java.io.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" media="screen" href="css/style3.css" />
<title>view  test</title>
<style>
table {
    border-collapse: collapse;
    width: 65%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"/>



     
        <!-- insert the page content here -->
        <h2 align="center">View Question</h2>
        				

<%

    String test_name=request.getParameter("test");
String view=request.getParameter("view");

	
	
	try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","himanshu");
			PreparedStatement ps =con.prepareStatement("select * from testquestion where test_name=?");
			ps.setString(1, test_name);
			
		
		ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
		
				%>
				

					<table align="center" border="1" width="100%">
					
					
					<%do{ %>

<tr>
						<td>Test name</td>
						<td><%=rs.getString(1)%></td>
						
					</tr>
					

					<tr>
						<td>Question</td>
						<td><%=rs.getString(2)%></td>
						
					</tr>
					

					<tr>
						<td>Option A</td>
						<td><%=rs.getString(3)%> </td>
					    
					</tr>

					<tr>
						<td>Option B</td>
						<td><%=rs.getString(4)%> </td>
					   
					</tr>

					<tr>
						<td>Option C</td>
						<td><%=rs.getString(5)%> </td>
					   
					</tr>
					
					
					<tr>
						<td>Option D</td>
						<td><%=rs.getString(6)%> </td>
					    
					</tr>
			
					<tr>
						<td>Correct Answer</td>
						<td><%=rs.getString(7) %></td>
						
					</tr><%}while(rs.next());} %>
					


					</table>
				

				
			
				
			<% }
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	%>
	
	</div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>
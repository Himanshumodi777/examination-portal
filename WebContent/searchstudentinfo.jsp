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
<body  background="database.jpg">



	
      <div id="content">
        <!-- insert the page content here -->
        <h2 align="center">View Database</h2>
        				
<%!
		ResultSet rs=null;
		%>

<%

    String x=request.getParameter("search");
    int id=Integer.parseInt(x);

	
	
	try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","himanshu");
			PreparedStatement ps =con.prepareStatement("select * from student where id=?");
			ps.setInt(1, id);
			rs=ps.executeQuery();
			if(rs.next())
			{	session.setAttribute("id",id);
				%>
				

				<table align="center" border="4" width="100%">
					
					<tr>
						<th>Enrollment ID</th>
						<th><%=rs.getString(1) %></th>
					</tr>

					<tr>
						<td>Student Fisrt Name</td>
						<td><%=rs.getString(3)%></td>
					</tr>
					<tr>
						<td>Student Last Name</td>
						<td><%=rs.getString(4)%></td>
					</tr>
										<tr>
						<td>E-mail ID</td>
						<td><%=rs.getString(5)%></td>
					</tr>
										<tr>
						<td>D.O.B</td>
						<td><%=rs.getString(6)%></td>
					</tr>
										<tr>
						<td>Contact</td>
						<td><%=rs.getString(7) %>
					</tr>
										<tr>
						<td>Branch</td>
						<td><%=rs.getString(8)%> </td>
					</tr>
					<tr>
										<tr>
						<td>Address</td>
						<td><%=rs.getString(9)%></td>
					</tr>
										<tr>
						<td>Gender</td>
						<td><%=rs.getString(10)%> </td>
					</tr>
							</table>
			<% }}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	%>
	</div>
	</div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>
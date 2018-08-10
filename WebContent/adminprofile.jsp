<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>


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
        <h2 align="center">Admin Profile</h2>
        				

<%

HttpSession s=request.getSession();
String id=null;
id=(String)s.getAttribute("xyz");
int x=Integer.parseInt(id);


try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor", "root", "himanshu");
	PreparedStatement ps=con.prepareStatement("select * from admin where id=?");

	ps.setInt(1, x);

	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		
				%>
				

				<table align="center" border="4" width="100%">
					
					<tr>
						<th> ID</th>
						<th><%=rs.getString(1) %></th>
					</tr>

					<tr>
						<td>Password</td>
						<td><%=rs.getString(2)%></td>
					</tr>
					<tr>
						<td> First Name</td>
						<td><%=rs.getString(3)%></td>
					</tr>
										<tr>
						<td>Last Name</td>
						<td><%=rs.getString(4)%></td>
					</tr>
										<tr>
						<td>Email Id</td>
						<td><%=rs.getString(5)%></td>
					</tr>
										<tr>
						<td>D.O.B.</td>
						<td><%=rs.getString(6) %>
					</tr>
										<tr>
						<td>Contact</td>
						<td><%=rs.getString(7)%> </td>
					</tr>
					<tr>
										<tr>
						<td>Address</td>
						<td><%=rs.getString(8)%></td>
					</tr>
										<tr>
						<td>Gender</td>
						<td><%=rs.getString(9)%> </td>
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
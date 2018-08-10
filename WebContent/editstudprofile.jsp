<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ page import="java.sql.*" %><%@page import="java.io.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" media="screen" href="css/style3.css" />
<title>Edit Profile</title>
<style>
table {

    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: centre;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2;text-align: centre;}

th {
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body >



	<div id="container">
	
      
        <!-- insert the page content here -->
        <h2 align="center">Edit Profile</h2>
        				
<%!
		ResultSet rs=null;
		%>

<%

HttpSession s=request.getSession();
String id=null;
id=(String)s.getAttribute("xyz");



	 int x=Integer.parseInt(id);

	
	
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","himanshu");
			PreparedStatement ps =con.prepareStatement("select * from student where id=?");
			ps.setInt(1, x);
			rs=ps.executeQuery();
			if(rs.next())
			{	%>
				<form action="editstudprofile1.jsp" method="get">
					<table align="center">
					
					<tr>
						<th>Enrollment ID</th>
						<th><%=rs.getString(1) %></th>
					</tr>
					<tr>
						<td>password</td>
						<td><input type="text" name="pass" value="<%=rs.getString(2)%> " required></td>
					</tr>
					<tr>

					<tr>
						<td>Student Name</td>
						<td><input type="text" name="studname" value="<%=rs.getString(3)%> " required></td>
					</tr>
					<tr>
						<td>Last Name</td>
						<td><input type="text" name="lastname" value="<%=rs.getString(4)%>"required></td>
					</tr>
										<tr>
						<td>E-mail ID</td>
						<td><input type="text" name="email" value="<%=rs.getString(5)%> " required></td>
					</tr>
										<tr>
						<td>D.O.B</td>
						<td><input type="text" name="dob" value="<%=rs.getString(6)%> " required></td>
					</tr>
					
								<tr>
						<td>Contact</td>
						<td><input type="text" name="contact" value="<%=rs.getString(7)%> " ></td>
					</tr>
					
									<tr>
						<td>Branch</td>
						<td><input type="text" name="branch" value="<%=rs.getString(8)%> " required></td>
					</tr>
					
									<tr>
						<td>Address</td>
						<td><input type="text" name="address" value="<%=rs.getString(9)%> " required></td>
					</tr>
					
										<tr>
						<td>Gender</td>
						<td>
        					<select class="select">
  							<option value="Male">Male</option>
  							<option value="Female">Female</option>
  
							</select>
					</tr>
									<tr>
									<td></td>
						<td><input type="submit" value="UPDATE"></td>
					</tr>


					</table>
				</form>

				
		<%}else{}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	%>
	</div>
	
	
<jsp:include page="footer.jsp"/>
</body>
</html>










0
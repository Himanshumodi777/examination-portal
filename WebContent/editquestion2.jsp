<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ page import="java.sql.*" %><%@page import="java.io.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" media="screen" href="css/style3.css" />
<title>Insert title here</title>
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
        <h2 align="center">Edit Question</h2>
        				
<%!
		ResultSet rs=null;
		%>

<%

    String test_name=request.getParameter("test");
	String edit=request.getParameter("edit");
	
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","himanshu");
			PreparedStatement ps =con.prepareStatement("select * from testquestion where test_name=?");
			ps.setString(1, test_name);
			rs=ps.executeQuery();
			if(rs.next())
				
			{
				%>
				
				<form action="updateque.jsp">
					<table align="center">
					
					<tr>
						<td>Test Name</td>
						<td><% out.println(""+test_name+"");%></td>
				
						<td></td>
						<td></td>
						<td></td>
						
					</tr><%do{ %>

					<tr>
						<td>Question</td>
						<td><input type="text" name="question" value="<%=rs.getString(2)%> "></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					

					<tr>
						<td>Option A</td>
						<td><input type="text" name="opta" value="<%=rs.getString(3)%> "></td>
					    <td></td>
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>Option B</td>
						<td><input type="text" name="optb" value="<%=rs.getString(4)%> "></td>
					    <td></td>
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>Option C</td>
						<td><input type="text" name="optc" value="<%=rs.getString(5)%> "></td>
					    <td></td>
						<td></td>
						<td></td>
					</tr>
					
					
					<tr>
						<td>Option D</td>
						<td><input type="text" name="optd" value="<%=rs.getString(6)%> "></td>
					    <td></td>
						<td></td>
						<td></td>
					</tr>
			
					<tr>
						<td>Correct Answer</td>
						<td><input type="radio" name="correct" value="A">A</td>
						<td><input type="radio" name="correct" value="B">B</td>
						<td><input type="radio" name="correct" value="C">C</td>
						<td><input type="radio" name="correct" value="D">D</td>
					</tr><%}while(rs.next()); %>
					<tr>
						<td></td>
						<td><input type="submit" value="UPDATE"></td>
					</tr>


					</table>
				</form>
			<%	

			}
		}
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
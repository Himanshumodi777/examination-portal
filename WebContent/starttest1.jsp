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



	
      <div id="content">
        <!-- insert the page content here -->
        <h2 align="center">Start Test</h2>
        				
<%!
		ResultSet rs=null;
		%>

<%

    String test_name=request.getParameter("test");
String view=request.getParameter("view");
HttpSession newUserSession = request.getSession(true);
newUserSession.setAttribute("test_name", test_name);

	
	
	try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","himanshu");
			PreparedStatement ps =con.prepareStatement("select * from test_list where Testname=?");
			ps.setString(1, test_name);
			rs=ps.executeQuery();
			if(rs.next())
			{
			newUserSession.setAttribute("noq",rs.getInt(5));
				%>
				



     <form name="testSummary" id="testSummary" action="StartNewExam.java" method="POST">
					<table align="center">
					
				<tr> 
				<th> Test Details</th>
				</tr>
					<tr>
						<th>Test Name
						<input type="hidden" id="ExamCode" name="ExamCode" value="<% out.print(test_name); %>"/>
						<input type="hidden" id="ExamName" name="ExamNamePassOn" value="<% out.print(request.getParameter("Name-"+test_name)); %>"/>
						<input type="hidden" id="EXAMDURATION" name="EXAMDURATION" value="<% out.print( ""+rs.getInt(4) ); %>"/>
						<input type="hidden" id="NOQ" name="NOQ" value="<% out.print(""+rs.getInt(5) ); %>"/>
						
						<th><%=rs.getString(2) %></th>
					</tr>

					<tr>
						<td>Time Duration</td>
						<td><%=rs.getInt(4)%> </td>
					</tr>
					
					<tr>
						<td>Number of Question</td>
						<td><%=rs.getInt(5)%> </td>
					</tr>
					
					

					<tr>
						<td>Correct Mark</td>
						<td><%=rs.getString(6)%> </td>
					</tr>

					<tr>
						<td>Incorrect Mark</td>
						<td><%=rs.getString(7)%> </td>
					</tr>

					<tr>
						<td>Instruction</td>
						<td><%=rs.getString(3)%> </td>
					</tr>
					
					<tr>
						<td></td>
						<td> <a href="javascript:void(0)" onClick="javascript:document.getElementById('testSummary').submit()"> submit</a>
					</tr>


					</table>
</form>
				
			<% }}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	%>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>
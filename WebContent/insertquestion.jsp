<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%><%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" media="screen" href="css/style3.css" />
<title>Insert Question</title><style>
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
<body >
 

			<jsp:include page="header.jsp"/>
			

		
      
        <!-- insert the page content here -->
        <h2 align="center">Insert Questions</h2>
        	
        <form action="insertquestionprocess.jsp">

				<table align="center" border="4" width="50%">
					<tr>
						<td>Select Test</td>
						<td><select name="test_name">
						<%!
						ResultSet rs=null;
						%>
						<%
							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","himanshu");
								PreparedStatement ps=con.prepareStatement("select distinct test_name from test");
								rs=ps.executeQuery();
								if(rs.next())
								{
						
									do
									{
						%>
										<option value=<%=rs.getString(1) %>><%=rs.getString(1) %></option>
						<%
					
									}while(rs.next());
								}
									else
									{
						%>
										<option> No Test created</option>
						<%
								}
								}
									catch(Exception e)
									{
										e.printStackTrace();
									}
						%>
						</select>
					<tr>
						<td>Question</td>
						<td><input type="text" name="question" ></td>
					</tr>

					<tr>
						<td>Option A</td>
						<td><input type="text" name="A"></td>
					</tr>
					<tr>
						<td>Option B</td>
						<td><input type="text" name="B"></td>
					</tr>
					

					<tr>
						<td>Option C</td>
						<td><input type="text" name="C"></td>
					</tr>

					<tr>
						<td>Option D</td>
						<td><input type="text" name="D"></td>
					</tr>
	
					<tr>
						<td>Correct Answer</td>
						<td><input type="radio" name="correct" value="A"> A<br>
  							<input type="radio" name="correct" value="B"> B<br>
  							<input type="radio" name="correct" value="C"> C<br>
  							<input type="radio" name="correct" value="D"> D
					</tr>
	

					<tr>
						<td></td>
						<td><input type="submit" value="SUBMIT"></td>
					</tr>

			</table>

			</form>
        
      
    </div></div>
<jsp:include page="footer.jsp"/>




</body>
</html>
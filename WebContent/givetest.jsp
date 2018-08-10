<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
     <%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" media="screen" href="css/style3.css" />
<title>View Test</title>
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



	<div id="container">
	<div id="site_content">
      <div class="sidebar">
        <!-- insert your sidebar items here -->
       
      <div id="content">
        <!-- insert the page content here -->
        <h2 align="center">Give Test</h2>
        				<form action="starttest1.jsp">
        				<table>
        				<tr>
        					<td><h4>Select Test</h4></td>
        					<td>
        					<select name="test" >
        					<option value="null">Click Me</option>
        					<%!
								ResultSet rs=null;
						
							%>
							<%
							
							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","himanshu");
								PreparedStatement ps=con.prepareStatement("select * from test_list");
								rs=ps.executeQuery();
								if(rs.next())
								{
						
									do
									{
						%>				
									<option value=<%=rs.getString(2) %>> <%=rs.getString(2) %></option>
						<%
									}while(rs.next());
									
								}
							
							
							}
								
									
							catch(Exception e)
									{
										e.printStackTrace();
									}
						%>
        					
        						</select>
        						</td>
        						</tr>
        						<tr><td><input type="radio" name="view" value="starttest">StartTest</td>
        							
        							</tr>
        							<tr>
        							<td>
        							</td>
        							<td> <input type="submit" value="Next">
        							</td>
        							</tr>
        							
        					</table>
							</form>
						
        
      			</div>
   				 </div></div>
	
	

	

	
	<jsp:include page="footer.jsp"/>
</body>
</html>
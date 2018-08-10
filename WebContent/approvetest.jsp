<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
     <%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" media="screen" href="css/style3.css" />
<title>Approve Test</title>
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


	<div id="container">
	<div id="site_content">
      <div class="sidebar">
        <!-- insert your sidebar items here -->
      
      <div id="content">
        <!-- insert the page content here -->
        <h2 align="center">Approve Test</h2>
        				<form action="approvetest1.jsp">
        				<table align="center" border="4" width="50%">
 						 <tr>
    						<th>Test Name</th>
   							 <th>Action</th>
 						 </tr>
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
						
  							<tr>
   							 <td><%=rs.getString(1) %></td>
   							 <td><input type="radio" name="approve" value="<%=rs.getString(1)%>" > Approve <br></td>
  						</tr>
 

        								
						<%
					
									}while(rs.next());
									
								}
								else{}
							
							}
								
									
							catch(Exception e)
									{
										e.printStackTrace();
									}
						%>
        						
        							<tr>
        							<td> 
        							</td>
        							<td> <input type="submit" value="Confirm">
        							</td>
        							</tr>
        							
        					</table>
							</form>
						
        
      			</div>
   				 </div></div>
	
	

	

	
	<jsp:include page="footer.jsp"/>
</body>
</html>
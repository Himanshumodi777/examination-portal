<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" media="screen" href="css/style3.css" />
<title>Result page</title><style>
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
   <div id="content">
        <!-- insert the page content here -->
        <h2>Result</h2>
<%! ResultSet rs=null; %>
	<%
	String id=(String)session.getAttribute("id");
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","himanshu");
		PreparedStatement ps =con.prepareStatement("select * from result ");
		
		rs=ps.executeQuery();
		if(rs.next()){%>
		<table align="centre" border="4" width="50%">
		<tr><th>Enrollment Id</th>
		<th>Marks Obtained</th>
		<th>Total Marks</th>
		<th>Test</th>
	</tr><% 
		do{	%>
		
	<tr>
	<td><%=rs.getString(1) %>
	<td><%=rs.getString(2) %>
	<td><%=rs.getString(3) %>
	<td><%=rs.getString(4) %>
	</td>
	
		<% 
			
			
		}
		while(rs.next());
			
		};%>
		</table><%
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
        
      </div>
    </div></div>

<jsp:include page="footer.jsp"/>
</body>
</html>



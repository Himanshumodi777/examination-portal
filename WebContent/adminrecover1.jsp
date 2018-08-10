
    
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
		String enroll=request.getParameter("enrollno");
		String mob=request.getParameter("mobno");
		String dob=request.getParameter("dob");

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","himanshu");
			PreparedStatement ps=con.prepareStatement("select * from admin where id=? and dob=? and contact=?");
			ps.setString(1, enroll);
			ps.setString(2, dob);
			ps.setString(3, mob);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				String password=rs.getString(2);
				%>
				<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" media="screen" href="css/style3.css" />
<title>Recover Password</title>
<style>
table {
    border-collapse: collapse;
    width: 65%;
}

th, td {
    text-align: centre;
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
	  <div id="content">
        <!-- insert the page content here -->
       <h2 align="center">Recover Password</h2>
        
        
        <h3 align="center">Your Password is : <%out.println(""+password); %></h3>
        
        
        							<h4 align="right"><a  href="adminlogin.html">Click here for login</a></h4>
        							
        							
        							
        							
        							
        							
        							
        						
        							
        							
        							
        				</div></div>
	<jsp:include page="footer.jsp"/>
</body>
</html>
	<% 
			}
			
			
			
			
				
		else{
			%>	
			<script type="text/javascript">
					function falseentry(){  
					window.location.href = "adminrecover.jsp";
	    			alert("You have entered an incorrect details.......!");
	    			
	    			}
					falseentry();


</script>

		 <%   	}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	




%>














<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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



	<div id="container">
	  <div id="content">
        <!-- insert the page content here -->
        <h2 align="center">Recover Password</h2>
        <h4 align="center"> Please Fill the required information for recover password.....></h4>
        				<form action="studentrecover1.jsp">
        				<table align="center" border="4" width="50%">
 						 <tr>
    						<td> Enter your Enrollment No.</td>
   							 <td> <input type="text" name="enrollno" ></td>
 						 </tr>
 						 <tr>
 						 	<td> Enter your mobile No.</td>
   							 <td> <input type="text" name="mobno" ></td>
 						 
 						 </tr>
 						  <tr>
 						 	<td> Enter your date of birth</td>
   							 <td> <input type="text" name="dob" ></td>
 						 
 						 </tr>
 						         	<tr>
        							<td><input type="reset" value="Reset" align="middle">
        							</td>
        							<td> <input type="submit" value="Confirm" align="middle">
        							</td>
        							</tr>
        							
        					</table>
							</form>
						
        
      			</div>
   				 </div></div>
	
	

	

	
	<jsp:include page="footer.jsp"/>
</body>
</html>
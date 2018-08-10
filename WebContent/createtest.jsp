<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Create test</title><style>
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

<body background="bgnoise_lg.png";
width:100%;
height:100%>

 


	<jsp:include page="header.jsp"/>
			

        <!-- insert the page content here -->
        <h2 align="center">Create Test</h2>
        <form action="createtestprocess.jsp" >

				<table align="center" border="4" width="50%">
					<tr>
						<td>Test Name</td>
						<td><input type="text" name="test_name"></td>
					</tr>

					<tr>
						<td>Time Duration(Minute)</td>
						<td><input type="text" name="time"></td>
					</tr>
					<tr>
						<td>Number of questions</td>
						<td><input type="text" name="numques"></td>
					</tr>
					

					<tr>
						<td>Mark for Correct answer</td>
						<td><input type="text" name="cm"></td>
					</tr>

					<tr>
						<td>Negative mark for Incorrect answer</td>
						<td><input type="text" name="im"></td>
					</tr>
	
					<tr>
						<td>Instruction</td>
						<td><textarea name="instruction"></textarea></td>
					</tr>
	

					<tr>
						<td></td>
						<td><input type="submit" value="NEXT"></td>
					</tr>

			</table>

			</form>
        
      
    </div></div>
<jsp:include page="footer.jsp"/>
</body>
</html>
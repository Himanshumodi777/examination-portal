<%-- 
    Document   : BeginTest
    Created on : Jul 14, 2012, 3:39:15 PM
    Author     : himanshu
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Exam</title>
    <!-- BOOTSTRAP CORE STYLE  -->
     <%@page language="java" %>
         <%@page import="java.io.*" %>
          <%@page import="java.sql.*" %>
          
         
<link href="menuStyle.css" rel="stylesheet" type="text/css" />
          
    <link href="css/bootstrap_home.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="css/font-awesome_home.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="css/style_home.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
    
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}



#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
   
    background-color: #4CAF50;
    color: white;
}
</style>


</head>
   
       <%   
HttpSession Usersession = request.getSession(false);
if(Usersession.getAttribute("Username") == null)
       {
   response.sendRedirect("index.jsp");
      

}
else
       { String exam = request.getParameter("examListRadio");
       ResultSet rs=null;
    
%><body>
    <div class="navbar navbar-inverse set-radius-zero" >
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="" href="index.jsp">

                    <h1>Online Examination Portal</h1>
                </a>

            </div>

            <div class="right-div">
                <a href="Logout.jsp" class="btn btn-danger pull-right">LOG ME OUT</a>
            </div>
        </div>
    </div>
    <!-- LOGO HEADER END-->
    <section class="menu-section">
        <div class="container">
            <div class="row ">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="home.jsp" class="menu-top-active"> Home </a></li>
                             <li><a href="table.html">Profile</a></li>
                            <li><a href="active.jsp">Active Test</a></li>
                            
                            <li><a href="tab.html">Result</a></li>
                           
                            

                        </ul>
                    </div>
                </div>

            </div>
            
        </div>
    </section>

            
            <%try{       
                Class.forName("com.mysql.jdbc.Driver");
               
        Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/online","root","root");
        PreparedStatement ps =con.prepareStatement("select * from test_list where Testid=?");
			ps.setString(1, exam);
			rs=ps.executeQuery();
			if(rs.next())
			{	session.setAttribute("exam",exam);
                                 int EXAMDURATION=rs.getInt(4);
                                  int noq=rs.getInt(5);
				%>
        
                                <table id="customers" border="0" width="950">
                                <tr>
                                <td align ="center">
                                    <form name="testSummary" id="testSummary" action="StartNewExam" method="POST">
                                        <table cellpadding ="10" cellspacing="0" border ="0" style="padding-top: 40px; border: none">

        
                                             <th colspan ="3"><h2 >Examination Details</h2></th>
                                                <tr>
                                                    <td style="color: #4778e3; font-size:20px;">
                                                        Exam Code
                                                    </td>
                                                    <td>:</td>
                                                    <td>
                                                        <%
                                                                out.println(exam);
                                                            %>
<input type="hidden" id="ExamCode" name="ExamCode" value="<% out.print(exam); %>"/>
<input type="hidden" id="ExamName" name="ExamNamePassOn" value="<% out.print(request.getParameter("Name-"+exam)); %>"/>
<input type="hidden" id="EXAMDURATION" name="EXAMDURATION" value="<% out.print( EXAMDURATION ); %>"/>
<input type="hidden" id="NOQ" name="NOQ" value="<% out.print( noq ); %>"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #4778e3;font-size:20px;">
                                                        Exam Name
                                                    </td>
                                                    <td>:</td>
                                                      <td>
                                                        <%=rs.getString(2) %>
                                                       </td>
                                                </tr>
                                             <tr>
                <td style="color: #4778e3;font-size:20px;">
                    Time Duration
                </td>
                <td>:</td>
                <td>
                    <%=rs.getInt(4) %>
                </td>
            </tr>
            <tr>
                <td style="color: #4778e3;font-size:20px;">
                    No. of Questions
                </td>
                <td>:</td>
                <td>
                  <%=rs.getString(5) %>
                </td>
            </tr>
            <tr>
                <td style="color: #4778e3;font-size:20px;">
                    Positive Marks
                </td>
                <td>:</td>
                <td>
                    <%=rs.getString(6) %>
                </td>
            </tr>
            <tr>
                <td style="color: #4778e3;font-size:20px;">
                    Negative Marks
                </td>
                <td>:</td>
                <td>
                  <%=rs.getString(7) %>
                </td>
            </tr>
            <tr>
                <td style="color: #4778e3;font-size:20px;">
                    Section
                </td>
                <td>:</td>
                <td>
                    <%=rs.getString(8) %>
                </td>
            </tr>
            <tr>
                <td style="color: #4778e3;font-size:20px;">
                    Instruction
                </td>
                <td>:</td>
                <td>
                   <%=rs.getString(3) %>
                </td>
            </tr>
            <tr>
            
                                             
                                             
                                             
  
                <td colspan="3" align ="center">
                    
                    <a href="javascript:void(0)" onClick="javascript:document.getElementById('testSummary').submit()">
                        <img src="images/Start-Test.png" width="160" height="42" style="margin-top:10px; border: 0" /></a>
                    <a href="home.jsp">
                        <img src="images/Cancel-Exam-Start.png" width="160" height="42" style="margin-top:10px; border: 0" /></a>
                </td>
            </tr>
        </table>         
        </form>  
            </td>
        </tr>
    </table>
            <%
                       }}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		}
    %>

 <!-- CONTENT-WRAPPER SECTION END-->
    <section class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                   &copy; 2014 Yourdomain.com |<a href="http://www.binarytheme.com/" target="_blank"  > Designed by : binarytheme.com</a> 
                </div>

            </div>
        </div>
    </section>
      <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
      <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>     
  
</body>
</html>

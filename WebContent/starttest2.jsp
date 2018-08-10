<%-- 
    Document   : Examination
    Created on : Jul 17, 2012, 1:26:58 AM
    Author     : Devanand
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    <!-- FONT AWESOME STYLE  -->
    <link href="css/font-awesome_home.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
  
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

        
        <%@page import="java.util.Date"%>
<%
 int noq = Integer.parseInt(UserSession.getAttribute("noq").toString());
    String mins = request.getParameter( "mins" );
if( mins == null ) mins = "30";

String secs = request.getParameter( "secs" );
if( secs == null ) secs = "1";


String StartTime = "";
String AlottedTime = "";
//out.println("Exam ID : "+UserSession.getAttribute("ExamID")+"<br>");

//StartTime = request.getParameter("Start");
//if(StartTime == null) 
StartTime = UserSession.getAttribute("StartTime").toString();

//AlottedTime = request.getParameter("Alotted");
//if(AlottedTime == null) 
AlottedTime = UserSession.getAttribute("Alotted").toString();

int iAlottedTime = Integer.parseInt(AlottedTime);
//out.println("Alotted time : "+iAlottedTime);

Date timer = new Date();

long currentTime= timer.getTime()/1000; //-- Current time in seconds
//out.println("<br>Current Time : "+currentTime);

int Elapsed = (int) currentTime-Integer.parseInt(StartTime); //-- Elapsed duration of the exam in seconds
//out.println("<br>Elapsed : "+Elapsed);

int remaining = iAlottedTime - Elapsed; //-- Remaining duration of the exam in seconds
//out.println("<br>Remaining : "+remaining);

int remainingMin = remaining/60;
//out.println("<br>Remaining Minutes : "+remainingMin);

int remainingSec = remaining%60;
//out.println("<br>Remaining Seconds : "+remainingSec+"<br><br>");


%>
<script>
<!--
var mins = <%=remainingMin%>; // write mins to javascript
var secs = <%=remainingSec%>; // write secs to javascript

function timer()
{
// tic tac
if( --secs == -1 )
{
secs = 59;
--mins;
}

// leading zero? formatting
if( secs < 10 ) secs = "0" + secs;             
if( mins < 10 ) mins = "0" + parseInt( mins, 10 );

// display
//document.forma.mins.value = mins; 
//document.forma.secs.value = secs;
document.getElementById("ShowTimer").innerHTML= mins+" : "+secs;
//document.forma.minutes.innerHtml = mins;
// 
// continue?
if(mins < 20)
    {
         document.getElementById("ShowTimer").style.color = "#FF9933";  
    }
if(mins < 10)
    {
        document.getElementById("ShowTimer").style.color = "#CC0000";   
    }
if( secs == 0 && mins == 0 ) // time over
{
    alert("Your exam duration has ended. Please click OK to view your Result Summary");
    document.getElementById("timeoutExamPost").submit();
//---- TO-DO Code : Time out operations should be written here
}
else // call timer() recursively every 1000 ms == 1 sec
{
window.setTimeout( "timer()", 1000 );
}
}

function getPreviousQuestion()
{
    var myframe= document.getElementById("QuestionPaperFrame");
    var QNo = getCookie("QuestionNo");
        QNo--;
        if(QNo!=0)
           {
        setCookie("QuestionNo",QNo,1);
        setCookie("MoveDirection","Back",1);
    //document.getElementById("testID").innerHTML = QNo;
    //myframe.contentDocument.getElementById("Debug-Space").innerHTML = QNo;
    myframe.contentDocument.getElementById("QuestionPaperForm").submit();
           }
}

function getNextQuestion()
{
    var myframe= document.getElementById("QuestionPaperFrame");
    var QNo = getCookie("QuestionNo");
        
        QNo++;
        if(QNo!=26)
         {   
        setCookie("QuestionNo",QNo,1);
        setCookie("MoveDirection","Next",1);
    //document.getElementById("testID").innerHTML = QNo;
    //myframe.contentDocument.getElementById("Debug-Space").innerHTML = QNo;
    myframe.contentDocument.getElementById("QuestionPaperForm").submit();
         }
}

function setCookie(c_name,value,exdays)
{
var exdate=new Date();
exdate.setDate(exdate.getDate() + exdays);
var c_value=escape(value) + ((exdays==null) ? "" : "; expires="+exdate.toUTCString());
document.cookie=c_name + "=" + c_value;
}

function getCookie(c_name)
{
var i,x,y,ARRcookies=document.cookie.split(";");
for (i=0;i<ARRcookies.length;i++)
{
  x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
  y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
  x=x.replace(/^\s+|\s+$/g,"");
  if (x==c_name)
    {
    return unescape(y);
    }
  }
}
//-->
</script>
<title><% out.print(UserSession.getAttribute("ExamName")+" : "+UserSession.getAttribute("UEID")); %> - Online Examination Portal</title>
    </head>
    <body>
        <form action="<%=request.getRequestURL()%>" name="forma">
        
            
            
<div id="ExamPageHeader"  style="height: 11%; background-color: #eee; width:100%; position: fixed; top: 0; padding-top: 20px; padding-bottom: 20px">
                <table align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
            <table border="0"  width="200" cellspacing="0" cellpadding="6">
                <tr>
                    <td>
                        <b> Exam ID </b>
                       
                    </td>
                    <td>
                        :
                    </td>
                    <td style="padding-left: 10px">
                        
                        <% out.println(UserSession.getAttribute("ExamID")); %>
                    </td>
                    
                    
                </tr>
                <tr>
                    <td><b>
                        Enrollment
                        </b>
                    </td>
                    <td>
                        :
                    </td>
                    <td style="padding-left: 10px">
                        <% out.println(UserSession.getAttribute("UserId")); %>
                    </td>
                    
                    
                </tr>
                <tr>
                    <td> <b>
                        Date
                        </b>                    </td>
                    <td>
                        :
                    </td>
                    <td style="padding-left: 10px">
                        <% 
                        DateFormat dtFormat = new SimpleDateFormat("dd / MM / yyyy");
                        out.println(dtFormat.format(timer));
                        UserSession.setAttribute("ExamDate", dtFormat.format(timer));
                        %>
                    </td>
                </tr>
            </table>
            
            
                    </td>
                    <td>
            
            
            <table border="0" width="800"  cellspacing="0" cellpadding="2">
                <tr align="center">
                    <td valign="center">
                        <b style="font-size: 22px">Online Examination Portal</b>
                    </td>
                </tr>
                <tr align="center">
                    <td rowspan="2">
                        <b style="font-size: 30px"> <% out.print(UserSession.getAttribute("ExamName")); %> </b>
                    </td>
                </tr>
               
            </table>
            
            
                    </td>
                    <td>
            
            
            <table border="0" width="200" cellspacing="0" cellpadding="2">
                <tr>
                    <td><b>
                        UEID
                        </b>  </td>
                    <td style="padding-left: 10px">
                        :
                    </td>
                    <td style="padding-left: 10px" align ="right">
                        <% out.print(UserSession.getAttribute("UEID")); %>
                    </td>
                </tr>
                <tr >
                    <td colspan="3" valign="bottom" align="right">
                        <b>Time Remaining</b>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="right">
                        <b id="ShowTimer"></b>
                    </td>
                </tr>
            </table>
                    </td>
                </tr>
            </table>
                    <hr/>
        </div> 
<div id="ExamPageQuestionPaper" style="height: 60%; width:99.5%; position: fixed; padding-top: 190px; ">
    <iframe src="QuestionPaper.jsp" id="QuestionPaperFrame" width="100%" height="100%" frameborder="0" name="QuestionPaper"></iframe>
    <hr style="border-color: black; margin-top: .5em;">  
    <div style=" height: 10%; width:99.5%; position: fixed; padding-top: 20px;background-color: #eee;margin-bottom:1em;">
        <a href="javascript:void(0)" onClick="getPreviousQuestion()" style="padding-left: 140px; "><img src="images/previous1.jpg" width="160" height="42" /></a>
    <a href="javascript:void(0)" style="padding-left: 20px" onClick="getNextQuestion()"><img src="images/previous.jpg" width="160" height="42" /></a>
    
    <br></div>
<b id="testID"></b>
</div>
<a href="submitExamConfirmation.jsp" style="position: absolute; bottom: 0; right: 0; padding-bottom: 10px; padding-right: 140px"><img src="images/submit.jpg" width="160" height="42" /></a>
         
        </form> 
                    <form name="finishExamonTimeout" id="timeoutExamPost" action="submitExamination" method="POST"></form>

                   
                    <script>
<!--
timer(); // call timer() after page is loaded
//-->
</script>
<%
}
%>
    </body>
</html>

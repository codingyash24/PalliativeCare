<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Finance : Home</title>
    <!-- Font Awesome -->
    <link href="../assets/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="../asset/css/bootstrap.css" rel="stylesheet">   
    <!-- Slick slider -->
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css"/> 
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="../assets/css/jquery.fancybox.css" type="text/css" media="screen" /> 
    <!-- Animate css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css"/> 
    <!-- Progress bar  -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-progressbar-3.3.4.css"/> 
     <!-- Theme color -->
    <link id="switcher" href="../assets/css/theme-color/default-theme.css" rel="stylesheet">
<!-- Main Style -->
     <link href="style.css" rel="stylesheet"> 
    <link rel="stylesheet" href="../asset/css/bootstrap.min.css">
  <script src="../asset/js/jquery.min.js"></script>
  <script src="../assets/js1/bootstrap.min.js"></script>

    
    
    <!-- BEGIN MENU -->
  <section id="menu-area">      
    <nav class="navbar navbar-inverse" role="navigation">  
      <div class="container">
        <div class="navbar-header">
          <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- LOGO -->              
          <!-- TEXT BASED LOGO -->
         <div class="logo">
                             <img alt="" src="../asset/images/itlogo.png">
                        </div>           
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
       <li ><a href="FinanceIndex.jsp">Home</a></li>
            <li><a href="Attendance.jsp">Attendance</a></li>
            <li><a href="Income.jsp">Income</a></li>
            <li><a href="Expense.jsp">Expense</a></li>
            <li><a href="Profile.jsp">Profile</a></li>
             <li><a href="Leaveapply.jsp">ApplyForLeave</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle"  data-toggle="dropdown">Reports <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="IncomeReport.jsp">Income Reports</a></li>                
                <li><a href="ExpenseReport.jsp">Expense Report</a></li>
                <li><a href="AttendSalaryReport.jsp">Attendance&Salary</a></li>          
              </ul>
            </li>
             <li><a href="grpchatlogin.jsp">Chat</a></li>              
            <li><a tabindex="-1" href="Login.jsp"><i class="fa fa-sign-out"></i>Logout</a></li>
          </ul>                     
        </div>
        <a href="#" id="search-icon">
          <i class="fa fa-search">            
          </i>
        </a>
      </div>     
    </nav>
  </section>
  <!-- END MENU --> 
    <jsp:include page="JqueryLib.jsp"></jsp:include>
</body>
</html>
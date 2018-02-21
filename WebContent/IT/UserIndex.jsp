<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="common.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Student: Home</title>
  <script src="../sweetalert-master/dist/sweetalert.min.js"></script> 
 <link rel="stylesheet" type="text/css" href="../sweetalert-master/dist/sweetalert.css">
  
</head>
<body>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:include page="UserMenubar.jsp"></jsp:include>
<script type="text/javascript">
<%-- swal("welcome <%=session.getAttribute("name")%>", " have a great visit"); --%>
swal({ title: "<%=session.getAttribute("name")%>", imageUrl: "asset/images/welcome4.png", imageSize: '400x100'});
</script>
<!-- Start Blog section -->
	<section id="from-blog">
		<div class="container">
			<div class="title-area">
				<h2 class="tittle">News</h2>
				<span class="tittle-line"></span>
			</div>

			<div class="row">
				<div class="col-md-12">
					<!-- From Blog content -->
					<div class="from-blog-content">
						<div class="row">
							<div class="contact-left wow fadeInLeft">
								<div class="col-md-4">
									<article class="single-from-blog">
										<figure>
										</figure>
										<div class="blog-title">
											<div class="panel panel-warning">
												<div class="panel-heading">
													<div id="news1"></div>
												</div>
											</div>
											<p>
												Posted by admin on <span class="blog-date" id="date1"></span>
											</p>
										</div>

									</article>
									<div id="desc1" class="jumbotron"></div>
								</div>
								<div class="col-md-4">
									<article class="single-from-blog">
										<figure>
										</figure>
										<div class="blog-title">
											<div class="panel panel-warning">
												<div class="panel-heading">
													<div id="news2"></div>
												</div>
											</div>
											<p>
												Posted by admin on <span class="blog-date" id="date2"></span>
											</p>
										</div>

									</article>
									<div id="desc2" class="jumbotron"></div>
								</div>
								<div class="col-md-4">
									<article class="single-from-blog">
										<figure>
										</figure>
										<div class="blog-title">
											<div class="panel panel-warning">
												<div class="panel-heading">
													<div id="news3"></div>
												</div>
											</div>
											<p>
												Posted by admin on <span class="blog-date" id="date3"></span>
											</p>
										</div>

									</article>
									<div id="desc3" class="jumbotron"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> 
<!-- End Blog section -->

					 <!-- Start footer -->
  <footer style="margin-top:30px;" id="footer">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
           <h4> All Right Reserve &copy; Copyright 2016 <a href="Index.jsp" target="_blank">COMPLETE ERP AHMEDABAD</a></h4>
          </div>
        </div>
        <div class="col-md-6 col-sm-6">
          <div class="footer-right">
            <a href="https://www.facebook.com/pages/Robonet-Infotech-India-PvtLtd/1087711411254042?ref=hl"><i  class="fa fa-facebook"></i></a>
            <a href="https://twitter.com/robo_infotech"><i class="fa fa-twitter"></i></a>
            
            <a href="https://www.linkedin.com/hp/?dnr=jK1iIuw-2ysWp7WN4KgQZ43T9PPCp7ef8Dly&trk=hb_signin"><i class="fa fa-linkedin"></i></a>
            
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- End footer -->
					<script>
    $(document).ready(function() {
    	$.get('../Blog',function(responseJson) {
        	var json=responseJson;
        	              document.getElementById("news1").innerHTML=json[0].news;
        	              document.getElementById("news2").innerHTML=json[1].news;
        	              document.getElementById("news3").innerHTML=json[2].news;
        	              document.getElementById("date1").innerHTML=json[0].day+ "/" +json[0].month+"/"+json[0].year;
        	              document.getElementById("date2").innerHTML=json[1].day+ "/" +json[1].month+"/"+json[1].year;
        	              document.getElementById("date3").innerHTML=json[2].day+ "/" +json[2].month+"/"+json[2].year;
        	              document.getElementById("desc1").innerHTML=json[0].description;
        	              document.getElementById("desc2").innerHTML=json[1].description;
        	              document.getElementById("desc3").innerHTML=json[2].description;
        	});
        	});
</script>
<script type = "text/javascript" >
          function preventBack() { window.history.forward(); }
          setTimeout("preventBack()", 10);
          window.onunload = function () { null };
    </script>
</body>
</html>
<%
DBConnection db=new DBConnection();
Connection con=db.getCOnnectivity();
String sid=request.getSession().getAttribute("regid").toString();
String sql="UPDATE registration SET rg_firstattemptflag=1 WHERE (rg_firstattemptflag=0 AND RegID='"+sid+"')";
PreparedStatement psmt=con.prepareStatement(sql);
psmt.executeUpdate();
%>


<%

String sql1="insert into online(ol_flag,ol_um_id)values(?,?)";
try{
PreparedStatement pstmt=con.prepareStatement(sql1);
pstmt.setInt(1,1);
pstmt.setString(2,sid);

int i=pstmt.executeUpdate();
}

catch(SQLException e)
{
	e.printStackTrace();
}

%>
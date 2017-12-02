<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Approve Parking Space</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/metro/crimson/jtable.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.7.2.min.js"></script>
<link href="css/jquery-ui-1.10.3.custom.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.8.2.js" type="text/javascript"></script>
<script src="js/jquery-ui-1.10.3.custom.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
<script src="js/jquery.jtable.js" type="text/javascript"></script>
<script src="js/base.js"></script> 
<style>
	
.ui-widget-header {
background: #609083 url(images/ui-bg_highlight-soft_15_cc0000_1x100.png) 50% 50% repeat-x;
}
</style>
<script type="text/javascript">
����$(document).ready(function() {
	$.ajax({
		type : 'GET',
		url : 'ParkingSpaceApproval',
		success : function(response) {
			if (response != null)
				$('#parkingSpace').html(response);
			else
				$('#msg').html("No Requests");
		},
		failure : function(error) {
			console.log(error)
		}
	});
});
</script>
</head>
<body>
			<%
				if(session.getAttribute("username")==null){
					
					response.sendRedirect("adminLogin.jsp");
					
				}
			
			%>
<jsp:include page="./adminHeader.jsp"/>
<div class="subnavbar">
  <div class="subnavbar-inner">
    <div class="container">
      <ul class="mainnav">
        <li><a href="adminDashboard.jsp"><i class="fa fa-bars"></i><span>Dashboard</span> </a> </li>
       <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-cogs"></i><span>Manage</span> 
       <b class="caret"></b></a>
        <ul class="dropdown-menu">
            <li><a href="manageVehicles.jsp">Vehicle Types</a> </li>
            <li><a href="manageUsers.jsp">Users</a> </li>
            <li><a href="manageVehicleDetails.jsp">Vehicle Details </a> </li>
            <li><a href="manageParkingSpaces.jsp">Parking Spaces </a> </li>
          </ul>
        </li>
        <li class="active"><a href="approveParkingSpace.jsp"><i class="fa fa-automobile"></i><span>Approve Parking Space</span></a> </li>
         
      </ul>
    </div>
    <!-- /container --> 
  </div>
  <!-- /subnavbar-inner --> 
</div>

<div class="main">
    <div class="container">
	<div class="widget widget-table action-table">
            					<div class="widget-header">    <i class="fa fa-bars"></i>
             						 <h3>Parking Space Approval Requests</h3>
            					</div>
            					<!-- /widget-header -->
            				<div id="parkingSpace"></div>
            				<h4 id="msg"></h4>
            <!-- /widget-content --> 
          </div>
    </div>
</div>
<!-- <div style="width:80%;margin-right:10%;margin-left:10%;text-align:center;">
<div id="parkingSpace">
</div>
</div> -->
<jsp:include page="./footer.jsp"/>
<script type="text/javascript">
	function editRecord(id) {
		/* var f = document.form;
		f.method = "post";
		f.action = 'viewParkingSpace.jsp?id=' + id;
		f.submit(); */
		document.location = 'checkSpaceDetails.jsp?id=' + id;
	}
	
	</script>

</body>
</html>
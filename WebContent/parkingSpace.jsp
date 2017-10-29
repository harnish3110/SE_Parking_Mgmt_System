<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Parking Space</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
	rel="stylesheet">
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/pages/dashboard.css" rel="stylesheet">
<script src="js/jquery-1.8.2.js" type="text/javascript"></script>
<style>
body, h1, h2, h3, h4, h5 {
	font-family: "Poppins", sans-serif;
}

body {
	font-size: 16px;
}

.table thead th {
	font-size: large;
	font-weight: bold;
	text-align: center
}

.table tbody td {
	font-size: medium;
	text-align: center
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$.ajax({
			type : 'GET',
			url : 'ViewParkinSpace',
			success : function(response) {
				if (response != null)
					$('#parkingSpace').html(response);
				else
					$('#msg').html("No Parking Space Added Yet");
			},
			failure : function(error) {
				console.log(error)
			}
		});
		$('#').click(function() {
			var uname = $('#username').val();
			var mobile = $('#mobile').val();
			var regNum = $('#regNum').val();
			var vehicleType = $('#vehicleType').val();
			$.ajax({
				type : 'POST',
				url : 'AnonymousUser',
				data : {
					name : uname,
					mobile_number : mobile,
					RegistrationNo : regNum,
					type : vehicleType
				},
				success : function(responseText) {
					alert(responseText);
				}
			});
		});
	});
</script>
</head>
<body>
	<!-- navbar -->
	<jsp:include page="./parkingHeader.jsp" />
	<!-- /navbar -->


	<!-- Main -->

	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<!-- /widget -->
					<div class="widget widget-table action-table">
						<!-- /widget-header -->
						<div id="parkingSpace">
							<h4 id="msg"></h4>
						</div>
						<!-- /widget-content -->
					</div>
					<div>
						<a href="addParkingSpace.jsp" class="btn btn-primary">Add New
							Space</a>
					</div>
					<!-- /widget -->
					<!-- /widget -->
				</div>
				<div class="row"></div>
				<!-- /span6 -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>


	<!-- /Main -->


	<!-- footer -->
	<jsp:include page="./footer.jsp" />
	<!-- /footer -->
	<script type="text/javascript">
	function editRecord(id) {
		/* var f = document.form;
		f.method = "post";
		f.action = 'viewParkingSpace.jsp?id=' + id;
		f.submit(); */
		document.location = 'editParkingSpace.jsp?id=' + id;
	}
	
	</script>
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/excanvas.min.js"></script>
	<script src="js/base.js"></script>
	<script src="js/chart.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/base.js"></script>
	<script src="js/jquery-1.8.2.js" type="text/javascript"></script>
	<script src="js/jquery-ui-1.10.3.custom.js" type="text/javascript"></script>
	<script src="js/jquery.jtable.js" type="text/javascript"></script>

</body>
</html>
<!-- RAHUL -->
<%@page import="javafx.scene.control.Alert"%>
<%@ page import="com.mvc.util.DBConnection"%>
<%@page import="java.sql.*"%>
<%
%>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Dashboard</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
	rel="stylesheet">
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/pages/dashboard.css" rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
	rel='stylesheet' type='text/css'>
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
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script language="javascript" type="text/javascript">
	var xmlHttp
	var xmlHttp
	function showState(str) {
		if (typeof XMLHttpRequest != "undefined") {
			xmlHttp = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		if (xmlHttp == null) {
			alert("Browser does not support XMLHTTP Request")
			return;
		}
		var url = "state.jsp";
		url += "?count=" + str;
		xmlHttp.onreadystatechange = stateChange;
		xmlHttp.open("GET", url, true);
		xmlHttp.send(null);
	}

	function stateChange() {
		if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
			document.getElementById("state").innerHTML = xmlHttp.responseText
		}
	}

	function showCity(str) {
		if (typeof XMLHttpRequest != "undefined") {
			xmlHttp = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		if (xmlHttp == null) {
			alert("Browser does not support XMLHTTP Request")
			return;
		}
		var url = "city.jsp";
		url += "?count=" + str;
		xmlHttp.onreadystatechange = stateChange1;
		xmlHttp.open("GET", url, true);
		xmlHttp.send(null);
	}
	function stateChange1() {
		if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
			document.getElementById("city").innerHTML = xmlHttp.responseText
		}
	}
</script>
</head>
<body>
	<%
		if (session.getAttribute("username") == null) {

			response.sendRedirect("login.jsp");

		}
	%>
	<!-- navbar -->
	<jsp:include page="./vehicleOwnerHeader.jsp" />
	<!-- /navbar -->

	<div class="subnavbar">
		<div class="subnavbar-inner">
			<div class="container">
				<ul class="mainnav">
					<li class=""><a href="vehicleOwnerDashboard.jsp"><i
							class="icon-dashboard"></i><span>Dashboard</span> </a></li>
					<li><a href="Profile.jsp"><i class="fa fa-address-card"></i><span>Edit
								Profile</span></a></li>
					<li><a href="changePassword.jsp"><i
							class="fa fa-thumb-tack"></i><span>Change Password</span></a></li>
					<li><a href="bookparking.jsp"><i class="fa fa-braille"></i><span>Book
								Parking Space</span></a></li>
					<li><a href="yourBookings.jsp"><i class="fa fa-clipboard"></i><span>Your
								Bookings</span></a></li>
					<li><a href="manageVehicle.jsp"><i
							class="fa fa-automobile"></i><span>Manage Vehicles </span></a></li>
					<li class="active"><a href="parkingLocator.jsp"><i
							class="fa fa-location-arrow"></i><span>Parking Locator</span> </a></li>
				</ul>
			</div>
			<!-- /container -->
		</div>
		<!-- /subnavbar-inner -->
	</div>
	<!-- /subnavbar -->

	<div class="main">

		<div class="main-inner">

			<div class="container">

				<div class="row">

					<div class="span12">

						<div class="widget ">

							<div class="widget-header">
								<i class="icon-user"></i>
								<h3>Parking Locator</h3>
							</div>
							<!-- /widget-header -->

							<div class="widget-content">

								<div class="tabbable">

									<br>

									<div class="tab-content">

										<form action="parkingLocatorResult.jsp"
											class="form-horizontal">
											<table border="1">
												<tr>
													<th>State</th>
													<th>City</th>
												</tr>
												<tr>
													<td><select name='country'
														onchange="showState(this.value)">
															<option value="none">Select</option>
															<%
																Connection con = DBConnection.createConnection();
																Statement stmt = con.createStatement();
																ResultSet rs = stmt.executeQuery("Select distinct p_state from parking");
																while (rs.next()) {
															%>
															<option value="<%=rs.getString("p_state")%>"><%=rs.getString("p_state")%></option>
															<%
																}
															%>
													</select></td>
													<td id='state'><select name='state'>
															<option value='-1'></option>
													</select></td>
												</tr>
											</table>
											<div class="form-actions">
												<button type="submit" class="btn btn-primary" id="submit">Search</button>
												<button class="btn" type="reset">Reset</button>
											</div>

										</form>
									</div>




								</div>

							</div>
							<!-- /widget-content -->



							<div class="widget-header">
								<i class="icon-user"></i>
								<h3>Available Parking Locations</h3>
							</div>

							<%!public class Actor {

		String URL = "jdbc:mysql://localhost:3306/se_pms";
		String USERNAME = "root";
		String PASSWORD = "admin";

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		public Actor() {

			try {
				con = DBConnection.createConnection();
				ps = con.prepareStatement("select * from parking where p_state = ? AND p_city = ?");

			} catch (SQLException e) {
				e.printStackTrace();
			}

		}

		public ResultSet getActors(String state, String city) {

			try {
				ps.setString(1, state);
				ps.setString(2, city);
				rs = ps.executeQuery();

			} catch (SQLException e) {

				e.printStackTrace();
			}

			return rs;

		}

	}%>
							<%
								String state = new String();
								String city = new String();

								if (request.getParameter("country") != null) {
									state = request.getParameter("country");
									System.out.println(state);

								}
								if (request.getParameter("state") != null) {
									city = request.getParameter("state");
									System.out.println(city);
								}
								Actor actor = new Actor();
								ResultSet actors = actor.getActors(state, city);
							%>

							<div class="widget-content">

								<table border="1">
									<tbody>
										<tr>

											<td>Parking Name</td>
											<td>Parking Address</td>
											<td>Parking ZIP</td>
											<td>Opening Time</td>
											<td>Closing Time</td>
										</tr>
										<%
											while (actors.next()) {
										%>
										<tr>

											<td><%=actors.getString("P_NAME")%></td>

											<td><%=actors.getString("P_ADDRESS")%></td>
											<td><%=actors.getString("P_ZIP")%></td>
											<td><%=actors.getString("P_opentime")%></td>
											<td><%=actors.getString("P_closetime")%></td>


										</tr>
										<%
											}
										%>


									</tbody>

								</table>
							</div>
							<!-- /widget-content -->
						</div>
						<!-- /widget -->

					</div>
					<!-- /span8 -->

				</div>

			</div>


		</div>
		<!-- /row -->

	</div>
	<!-- /container -->

	</div>
	<!-- /main-inner -->

	</div>
	<!-- /main -->
	<!-- footer -->
	<jsp:include page="./footer.jsp" />
	<!-- /footer -->

	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/excanvas.min.js"></script>
	<script src="js/base.js"></script>
	<script src="js/chart.min.js" type="text/javascript"></script>
	<script src="js/jquery-1.7.2.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/base.js"></script>
	<script>
		
	</script>
	<!-- /Calendar -->

</body>


</html>
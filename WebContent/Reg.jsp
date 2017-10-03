<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Dashboard</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
		<link href="css/font-awesome.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<link href="css/pages/dashboard.css" rel="stylesheet">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
		<style>
   			body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif;}
   			body {font-size:16px;} 
   			.table thead th {font-size: large;font-weight: bold;text-align: center}
   			.table tbody td {font-size: medium;text-align: center}
		</style>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
		
	</head>
	<body>
			<div class="navbar navbar-fixed-top">
			  <div class="navbar-inner">
			    <div class="container"> <a class="brand" href="#" style="font-size: xx-large;">Parking Management System </a>
			      <div class="nav-collapse">
			        <ul class="nav pull-right">
			         <p style="font-size: x-large; margin-right: 50px; color: #ffffff;">Vehicle Owner</p> 

			<div class="main">
	
						<div class="main-inner">
					
						    <div class="container">
						
						      <div class="row">
						      	
						      	<div class="span12">      		
						      		
						      		<div class="widget ">
						      			
						      			<div class="widget-header">
						      				<i class="icon-user"></i>
						      				<h3>Register</h3>
						  				</div> <!-- /widget-header -->
										
										<div class="widget-content">
																
											<div class="tabbable">
															
											<br>
											
												<div class="tab-content">
													
													<form method="post" action="Register" class="form-horizontal" >
														<fieldset>
															
															<div class="control-group">											
																<label class="control-label" for="Name" >Name</label>
																<div class="controls">
																	<input type="text" class="span6 disabled" id="Name" name="Name" placeholder="Full Name">
																</div> <!-- /controls -->				
															</div> <!-- /control-group -->
															
															
															<div class="control-group">											
																<label class="control-label" for="mobile" >Mobile Number</label>
																<div class="controls">
																	<input type="text" class="span6" id="mobile" name="mobile" placeholder="Mobile no">
																</div> <!-- /controls -->				
															</div> <!-- /control-group -->
															
															
															<div class="control-group">											
																<label class="control-label" for="username" >User name</label>
																<div class="controls">
																	<input type="text" class="span6" id="username" name="username" placeholder="Email Id">
																</div> <!-- /controls -->				
															</div> <!-- /control-group -->									                                        
					                     
					                                        <div class="control-group">											
																<label class="control-label" for="password" >Password</label>
																<div class="controls">
																	<input type="password" class="span6" id="password" name="password" placeholder="Password">
																</div> <!-- /controls -->				
															</div> <!-- /control-group -->	
									
															 <br />											
															<div class="form-actions">
																<button type="submit" class="btn btn-primary" id="submit">Register</button> 
																<button class="btn">Reset</button>
															</div> <!-- /form-actions -->
														</fieldset>
													</form>
													</div>
													
													
														
											  
											</div>
																	
										</div> <!-- /widget-content -->
											<div id="responseNote"></div>
									</div> <!-- /widget -->
						      		
							    </div> <!-- /span8 -->
						      	
						      	</div>
						      	
						      	</div>
						      	
						      	
						      </div> <!-- /row -->
						
						    </div> <!-- /container -->
						    
						</div> <!-- /main-inner -->
					    
					</div> <!-- /main -->

			<!-- footer -->
			<jsp:include page="./footer.jsp"/>
			<!-- /footer --> 
 
			<!-- Placed at the end of the document so the pages load faster --> 
			<script src="js/excanvas.min.js"></script> 
			<script src="js/base.js"></script> 
			<script src="js/chart.min.js" type="text/javascript"></script> 
			<script src="js/jquery-1.7.2.min.js"></script>  
			<script src="js/bootstrap.js"></script>
			<script src="js/base.js"></script> 
			<script>     

      
    </script><!-- /Calendar -->
	</body>
</html>

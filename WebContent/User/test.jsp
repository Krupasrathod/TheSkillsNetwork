<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>The Skills Network - Social Network HTML Template</title>

<!-- Fonts Online -->
<!-- <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'> -->
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>

<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all"
	rel="stylesheet" type="text/css">
<link href="assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="assets/global/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css">

<link
	href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css">
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/admin/pages/css/todo.css" rel="stylesheet"
	type="text/css" />
<link href="assets/admin/layout4/css/layout.css" rel="stylesheet"
	type="text/css" />
<link
	href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />


<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components-rounded.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link href="assets/global/css/plugins.css" rel="stylesheet"
	type="text/css" />
<link id="style_color" href="assets/admin/layout4/css/themes/light.css"
	rel="stylesheet" type="text/css" />
<link href="assets/admin/layout4/css/custom.css" rel="stylesheet"
	type="text/css" />

<link rel="shortcut icon" href="images/Bugfree.ico">

<!-- Style Sheet -->
<!-- <link rel="stylesheet" href="css/owl.carousel.css"> -->
<!-- <link rel="stylesheet" href="css/style.css"> -->
<link rel="stylesheet" href="css/user-main-style.css">
<!-- <link rel="stylesheet" href="css/userprofile.css"> -->


<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css"
	href="assets/global/plugins/clockface/css/clockface.css" />
<link rel="stylesheet" type="text/css"
	href="assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" />
<link rel="stylesheet" type="text/css"
	href="assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" />
<link rel="stylesheet" type="text/css"
	href="assets/global/plugins/bootstrap-colorpicker/css/colorpicker.css" />
<link rel="stylesheet" type="text/css"
	href="assets/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" />
<link rel="stylesheet" type="text/css"
	href="assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" />
<link rel="stylesheet" type="text/css"
	href="assets/global/plugins/bootstrap-select/bootstrap-select.min.css" />
<!-- <link rel="stylesheet" type="text/css" -->
<!-- 	href="assets/global/plugins/select2/select2.css" /> -->
<link href="assets/global/plugins/select2/select2.min.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="assets/global/plugins/jquery-multi-select/css/multi-select.css" />
<!-- END PAGE LEVEL STYLES -->





<style type="text/css">
.validate-success {
	color: #356635;
}

.validate-error {
	color: #b94a48;
}

.bootstrap-timepicker-widget table td {
	text-align: center;
	height: 30px;
	margin: 0;
	padding: 2px;
	width: 30%;
}

.bootstrap-timepicker-widget table td input {
	width: 35px;
	margin: 0 auto;
	text-align: center;
	margin-right: 0 !important;
	padding-right: 10px !important;
	margin-left: 5px !important;
	padding-left: 4px !important;
	right: 0 !important;
}

.select2-container--default .select2-selection--single 
.select2-selection__rendered {
	color: #444;
	line-height: 22px;
	font-family: inherit;
}

.select2-container--default .select2-selection--single {
	width: 100%;
	height: 40px;
	padding: 6px 12px;
	margin-bottom: 24px;
	font-size: 16px;
	line-height: 24px;
	color: #333333;
	background-color: #ffffff;
	background-image: none;
	border: 1px solid #cecece;
	transition: all 0.3s;
	-webkit-border-radius: 3px;
	border-radius: 3px;
}

.select2-container--default .select2-selection--single {
	background-color: #fff;
	border: 1px solid #cecece;
	border-radius: 15px;
}

.radio input[type="radio"] {
	opacity: 1 !important;
	z-index: 1;
}

div.radio span {
	/*    width: 0px !important;
    height: 10px !important;*/
	background-image: none;
}

.select2-container--default .select2-selection--single .select2-selection__arrow b
	{
	margin-top: 0 !important;
}

.datepicker table tr td, .datepicker table tr th {
	border-radius: 0 !important;
}
</style>

<script>
	history.forward();
</script>



<script type="text/javascript">
	function performClick(elemId) {
		var elem = document.getElementById(elemId);
		if (elem && document.createEvent) {
			var evt = document.createEvent("MouseEvents");
			evt.initEvent("click", true, false);
			elem.dispatchEvent(evt);
		}
	}
</script>
</head>

<body class="page-header-fixed page-sidebar-closed-hide-logo "
	style="background-color: #e9ecf3">
	<!-- BEGIN HEADER -->
	<div class="page-header navbar navbar-fixed-top">
		<!-- BEGIN HEADER INNER -->

		<div class="page-header navbar navbar-fixed-top">
			<!-- BEGIN HEADER INNER -->

			<div class="page-header-inner">
				<!-- BEGIN LOGO -->
				<div class="page-logo">
					<a href="Index.jsp"> <img
						src="assets/admin/layout4/img/Skills_Network.png" alt="logo"
						class="logo-default" />
					</a>
				</div>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="menu-toggler responsive-toggler"
					data-toggle="collapse" data-target=".navbar-collapse"> </a>
				<!-- END RESPONSIVE MENU TOGGLER -->
				<!-- BEGIN PAGE ACTIONS -->
				<!-- DOC: Remove "hide" class to enable the page header actions -->
				<div class="page-actions">
					<div class="btn-group">
						<ul class="dropdown-menu" role="menu">
							<li><a href="javascript:;"> <i class="icon-docs"></i>
									New Post
							</a></li>
							<li><a href="javascript:;"> <i class="icon-tag"></i> New
									Comment
							</a></li>
							<li><a href="javascript:;"> <i class="icon-share"></i>
									Share
							</a></li>
							<li class="divider"></li>
							<li><a href="javascript:;"> <i class="icon-flag"></i>
									Comments <span class="badge badge-success">4</span>
							</a></li>
							<li><a href="javascript:;"> <i class="icon-users"></i>
									Feedbacks <span class="badge badge-danger">2</span>
							</a></li>
						</ul>
						<ul class="nav navbar-nav">
							<li><a href="">Home</a></li>
							<li><a href="">Create Group</a></li>
							<!-- 				<li class="active"> <a href="">Hiring Manager</a> </li>  -->

							<li class="dropdown"><a href="#" data-toggle="dropdown"
								class="dropdown-toggle">Seminar <span class="caret"></span></a>

								<ul class="dropdown-menu">

									<li><a href="#">Create Seminar</a></li>
									<li><a href="#">View Seminar</a></li>

								</ul></li>
							<!-- 				<li> <a href="">Recruiter</a> </li> <li> <a href="">Mentoring</a> </li> -->
							<!-- 				<li> <a href="">Trainers</a> </li> <li> <a href="">Trainee</a> </li> -->
							<li class="dropdown"><a href="#" data-toggle="dropdown"
								class="dropdown-toggle">Role <span class="caret"></span></a>

								<ul class="dropdown-menu">

									<li><a href="#">Hiring Manager</a></li>
									<li><a href="#">Recruiters</a></li>
									<li><a href="#">Monitoring</a></li>
									<li><a href="#">Trainers</a></li>
									<li><a href="#">Trainee</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
				<!-- END PAGE ACTIONS -->
				<!-- BEGIN PAGE TOP -->
				<jsp:include page="header.jsp"></jsp:include>
				<!-- END PAGE TOP -->
			</div>
			<!-- END HEADER INNER -->
		</div>
		<!-- END HEADER INNER -->
	</div>
	<!-- END HEADER -->
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->

		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->

		<div class="row" style="margin: 0 auto; width: 80%; float: none;">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<form id="seminar" name="seminar">
				<!-- TASK TITLE -->
				<h1>
					<b>Create Seminar</b>
				</h1>
				<div class="form-group">
					<div class="col-sm-12">
						<div class="col-sm-6">
							<lable style="font-weight: 600;">Seminar Name:</lable>
							<input type="text" id="tsnseminarname" name="tsnseminarname"
								class="form-control todo-taskbody-tasktitle"
								placeholder="Seminar Name"
								style="border-radius: 15px !important;">
						</div>

						<div class="col-sm-6">
							<lable style="font-weight: 600;">Subject:</lable>
							<input type="text" id="tsnsubject" name="tsnsubject"
								class="form-control todo-taskbody-tasktitle"
								placeholder="Subject" style="border-radius: 15px !important;">
						</div>
					</div>
				</div>
				<!-- TASK TITLE -->
				<div class="form-group">
					<div class="col-sm-12">
						<lable style="font-weight: 600;">Description:</lable>
						<textarea name="tsndesciption" id="tsndesciption"
							class="form-control todo-taskbody-tasktitle"
							placeholder="Description" maxlength="254"
							style="border-radius: 15px !important;"></textarea>
						<!-- 						<input type="text" id="tasktitle" name="tasktitle" -->
						<!-- 							class="form-control todo-taskbody-tasktitle" -->
						<!-- 							placeholder="Description" style="border-radius:15px !important;"> -->
					</div>
				</div>
				<div class="form-group col-sm-12">
					<div class="col-sm-6">
						<lable style="font-weight: 600;">Deliver By:</lable>
						<div class="custom-select-box">
							<select name="tsndeliverby" id="tsndeliverby"
								onchange="loadrole()"
								style="margin-bottom: 24px; border-radius: 15px !important">
								<option value="" disabled selected>Select Role</option>
								<option value="Hiring Manager"
									style="border-radius: 15px !important;">Hiring Manager</option>
								<option value="Mentor">Mentor</option>
								<option value="Trainer">Trainer</option>
							</select>
						</div>
					</div>

					<div class="col-sm-6">
						<lable style="font-weight: 600; float: left;">Select Name:</lable>

						<select class="js-data-example-ajax" name="tsnperson"
							id="tsnperson" style="border-radius: 15px;">
							<option>---Select Name----</option>
						</select>
						<!-- 						<input type="hidden" id="select2_sample_modal_6" -->
						<!-- 							class="form-control select2"> -->
					</div>
				</div>
				<!-- TASK DUE DATE -->
				<div class="form-group col-sm-12">


					<div class="col-sm-4">
						<lable style="font-weight: 600; float: left; margin-top: 5px;">Date:</lable>
						<div class="col-sm-8">
							<input class="form-control input-medium date-picker" size="16"
								type="text" name="tsndate" id="tsndate" value=""
								style="border-radius: 15px;" />
						</div>

					</div>

					<div class="col-sm-6">
						<lable style="font-weight: 600; float: left; margin-top: 5px;">Time:</lable>
						<div class="col-sm-6">
							<div class="input-group">
								<input type="text" name="tsntime" id="tsntime"
									class="form-control timepicker timepicker-24"
									style="border-radius: 15px;"> <span
									class="input-group-btn">
									<button class="btn default" type="button">
										<i class="fa fa-clock-o"></i>
									</button>
								</span>
							</div>
						</div>
					</div>
				</div>
				<!-- TASK TITLE -->
				<div class="form-group col-sm-12">

					<div class="col-sm-12">

						<lable style="font-weight: 600;">Venue:</lable>
						<br />



						<div class="col-sm-4">
							<div class="custom-select-box">
								<select name="tsncountry" id="tsncountry"
									style="margin-bottom: 24px; border-radius: 15px !important;">
									<option value="" disabled selected>Select Country</option>
									<option value="00">00</option>
									<option value="30">30</option>
								</select>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="custom-select-box">
								<select name="tsnstate" id="tsnstate"
									style="margin-bottom: 24px; border-radius: 15px !important;">
									<option value="" disabled selected>Select State</option>
									<option value="00">00</option>
									<option value="30">30</option>
								</select>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="custom-select-box">
								<select name="tsncity" id="tsncity"
									style="margin-bottom: 24px; border-radius: 15px !important;">
									<option value="" disabled selected>Select City</option>
									<option value="00">00</option>
									<option value="30">30</option>
								</select>
							</div>
						</div>

					</div>
					<div class="col-sm-12">
						<input type="text" id="tsnnearplace" name="tsnnearplace"
							class="form-control todo-taskbody-tasktitle"
							placeholder="Near Place..."
							style="border-radius: 15px !important; margin-left: 5px !important;">
					</div>


				</div>

				<!-- 				<div class="form-group"> -->

				<!-- 					<div class="col-sm-4"> -->
				<!-- 					<lable style="font-weight: 600;">Select Seminar Type:</lable> -->
				<!-- 						<input type="radio" style="opacity: 0;" name="stype" id="stype" value="0" checked />Public -->
				<!-- 						<input type="radio" style="opacity: 0;" name="stype" id="stype" value="1" />Private -->
				<!-- 					</div> -->
				<!-- 				</div> -->
				<div class="form-group">
					<div class="col-sm-12">
						<lable style="font-weight: 600; float: left; margin-left: 3px;">Select
						Fee :</lable>
						&nbsp;&nbsp;


						<div class="col-sm-1" style="margin-left: 10px;">

							<input type="radio" name="tsnoption" id="tsnoption" value="0"
								checked style="margin: 0" />&nbsp;Free

						</div>

						<div class="col-sm-2">
							<input type="radio" name="tsnoption" id="tsnoption" value="1"
								style="margin: 0" /> &nbsp;Paid
						</div>

					</div>
					<div id="fees" style="display: none;">
						<div class="col-sm-2">
							<div class="custom-select-box">
								<select name="tsncurrency" id="tsncurrency"
									style="margin-bottom: 24px;">
									<option value="INR">INR</option>
									<option value="USD">USD</option>
								</select>
							</div>
						</div>
						<div class="col-sm-2" style="margin-left: -30px;">
							<input type="text" id="tsnfee" name="tsnfee"
								class="form-control todo-taskbody-tasktitle">
						</div>
					</div>
				</div>

				<div class="clearfix"></div>
				<br /> <br />
				<div class="col-sm-3" style="margin: 0 auto; float: inherit;">
					<a class="btn mb20 btn-medium btn-primary" href="#"
						style="padding: 10px 25px;">SUBMIT</a>
				</div>
		</div>


		</form>
	</div>
	</div>
	</div>

	<!-- Footer -->
	<div class="uou-block-4e">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-md-6">
					<a href="#" class="logo"><img src="images/bugfree_logo.jpg"
						alt=""></a>
					<ul class="contact-info has-bg-image contain"
						data-bg-image="images/footer-map-bg.png">
						<li><i class="fa fa-map-marker"></i>
							<address>795 Folsom Ave, Suite 600, San Francisco, CA
								94107</address></li>
						<li><i class="fa fa-phone"></i> <a href="tel:#">(123)
								456-7890</a></li>
						<li><i class="fa fa-envelope"></i> <a href="mailto:#">first.last@example.com</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 col-md-6">
					<h5>Twitter Feed</h5>
					<ul class="twitter-feed">
						<li>RT <a href="#">@no1son</a>: Now this <a href="#">http://t.co/TSfMW1qMAW</a>
							is one hell of a stunning site!!! Awesome work guys <a href="#">@AIRNAUTS</a>
							<a href="#" class="time">May 25</a>
						</li>
						<li>Check out the wordpress version of Tucson - <a href="#">http://t.co/sBlU3GbapT</a>
							<a href="#" class="time">May 22</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 col-md-6">
					<h5>Photostream</h5>
					<ul class="photos-list">
						<li><img src="images/photostream4.jpg" alt=""></li>
						<li><img src="images/photostream6.jpg" alt=""></li>
						<li><img src="images/photostream3.jpg" alt=""></li>
						<li><img src="images/photostream2.jpg" alt=""></li>
						<li><img src="images/photostream1.jpg" alt=""></li>
						<li><img src="images/photostream.jpg" alt=""></li>
					</ul>
				</div>
				<div class="col-md-3 col-md-6">
					<h5>Newsletter</h5>
					<p>Subscribe to our newsletter to receive our latest news and
						updates. We do not spam.</p>
					<form class="newsletter-form" action="#">
						<input type="email" placeholder="Enter your email address">
						<input type="submit" class="btn btn-primary" value="Subscribe">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end .uou-block-4e -->

	<div class="uou-block-4a secondary dark">
		<div class="container">
			<ul class="links">
				<li><a href="#">Privacy Policy</a></li>
				<li><a href="#">Terms &amp; Conditions</a></li>
			</ul>
			<p>
				Copyright &copy; 2015 <a href="#">UOUAPPS</a>. All Rights reserved.
			</p>
		</div>
	</div>
	<!-- end .uou-block-4a -->

	<!-- Scripts -->
	<script src="assets/global/plugins/jquery.min.js"
		type="text/javascript"></script>
	<script src="assets/global/plugins/jquery-ui/jquery-ui.min.js"
		type="text/javascript"></script>

	<script src="js/bootstrap.js"></script>



	<script src="assets/global/plugins/uniform/jquery.uniform.min.js"
		type="text/javascript"></script>

	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script type="text/javascript"
		src="assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
	<script type="text/javascript"
		src="assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
	<script type="text/javascript"
		src="assets/global/plugins/clockface/js/clockface.js"></script>
	<script type="text/javascript"
		src="assets/global/plugins/bootstrap-daterangepicker/moment.min.js"></script>
	<script type="text/javascript"
		src="assets/global/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script type="text/javascript"
		src="assets/global/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
	<script type="text/javascript"
		src="assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript"
		src="assets/global/plugins/bootstrap-select/bootstrap-select.min.js"></script>
	<!-- 	<script type="text/javascript" -->
	<!-- 		src="assets/global/plugins/select2/select2.min.js"></script> -->
	<script src="assets/global/plugins/select2/select2.min.js"></script>
	<script type="text/javascript"
		src="assets/global/plugins/jquery-multi-select/js/jquery.multi-select.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
	<script src="assets/admin/layout/scripts/layout.js"
		type="text/javascript"></script>
	<script src="assets/admin/layout/scripts/quick-sidebar.js"
		type="text/javascript"></script>
	<script src="assets/admin/layout/scripts/demo.js"
		type="text/javascript"></script>
	<script src="assets/admin/pages/scripts/components-pickers.js"></script>
	<script src="assets/admin/pages/scripts/components-dropdowns.js"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {
			// initiate layout and plugins
			Metronic.init(); // init metronic core components
			Layout.init(); // init current layout
			QuickSidebar.init(); // init quick sidebar
			Demo.init(); // init demo features
			ComponentsPickers.init();
			ComponentsDropdowns.init();
		});
	</script>
	<script>
		$(".js-data-example-ajax").select2({});
	</script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							jQuery.validator.addMethod("lettersonly", function(
									value, element) {
								//return this.optional(element) || /^[a-z]+$/i.test(value);
								return this.optional(element)
										|| /^[a-zA-Z ]*$/i.test(value);
							}, "Enter only alphabet characters.");
							jQuery.validator
									.addMethod(
											"email",
											function(value, element) {
												//return this.optional(element) || /^[a-z]+$/i.test(value);
												return this.optional(element)
														|| /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/i
																.test(value);
											}, "Enter only Email Address Here.");
							jQuery.validator
									.addMethod(
											"validpassword",
											function(value, element) {
												//return this.optional(element) || /^[a-z]+$/i.test(value);       /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/
												return this.optional(element)
														|| /(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{6,}$/i
																.test(value);
											},
											"Input must contain at least one digit/special characters and alphanumeric letter and be at least six characters long.");

							// 	 jQuery.validator.addMethod("digits", function (value, element) {
							// 		    //return this.optional(element) || /^[a-z]+$/i.test(value);
							// 		    return this.optional(element) ||  /^\+(?:[0-9] ?){6,14}[0-9]$/i.test(value);
							// 		}, "Enter only numbers.");

							$('#btncontactcompany')
									.on(
											'click',
											function() {
												$('#frmcontact')
														.validate(
																{
																	rules : {
																		contactfullname : {
																			required : true,
																			minlength : 2,
																			maxlength : 30,
																			lettersonly : true
																		},
																		contactemail : {
																			required : true,
																			minlength : 2,
																			maxlength : 30,
																			email : true
																		},
																		contactphone : {
																			required : true,
																			minlength : 10,
																			maxlength : 10,
																			digits : true
																		}
																	},
																	errorClass : 'help-block',
																	errorElement : 'span',
																	highlight : function(
																			element,
																			errorClass,
																			validClass) {
																		/* $(element).css('border','1px solid red');	            
																		$(element).parents().removeClass('validate-success').addClass('validate-error'); */
																		$(
																				element)
																				.parents(
																						'.divValidate')
																				.removeClass(
																						'has-success')
																				.addClass(
																						'has-error');
																	},
																	unhighlight : function(
																			element,
																			errorClass,
																			validClass) {
																		/* $(element).css('border','1px solid green');
																		$(element).parents().removeClass('validate-error').addClass('validate-success'); */
																		$(
																				element)
																				.parents(
																						'.divValidate')
																				.removeClass(
																						'has-error')
																				.addClass(
																						'has-success');
																	},
																	submitHandler : function() {
																		$(
																				'#frmcontact')
																				.submit();
																	}
																});

											});

						});
	</script>
	<script>
		var resizefunc = [];

		function loadrole() {

			var role = document.getElementById("tsndeliverby").value;
			alert("123")
			alert("Subject is :" + role);

			var xmlhttp = new XMLHttpRequest();
			//			removeAllState();

			xmlhttp.onreadystatechange = function() {

				if (xmlhttp.readyState == 4) {

					var jsonObj = JSON.parse(xmlhttp.responseText);
					alert("springify :: " + JSON.stringify(jsonObj));
					alert("123");
					removeAllState();
					for (i = 0; i < jsonObj.length; i++) {

						var createOption = document.createElement("option");

						createOption.value = jsonObj[i].designation;
						createOption.text = jsonObj[i].tsnperson;

						document.seminar.tsnperson.options.add(createOption);
						// 						
					}
				}
			}
			xmlhttp.open("get",
					"${pageContext.request.contextPath}/RoleController?flag=searchrole&role="
							+ role, true);
			xmlhttp.send();
		}
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */

		function removeAllState() {
			var removeState = document.seminar.tsnperson.options.length;
			for (i = removeState; i > 0; i--) {
				document.seminar.tsnperson.remove(i);
			}
		}
	</script>


</body>
</html>
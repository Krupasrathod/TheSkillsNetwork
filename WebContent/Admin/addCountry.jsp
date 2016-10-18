<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<!-- Mirrored from www.keenthemes.com/preview/metronic/theme/templates/admin4/form_layouts.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 01 Oct 2015 10:03:07 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

<script>
var temp=true;

function loademail12()
	{
	alert("check email");
	//  var data_file = "http://localhost:8080/Project2/Admin/loadUser.jsp";
		var subjct=document.getElementById("subjct").value;
		var my_submit=document.getElementById("otpsubmit");
		alert("Subject is:" +subjct);
		
		var xmlhttp;
		
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  	xmlhttp=new XMLHttpRequest();
		  alert("request done");
		  }
		else
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		xmlhttp.onreadystatechange = function() {
		
			if (xmlhttp.readyState == 4) {
				alert("Return111");
				
				var jsonObj = JSON.parse(xmlhttp.responseText);
				for(i=0 ; i<jsonObj.length ; i++)
				{
				// document.getElementById("abcd").innerHTML = jsonObj[i].email+"";
              
				document.getElementById("otpqr").innerHTML = "";
				otpsubmit.removeAttribute("disabled");
				temp=false;
				
				//var a=jsonObj.length();
				//alert(a);
				//alert(d);
				//alert("Return222");
				//document.getElementById('abcd').innerHTML="jsonObj.userName";
				//alert("Return333");
		
			}
				
				
				if(jsonObj.length == 0)
					{
					document.getElementById("otpqr").innerHTML = "Email Doesn't Exist";
					otpsubmit.disabled=true;
					Alert("Out of loop");
					
					temp=true;
					}
		}

		}
		alert("sending");
		xmlhttp.open("get", "${pageContext.request.contextPath}/UserRegisterController?flag=subjectid&subjct="+subjct,true);
		xmlhttp.send();
		

	}
</script>

<script>
		var resizefunc = [];

		function loademail() {
			var subjct=document.getElementById("subjct").value;
			
			alert("Subject is :"+subjct);

			var xmlhttp = new XMLHttpRequest();
			//			removeAllState();

			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4) {

					var jsonObj = JSON.parse(xmlhttp.responseText);
					alert("springify :: " + JSON.stringify(jsonObj));

					for (i = 0; i < jsonObj.length; i++) {

						var createInput = document.createElement("input");

						//createInput.name = jsonObj[i].doctorName;
						//createInput.value = jsonObj[i].amoDoctorCode;
						alert("value : " + jsonObj[i].subjectID + "  name :"
								+ jsonObj[i].subjectName);
						//document.doctorForm.amoDoctorName.add(createInput);
						var docid = document.getElementById("subjectID");
						alert("the id got is" +docid);
						docid.value = jsonObj[i].subjectID;
					}
				}
			}
			xmlhttp
					.open(
							"get",
							"${pageContext.request.contextPath}/UserRegisterController?flag=subjectid&subjct="+subjct, true);
			xmlhttp.send();
		}
		/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
			0: request not initialized
			1: server connection established
			2: request received
			3: processing request
			4: request finished and response is ready */

		/* 	function removeAllState() {
				var removeState = document.cityForm.stateId.options.length;
				for (i = removeState; i > 0; i--) {
					document.cityForm.stateId.remove(i);
				}
			} */
	</script>

<head>
<meta charset="utf-8"/>
<title>Metronic | Form Stuff - </title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
<link href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="assets/global/plugins/select2/select2.css"/>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="assets/admin/layout4/css/themes/light.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page-header-fixed page-sidebar-closed-hide-logo ">
<!-- BEGIN HEADER -->
<jsp:include page="header.jsp"></jsp:include>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN SIDEBAR -->
	<jsp:include page="menu.jsp"></jsp:include>
	<!-- END SIDEBAR -->
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
							<h4 class="modal-title">Modal title</h4>
						</div>
						<div class="modal-body">
							 Widget settings form goes here
						</div>
						<div class="modal-footer">
							<button type="button" class="btn blue">Save changes</button>
							<button type="button" class="btn default" data-dismiss="modal">Close</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN PAGE HEADER-->
			<!-- BEGIN PAGE HEAD -->
			<!-- <div class="page-head">
				BEGIN PAGE TITLE
				
				END PAGE TITLE
				BEGIN PAGE TOOLBAR
				<div class="page-toolbar">
					BEGIN THEME PANEL
					<div class="btn-group btn-theme-panel">
						
						<div class="dropdown-menu theme-panel pull-right dropdown-custom hold-on-click">
							<div class="row">
								<div class="col-md-4 col-sm-4 col-xs-12">
									<h3>THEME</h3>
									<ul class="theme-colors">
										<li class="theme-color theme-color-default active" data-theme="default">
											<span class="theme-color-view"></span>
											<span class="theme-color-name">Dark Header</span>
										</li>
										<li class="theme-color theme-color-light" data-theme="light">
											<span class="theme-color-view"></span>
											<span class="theme-color-name">Light Header</span>
										</li>
									</ul>
								</div>
								<div class="col-md-8 col-sm-8 col-xs-12 seperator">
									<h3>LAYOUT</h3>
									<ul class="theme-settings">
										<li>
											 Theme Style
											<select class="layout-style-option form-control input-small input-sm">
												<option value="square" selected="selected">Square corners</option>
												<option value="rounded">Rounded corners</option>
											</select>
										</li>
										<li>
											 Layout
											<select class="layout-option form-control input-small input-sm">
												<option value="fluid" selected="selected">Fluid</option>
												<option value="boxed">Boxed</option>
											</select>
										</li>
										<li>
											 Header
											<select class="page-header-option form-control input-small input-sm">
												<option value="fixed" selected="selected">Fixed</option>
												<option value="default">Default</option>
											</select>
										</li>
										<li>
											 Top Dropdowns
											<select class="page-header-top-dropdown-style-option form-control input-small input-sm">
												<option value="light">Light</option>
												<option value="dark" selected="selected">Dark</option>
											</select>
										</li>
										<li>
											 Sidebar Mode
											<select class="sidebar-option form-control input-small input-sm">
												<option value="fixed">Fixed</option>
												<option value="default" selected="selected">Default</option>
											</select>
										</li>
										<li>
											 Sidebar Menu
											<select class="sidebar-menu-option form-control input-small input-sm">
												<option value="accordion" selected="selected">Accordion</option>
												<option value="hover">Hover</option>
											</select>
										</li>
										<li>
											 Sidebar Position
											<select class="sidebar-pos-option form-control input-small input-sm">
												<option value="left" selected="selected">Left</option>
												<option value="right">Right</option>
											</select>
										</li>
										<li>
											 Footer
											<select class="page-footer-option form-control input-small input-sm">
												<option value="fixed">Fixed</option>
												<option value="default" selected="selected">Default</option>
											</select>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					END THEME PANEL
				</div>
				END PAGE TOOLBAR
			</div> -->
			<!-- END PAGE HEAD -->
			<!-- BEGIN PAGE BREADCRUMB -->
			
			<!-- END PAGE BREADCRUMB -->
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12">
					<div class="tabbable tabbable-custom tabbable-noborder tabbable-reversed">
						
						<div class="tab-content">
							<div class="tab-pane active" id="tab_0">
								<div class="portlet box green">
									<div class="portlet-title">
										<div class="caption">
											<i class="fa fa-gift"></i>Add Country
										</div>
										
									</div>
									<div class="portlet-body form">
										<!-- BEGIN FORM-->
										
										<form action="<%=request.getContextPath()%>/countryController?flag=addcountry" method="post" class="form-horizontal">
											<div class="form-body">
												<div class="form-group">
													<label class="col-md-3 control-label">Add Country Name</label>
													<div class="col-md-4">
														<input type="text" class="form-control input-circle" name="countryName" placeholder="Enter text">
													</div>
												</div>
											</div>
											<div class="form-body">
												<div class="form-group">
													<label class="col-md-3 control-label">Add Country Code</label>
													<div class="col-md-4">
														<input type="text" class="form-control input-circle"  name="countryCode" placeholder="Enter text">
													</div>
												</div>
											</div>
											<div class="form-actions">
												<div class="row">
													<div class="col-md-offset-3 col-md-9">
														<button type="submit" class="btn btn-circle blue">Submit</button>
														<button type="button" class="btn btn-circle default">Cancel</button>
													</div>
												</div>
											</div>
										</form>
										
										<!-- END FORM-->
									</div>
								</div>	
							</div>
							
							
							
							
							
							
							
							
						</div>
					</div>
				</div>
			</div>
			<!-- END PAGE CONTENT-->
		</div>
	</div>
	<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
	<div class="page-footer-inner">
		 2014 &copy; Metronic by keenthemes. <a href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes" title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase Metronic!</a>
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="assets/global/plugins/respond.min.js"></script>
<script src="assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="assets/global/plugins/select2/select2.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script src="assets/admin/pages/scripts/form-samples.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->

<script>
$("#maincat").click(function(){
	if($(this). prop("checked") == true){
		$("#drpdwn").attr("style","display: none;");
		}
		else if($(this). prop("checked") == false){
			$("#drpdwn").removeAttr("style","display: block;");
		}
});
</script>
<script>
var temp=true;

function loadSubject()
 {
// alert("check");
 //  var data_file = "http://localhost:8080/Project2/Admin/loadUser.jsp";
  var email=document.getElementById("email").value;
  
  alert("email is:" +email);
  
  var xmlhttp;
  
  if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
     xmlhttp=new XMLHttpRequest();
   // alert("request done");
    }
  else
    {// code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
 
 
  
  xmlhttp.onreadystatechange = function() {
  
   if (xmlhttp.readyState == 4) {
  //  alert("Return111");
    
    var jsonObj = JSON.parse(xmlhttp.responseText);
    for(i=0 ; i<jsonObj.length ; i++)
    {
    // document.getElementById("abcd").innerHTML = jsonObj[i].email;
              
    document.getElementById("pqr").innerHTML = jsonObj[i].email+"Already Exists";
    temp=false;
//     btnRegister.disabled=true;
	$('#btnAddUser').attr('disabled',true);
   // Alert("Already Exist");
    //var a=jsonObj.length();
    //alert(a);
    //alert(d);
    //alert("Return222");
    //document.getElementById('abcd').innerHTML="jsonObj.userName";
    //alert("Return333");
  
   }
    if(jsonObj.length == 0)
     {
     document.getElementById("pqr").innerHTML = "";
     //Alert("Out of loop");
      //btnRegister.removeAttribute("disabled");
	$('#btnAddUser').removeAttr('disabled',true);
     temp=true;
     }
  }

  }
 // alert("sending");
  xmlhttp.open("get", "${pageContext.request.contextPath}/RegistrationController?flag=searchSubjectName&email="+email,true);
  xmlhttp.send();
  
  /* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
   0: request not initialized
   1: server connection established
   2: request received
   3: processing request
   4: request finished and response is ready */
 }
</script>

<script>
jQuery(document).ready(function() {    
   // initiate layout and plugins
   Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Demo.init(); // init demo features
   FormSamples.init();
});
</script>
<!-- END JAVASCRIPTS -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-37564768-1', 'keenthemes.com');
  ga('send', 'pageview');
</script>
</body>

<!-- END BODY -->

<!-- Mirrored from www.keenthemes.com/preview/metronic/theme/templates/admin4/form_layouts.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 01 Oct 2015 10:03:07 GMT -->
</html>
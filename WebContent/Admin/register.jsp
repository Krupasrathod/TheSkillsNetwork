<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8"/>
<title>The Skills Network</title>
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
<!-- BEGIN PLUGINS USED BY X-EDITABLE -->
<link rel="stylesheet" type="text/css" href="assets/global/plugins/select2/select2.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-editable/bootstrap-editable/css/bootstrap-editable.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-editable/inputs-ext/address/address.css"/>
<!-- END PLUGINS USED BY X-EDITABLE -->
<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="assets/admin/layout4/css/themes/light.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
<style type="text/css">
	.validate-success{
		color:#356635;
	}
	.validate-error{
		color:#b94a48;
	}
</style>
<script>
//datepicker-autoclose
function date(x)
{
	var d1 =new Date(x.value); 
	var curentdate = new Date();
	var _MS_PER_DAY = 1000 * 60 * 60 * 24;
	var spdate  = document.getElementById("spdate");
	if(d1.getDate() != curentdate.getDate())
		{
			if(parseInt(Math.round(d1.getTime() - curentdate.getTime())/_MS_PER_DAY) >= 0)
				{
				spdate.style.display = "";
				my_submit.disabled=true;
				}
			else 
				{
					spdate.style.display = "none";
					spdate.disabled=false;
					my_submit.removeAttribute("disabled");//=false;
				}
		}
	else
		{
			spdate.style.display = "none";
			my_submit.removeAttribute("disabled");
		}
}
</script>

<script>
//datepicker-autoclose
function fndate(x)
{
	var d1 =new Date(x.value); 
	var curentdate = new Date();
	var _MS_PER_DAY = 1000 * 60 * 60 * 24;
	var pdate  = document.getElementById("pdate");
	if(d1.getDate() != curentdate.getDate())
		{
			if(parseInt(Math.round(d1.getTime() - curentdate.getTime())/_MS_PER_DAY) >= 0)
				{
				pdate.style.display = "";
				my_submit.disabled=true;
				}
			else 
				{
					pdate.style.display = "none";
					pdate.disabled=false;
					my_submit.removeAttribute("disabled");//=false;
				}
		}
	else
		{
			pdate.style.display = "none";
			my_submit.removeAttribute("disabled");
		}
}
</script>
<script>
var temp=true;

function loadData()
 {
// alert("check");
 //  var data_file = "http://localhost:8080/Project2/Admin/loadUser.jsp";
  var email=document.getElementById("email").value;
  
  //alert("email is:" +email);
  
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
  xmlhttp.open("get", "${pageContext.request.contextPath}/RegistrationController?flag=searchUserName&email="+email,true);
  xmlhttp.send();
  
  /* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
   0: request not initialized
   1: server connection established
   2: request received
   3: processing request
   4: request finished and response is ready */
 }
</script>


</head>
<!-- END HEAD -->
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
		
			
			<div class="portlet light">
				<div class="portlet-body">
					
					<div class="row">
						<div class="col-md-12">
<%-- 						<%=request.getContextPath()%>/formController?flag=regadmin --%>
							<form id="frmAddAdmin"  action="#"  method="post">
 								
								<div class="form-body">
									<div class="divValidate form-group">
										<label>First Name <span class="text-danger">*</span></label>
										<div class="input-group">
											<span class="input-group-addon">
											<i class="fa fa-user"></i>
											</span>
											<input type="text" id="firstname" name="firstname" onkeypress="return onlyAlphabets(event, this);" class="form-control" placeholder="First Name" >
										</div></div>
									
									<div class="divValidate form-group">
										<label>Last Name</label>
										<div class="input-group">
											<span  class="input-group-addon">
											<i class="fa fa-user"></i>
											</span>
											<input type="text" class="form-control" id="lastname"  onkeypress="return onlyAlphabets(event, this);" name="lastname" placeholder="Last Name" >
										</div></div>
										
										<div class="divValidate form-group">
										<label>Email Address</label>
										<div><span id="pqr"></span></div>
										
										<div class="input-group">
										
										<span  class="input-group-addon">
											<i class="fa fa-envelope"></i></span>
											
											<input type="email" id="email" onchange="loadData()" name="email" class="form-control"  placeholder="Email Address" >
										</div></div>
									
																	
									<div class="divValidate form-group">
										<label>Password</label>
										<div class="input-group">
											<span class="input-group-addon">
											<i class="fa fa-user"></i>
											</span>
											<input type="password" id="password" class="form-control"  name="password"  placeholder="Password">
										</div>
										</div>
										
										<div class="divValidate form-group">
										<label>Confirm Password</label>
										<div class="input-group">
											<span class="input-group-addon">
											<i class="fa fa-user"></i>
											</span>
											<input type="password" class="form-control" id="rpassword" name="rpassword"  placeholder="Re-enter Password">
										</div>
										</div>
									
								<div class="divValidate form-actions">
									<input type="submit" id="btnRegister" class="btn blue" value="Add New User" />
								 <button type="button" class="btn default">Cancel</button>
								</div>
							</div>
							</form>
							
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
		 <a href="" title="" target="_blank"></a>
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>

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
<!-- BEGIN PLUGINS USED BY X-EDITABLE -->
<script type="text/javascript" src="assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-datepicker/js/locales/bootstrap-datepicker.zh-CN.html"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/moment.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/jquery.mockjax.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-editable/bootstrap-editable/js/bootstrap-editable.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-editable/inputs-ext/address/address.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-editable/inputs-ext/wysihtml5/wysihtml5.js"></script>
<!-- END X-EDITABLE PLUGIN -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/admin/layout4/scripts/bootstrap-inputmask.js" type="text/javascript"></script>

<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script src="assets/admin/pages/scripts/form-editable.js"></script>
<script src="js/plugins/jquery-validation-1.11.1/dist/jquery.validate.min.js"></script>
<script src="assets/js/custom.js"></script>
<script>
jQuery(document).ready(function() {
// initiate layout and plugins
Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Demo.init(); // init demo features
//FormEditable.init();

//FOR X-EDITABLE
 
$(function() {
  $("#dob").datepicker(
    {
      minDate: new Date(1900,1-1,1), maxDate: '-18Y',
      dateFormat: 'dd/mm/yy',
      defaultDate: new Date(1970,1-1,1),
      changeMonth: true,
      changeYear: true,
      yearRange: '-110:-18'
    }
  );					
});

$.fn.editable.defaults.mode = 'inline';
$('#dob').editable({
    inputclass: 'form-control',
});
//FOR X-EDITABLE
$("#txtfuturedate").datepicker({maxDate: 0});
$('.date-picker').datepicker();
$('#datepicker').datepicker({
	maxDate: new Date(currentYear, currentMonth, currentDate)
	});
});
</script>


<!-- For selection of the city -->
<script type="text/javascript">
var country_arr = new Array("Afghanistan", "India", "USA", "Vietnam");

var s_a = new Array();
s_a[0]="";
s_a[1]="Badakhshan|Badghis|Baghlan|Balkh|Bamian|Farah|Faryab|Ghazni|Ghowr|Helmand|Herat|Jowzjan|Kabol|Kandahar|Kapisa|Konar|Kondoz|Laghman|Lowgar|Nangarhar|Nimruz|Oruzgan|Paktia|Paktika|Parvan|Samangan|Sar-e Pol|Takhar|Vardak|Zabol";
s_a[2]="Andhra Pradesh|Arunachal Pradesh|Assam|Bihar|Chhattisgarh|Goa|Gujarat|Haryana|Himachal Pradesh|Jammu and Kashmir|Jharkhand|Karnataka|Kerala|Madhya Pradesh|Maharashtra|Manipur|Meghalaya|Mizoram|Nagaland|Odisha(Orissa)|Punjab|Rajasthan|Sikkim|Tamil Nadu|Tripura|Uttar Pradesh|Uttarakhand|West Bengal";
s_a[3]="Alabama|Alaska|Arizona|Arkansas|California|Colorado|Connecticut|Delaware|Florida|Georgia|Hawaii|Idaho|Illinois|Indiana|Iowa|ansas|Kentucky|Louisiana|Maine|Maryland|Massachusetts|Michigan|Minnesota|Mississippi|Missouri|Montana|Nebraska|Nevada|New Hampshire|New Jersey|New Mexico|New York|North Carolina|North Dakota|Ohio|Oklahoma|Oregon|Pennsylvania|Rhode Island|South Carolina|South Dakota|Tennessee|Texas|Utah|Vermont|Virginia|Washington|West Virginia|Wisconsin|Wyoming";

s_a[4]="Ba Ria|Bạc Liêu|Bắc Giang|Bắc Ninh|Bảo Lộc|Biên Hòa|Bến Tre|Buôn Ma Thuột|Cà Mau|Cam Pha|Cao Lãnh|Đà Lạt|Điện Biên Phủ|Đông Hà|Đồng Hới|Hà Tĩnh|Hạ Long|Hải Dương|Hòa Bình|Hội An|Huế|Hưng Yên|Kon Tum|Lạng Sơn|Lào Cai|Long Xuyên|Móng Cái|Mỹ Tho|Nam Định|Ninh Bình|Nha Trang|Cam Ranh|Phan Rang-Tháp Chàm|Phan Thiết|Phủ Lý|Pleiku|Quảng Ngãi|Quy Nhơn|Rạch Giá|Sóc Trăng|Sơn La|Tam Kỳ|Tân An|Thái Bình|Thái Nguyên|Thanh Hóa|Trà Vinh|Tuy Hòa|Tuyen Quang|Uong Bi|Việt Trì|Vinh|Vĩnh Yên|Vĩnh Lon|Vũng Tàu|Yên Bái";

function print_country(country){
    //given the id of the <select> tag as function argument, it inserts <option> tags
    var option_str = document.getElementById(country);
    option_str.length=0;
    option_str.options[0] = new Option('Select Country','');
    option_str.selectedIndex = 0;
    for (var i=0; i<country_arr.length; i++) {
    option_str.options[option_str.length] = new Option(country_arr[i],country_arr[i]);
    }
}

function print_state(state, selectedIndex){
    var option_str = document.getElementById(state);
    option_str.length=0;    // Fixed by Julian Woods
    option_str.options[0] = new Option('Select State','');
    option_str.selectedIndex = 0;
    var state_arr = s_a[selectedIndex].split("|");
    for (var i=0; i<state_arr.length; i++) {
    option_str.options[option_str.length] = new Option(state_arr[i],state_arr[i]);
    }
}
</script>

<script language="javascript">print_country("country");</script>

<script type="text/javascript">

$(document).ready(function(){	
	
alert("1231"); 
	 jQuery.validator.addMethod("lettersonly", function (value, element) {
		 alert("letteronly");
     //return this.optional(element) || /^[a-z]+$/i.test(value);
     return this.optional(element) || /^[a-zA-Z ]*$/i.test(value);
 }, "Enter only alphabet characters.");
 jQuery.validator.addMethod("email", function (value, element) {
     //return this.optional(element) || /^[a-z]+$/i.test(value);
     return this.optional(element) || /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/i.test(value);
 }, "Enter only Email Address Here.");
  jQuery.validator.addMethod("validpassword", function (value, element) {
       //return this.optional(element) || /^[a-z]+$/i.test(value);       /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/
       return this.optional(element) || /(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{6,}$/i.test(value);
   }, "Input must contain at least one digit/special characters and alphanumeric letter and be at least six characters long.");
 
//   jQuery.validator.addMethod("digits", function (value, element) {
//       //return this.optional(element) || /^[a-z]+$/i.test(value);
//       return this.optional(element) ||  /^\+(?:[0-9] ?){6,14}[0-9]$/i.test(value);
//   }, "Enter only numbers.");
	 
	$('#btnRegister').click(function(){
		 alert("letteronly");
		$('#frmAddAdmin').validate({
	        rules: {
	        	firstname: {
	                required: true,
	                minlength: 2,
	                maxlength: 70,
	                lettersonly:true
	            },
	            lastname: {
	                required: true,
	                minlength: 2,
	                maxlength: 70,
	                lettersonly:true
	            },
	            email: {
	                required: true,
	                minlength: 2,
	                maxlength: 70,
	                email:true
	            },
	            password: {
	                required: true,
	                minlength: 6,
	                maxlength: 16,
	                validpassword : true
	            },
	            rpassword: {
	                required: true,
	                minlength: 6,
	                maxlength: 16,
	                equalTo: "#password"
	            }	            
	        },
	        errorClass: 'help-block',
	        errorElement: 'span',
	        highlight: function (element, errorClass, validClass) {	        	
	        	/* $(element).css('border','1px solid red');	            
	            $(element).parents().removeClass('validate-success').addClass('validate-error'); */
	        	$(element).parents('.divValidate').removeClass('has-success').addClass('has-error');	            
	        },
	        unhighlight: function (element, errorClass, validClass) {
	        	/* $(element).css('border','1px solid green');
	        	$(element).parents().removeClass('validate-error').addClass('validate-success'); */
	        	$(element).parents('.divValidate').removeClass('has-error').addClass('has-success');
	        }, 
	        submitHandler: function () {                
                $('#frmAddAdmin').submit();
	        }
	    });
		
		
	});
});
	
	</script>

</body>

<!-- END BODY -->
</html>
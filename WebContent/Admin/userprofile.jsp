<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8"/>
<title>Metronic | Form Stuff - Form X-editable</title>
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
		
			<!-- /.modal -->
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN PAGE HEADER-->
			<!-- BEGIN PAGE HEAD -->
			
			<!-- END PAGE HEAD -->
			<!-- BEGIN PAGE BREADCRUMB -->
			
			<!-- END PAGE BREADCRUMB -->
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="portlet light">
				<div class="portlet-body">
					
					<div class="row">
						<div class="col-md-12">
						<c:forEach items="${sessionScope.editlist}" var="i"> 
							<form action="<%=request.getContextPath()%>/formController?flag=update&ID=${i.regId}"  enctype="multipart/form-data" method="post" role="form">
 								
								<div class="form-body">
								<div class="form-group"> 
 										<label>Title</label>
										<div class="radio-list">
											<label class="radio-inline">
 											<input type="radio" name="radanswer"  value="mr">Mr</label>
 											<label class="radio-inline">
											<input type="radio" name="radanswer"  value="mrs">Mrs</label>
											<label class="radio-inline">
 											<input type="radio" name="radanswer"  value="dr">Dr</label> 
										</div> 
 									</div> 
								<div class="form-group">
										<label>First Name</label>
										<div class="input-group">
											<span class="input-group-addon">
											<i class="fa fa-user"></i>
											</span>
											<input type="text" name="firstName" class="form-control" value="${i.firstname }" placeholder="First Name" required="required">
										</div>
									</div>
									<div class="form-group">
										<label>Last Name</label>
										<div class="input-group">
											<span class="input-group-addon">
											<i class="fa fa-user"></i>
											</span>
											<input type="text" class="form-control" name="lastname" value="${i.lastname}" placeholder="Last Name" required="required">
										</div>
										</div>
										<input type="hidden" value="${i.password}" name="password"/>
										<div class="form-group">
										<label>Email Address</label>
										<div class="input-group">
											<span class="input-group-addon">
											<i class="fa fa-envelope"></i>
											</span>
											<input type="text" name="email" value="${i.email}" class="form-control" readonly="readonly" placeholder="Email Address" required="required">
										</div>
									</div>
									<input type="file" id="pic" name="pic" placeholder="Upload Profile Picture">
									<div class="form-group">
										<label>Contact Number</label>
										<div class="input-icon">
										<input type="text" name="ContactNumber" value="${i.contactNumber}" class="form-control" placeholder="Contact Number" required="required">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-12" >Professional BackGround</label>
										<label class="col-md-4" for="exampleInputEmail22">Since</label>
										<label class="col-md-4" for="exampleInputEmail22">Company Name</label>
										<label class="col-md-4" for="exampleInputEmail22">Current Position</label>
									</div>
									
								
									<div class="form-group col-md-4">
										<div class="input-group">
									<div class="input-icon">
										
										<input type="text" value="${i.since}" class="form-control date-picker" name="since" id="txtfuturedate" onchange="date(this)" placeholder="Select Date"  required="required">
										</div>
										<span id="spdate" style="display:none;color:red">Enter valid date</span>
									</div>
									</div>
									<div class="form-group col-md-4">
									<div class="input-group">
									<div class="input-icon">
										
										<input type="email" value="${i.companyName}" class="form-control" name="companyName"  placeholder="Company Name" required="required">
										</div>
									</div>
									</div>
									<div class="form-group col-md-4">
									<div class="input-group">
									<div class="input-icon">
										
										<input type="text" value="${i.currentPosition}" class="form-control" name="currentPosition" id="exampleInputEmail22" placeholder="Current Position" required="required">
										</div>
									</div>
									</div>
							
								<br/>
									<div class="form-group">
										<label>Department</label>
										<div class="input-icon">
										<input type="text" name="department" value="${i.department}" class="form-control" placeholder="Department" required="required">
										</div>
									</div>
									
									<div class="form-group">
										<label>Role</label>
										<div class="input-icon">
										<input type="text" name="role" value="${i.role}" class="form-control" placeholder="Role" required="required">
										</div>
									</div>
									
									<div class="form-group">
										<label>Branch Name</label>
										<div class="input-icon">
										<input type="text" name="branchName" value="${i.branchName}" class="form-control" placeholder="Branch Name" required="required">
										</div>
									</div>
									
									<div class="form-group">
										<label>Date of Birth</label>
										<div class="input-icon">
										<input type="text" class="form-control" id="txtBirthDate" value="${i.dateofBirth}" name="dateofBirth" onchange="fndate(this)" placeholder="Birth Date" data-mask="99/99/9999" />
<!-- 										<input type="text" class="form-control date-picker" name="dateofBirth" size="14" id="datepicker-autoclose"  onchange="fndate(this)" placeholder="Select Date" value="" required="required"> -->
										</div>
										<span id="pdate" style="display:none;color:red">Enter valid date</span>
									</div>
									
									
									<div class="form-group">
										<label>Branch Address</label>
										<div class="input-icon">
										<input type="text" name="branchAddress" value="${i.branchAddress}" class="form-control" placeholder="Branch Address" required="required">
										</div>
									</div>
									
									<div class="form-group">
										<label>Marital Status</label>
										<div class="input-icon">
										<input type="text" name="maritalStatus" value="${i.maritalStatus}" class="form-control" placeholder="Marital Status" required="required">
										</div>
									</div>
									
									<div class="form-group">
										<label>Nationality</label>
										<div class="input-icon">
										<input type="text" name="nationality" value="${i.nationality}" class="form-control" placeholder="Nationality" required="required">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-12" >Address</label>
										<label class="col-md-6" >Zip Code</label>
										<label class="col-md-6" > Street</label>
										
										
									</div>
									
									
									<div class="form-group col-md-6">
										<div class="input-group col-md-12">
											<div class="input-icon">
											<input type="text" class="form-control" value="${i.zipCode}" name="zipCode" required="required"  placeholder="Zip Code" >
											</div>
										</div>
									</div>
									
									
									<div class="form-group col-md-6">
										<div class="input-group col-md-12">
											<div class="input-icon">
											<input type="email" class="form-control" value="${i.street}" name="street"  placeholder=" Street" required="required">
											</div>
										</div>
									</div>
									
									<div class="form-group">
										<label>Country</label>
										<select class="form-control" value="${i.email}" onchange="print_state('state',this.selectedIndex);" id="country" name ="country" required="required"></select>
									</div>
									
									<div class="form-group">
										<label>State</label>
										<div class="input-icon">
											<select class="form-control"  name ="state" id ="state" required="required"> value="${i.email}"</select>

										</div>
									</div>
									<div class="form-group">
										<label>City</label>
										<select class="form-control" name="city" value="${i.email}" required="required">
											<option>Select</option>
											<option>Ahmedabad</option>
											<option>Gandinagar</option>
											<option>Rajkot</option>
										</select>
									</div>
									
									
									<div class="form-group">
										<label>Languages Known</label>
										<select class="form-control" value="${i.email}" name="languagesKnown" required="required">
											<option>Select</option>
											<option>English</option>
											<option>Hindi</option>
										</select>
									</div>
									<div class="form-group">
										<label>Interest</label>
										<select class="form-control"  name="designation" required="required">
											<option>Select</option>
											<option>Hiring Manager</option>
											<option>Trainer</option>
											<option>Trainee</option>
										</select>
									</div>
				
								</div>
								<div class="form-actions">
									<button type="submit" id="my_submit" class="btn blue">Update</button>
									 <button id="btnUpdate" type="submit" class="btn btn-success" style="display: none">Update</button>
									<button type="button" class="btn default">Cancel</button>
								</div>
							
							</form>
							</c:forEach>
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

<!-- END PAGE LEVEL SCRIPTS -->

</body>

<!-- END BODY -->
</html>
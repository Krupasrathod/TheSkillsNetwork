<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>The Skills Network - Social Network HTML Template</title>



<!-- <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'> -->

<link rel="shortcut icon" href="images/Bugfree.ico">

<!-- Style Sheet -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/main-style.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/stylesheet.css">

<style type="text/css">
	.validate-success{
		color:#356635;
	}
	.validate-error{
		color:#b94a48;
	}
</style>

<script>
    history.forward();
</script>



</head>

<body>
<div id="main-wrapper"> 
  
  <!-- Top Toolbar -->
  <div class="toolbar">
    <div class="uou-block-1a blog">
      <div class="container">
        <!-- <div class="search"> <a href="#" class="toggle fa fa-search"></a>
          <form action="#">
            <input type="text" class="search-input" placeholder="Search ...">
            <input type="submit" value="ï">
          </form>
        </div> -->
        <ul class="social">
          <li><a target="_blank" href="https://www.facebook.com/" class="fa fa-facebook"></a></li>
          <li><a target="_blank" href="https://twitter.com/login" class="fa fa-twitter"></a></li>
          <li><a target="_blank" href="#" class="fa fa-google-plus"></a></li>
        </ul>
               
      </div>
    </div>
    <!-- end .uou-block-1a --> 
  </div>
  <!-- end toolbar -->
  
  <div class="box-shadow-for-ui">
    <div class="uou-block-2b">
      <div class="container"> <a href="#" class="logo"><img src="images/bugfree_logo.jpg" alt=""></a> <a href="#" class="mobile-sidebar-button mobile-sidebar-toggle"><span></span></a>
        <nav class="nav">
          <ul class="sf-menu">
            <li class="active"><a href="Home.jsp"><i class="fa  fa-home"></i></a></li>
<!--             <li> <a href="listing-filter.jsp">Professionals</a> </li> -->
<!--             <li> <a href="Home.jsp">Pages</a> -->
<!--               <ul> -->
<!--                 <li><a href="profilecompany.jsp">Profile Company</a></li> -->
<!--                 <li><a href="">Profile Company No Tabs</a></li> -->
<!--                 <li><a href="user-dashboard(connections)(hotkeys-disabled).html">User Dashboard 1</a></li> -->
<!--                 <li><a href="user-dashboard(connections)(hotkeys-enabled).html">User Dashboard 2</a></li> -->
<!--                 <li><a href="user-dashboard(followers).html">User Dashboard 3</a></li> -->
<!--                 <li><a href="user-dashboard(following).html">User Dashboard 4</a></li> -->
<!--                 <li><a href="blog-post.jsp">Blog Post</a></li> -->
<!--               </ul> -->
<!--             </li> -->
<!--             <li> <a href="user-profile(layout-1).jsp">User Profile</a></li> -->
<!--             <li><a href="blog.jsp">Blog</a></li> -->
<!--             <li><a href="gui-kit.html">GUI KIT</a></li> -->
          </ul>
        </nav>
      </div>
    </div>
    <!-- end .uou-block-2b --> 
  </div>
  
  <!-- HOME PRO-->
  <div class="home-pro"> 
    
    <!-- PRO BANNER HEAD -->
    <div class="banr-head">
      <div class="container">
        <div class="row"> 
          
          <!-- CONTENT -->
          <div class="col-sm-7">
            <div class="text-area">
              <div class="position-center-center col-md-10">
                <h1> Here comes the social networking platform that you've been waiting for</h1>
                <h6>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue conseqaut nibbhi ellit ipsum consectetur. </h6>
              </div>
            </div>
          </div>
          
          <!-- FORM SECTION -->
          <div class="col-sm-5">
            <div class="login-sec"> 
              
              <!-- TABS -->
              <div class="uou-tabs">
                <ul class="tabs">
                  <li id="res"><a href="#register">Register Now</a></li>
                  <li id="ln" class="active"><a href="#log-in">Member Login</a></li>
<!--                    <li class="forget"><a href="#fpass">Forgot Password</a></li> -->
                </ul>
                
                <!-- REGISTER -->
                <div class="content">
                  <div id="register">
                    <form id="frmregister" name="register" action="<%=request.getContextPath() %>/UserRegisterController" method="post">
                    <div class="divValidate">
                       <label>First Name <span class="text-danger">*</span></label>
                      <input type="text"  name="firstname" id="firstname" onkeypress="return onlyAlphabets(event, this);"  placeholder="First Name" />
                     </div>
                     <div class="divValidate">
                      <label>Last Name <span class="text-danger">*</span></label>
                      <input type="text" name="lastname" id="lastname" onkeypress="return onlyAlphabets(event, this);"  placeholder="Last Name" />
                      </div>
                      <div class="divValidate">
                      <label>Email Address </label>
                      <span class="text-danger" id="pqr">*</span>
                      <input type="email" onchange="loadData()" id="email"  name="email" placeholder="Email Address" />
                      </div>
                      <div class="divValidate">
                      <label>Phone <span class="text-danger">*</span></label>
                      <input type="text" id="phone" name="phone" maxlength="12" onkeypress="return onlyNumeric(event, this);"  placeholder="Phone" />
                      </div>
                      <div class="divValidate">
                      <label>Password <span class="text-danger">*</span></label>
                      <input type="password" id="password" name="password" placeholder="Password" />
                      </div>
                      <div class="divValidate">
                      <label>Confirm Password <span class="text-danger">*</span></label>
                      <input type="password" id="rpassword" name="rpassword" placeholder="Confirm Password" /><br>
                      </div>
                      
                      <div class="divValidate">
                      <label>Designation <span class="text-danger">*</span></label>
                      <select name="designation">
                      <option>Hiring Manager</option>
                      <option>Recruiter</option>
                      <option>Trainer</option>
                      <option>Mentor</option>
                      <option>Trainee</option>
                      </select><br>
                      </div>
                      
                      
                      <input type="submit" id="btnRegister" style="background-color:#0099ff" class="btn btn-primary" value="Register" />
<!--                       <button id="btnRegister" type="submit" value="Register">Register</button> -->
<!--                      <input type="submit" id="btnRegister" class="btn btn-primary" value="Register" /> -->
<!--                       <div class="login-with"> <span>Or login with:</span> <a target="_blank" href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a> <a href="#."><i class="fa fa-google"></i></a> <a target="_blank" href="https://www.linkedin.com/uas/login"><i class="fa fa-linkedin"></i></a> </div> -->
                    </form>
                  </div>
                  
                  <!-- LOGIN -->
                  <div id="log-in" class="active">
                  
                    <form id="frmlogin" name="frmlogin" action="<%=request.getContextPath() %>/UserLoginController?flag=login" method="post">
                    <%
                    String msg="";
                    HttpSession regusers = request.getSession(); 
                    if(request.getAttribute("passnotmatch") != null)
                    {
                    	 msg = request.getAttribute("passnotmatch").toString();
                    	
                    %>
                    <span style="color:yellow"><%=msg %> </span>
                    <% }  %>
                     <div class="divValidate">
                   		<label>Email Address <span class="text-danger" id="loginpqr">*</span></label>
                      <input type="email" onchange="validatelogin()" id="regemail" name="email" placeholder="Email Address" >
                      </div>
                       <div class="divValidate">
                      <label>Password <span class="text-danger">*</span></label>
                      <input type="password" name="password"  placeholder="Password" >
                      </div>
                      <input type="submit" id="loginsubmit" style="background-color:#0099ff" class="btn btn-primary" value="login" />
                      <!-- <button id="otpsubmit" type="submit"></button> -->
<!--                       <div class="login-with"> <span>Or login with:</span> <a target="_blank" href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a> <a href="#."><i class="fa fa-google"></i></a> <a target="_blank" href="https://www.linkedin.com/uas/login"><i class="fa fa-linkedin"></i></a> </div> -->
<!--                        --><div class="forget">Forgot your password? <a href="#fpass">Click Here</a></div>
                      
                                           
                    </form>
                  </div>
                  <div  id="fpass">
                    <form id="frmfpass" action="<%=request.getContextPath() %>/FpsswdController" method="post">
                     <div class="divValidate">
                     <label>Email Address <span class="text-danger" id="otpqr">*</span></label>
                      <input type="email" onchange="loademail()" id="otpemail" name="email"  placeholder="Enter registered E-mail Address here">
                      </div>
                      <!-- <input  style="background-color:#0099ff" class="btn btn-primary" onsubmit="loademail()" id="otpsubmit" type="submit" value="Submit"/> -->
                      <button type="submit" disable="disable" id="otpsubmit" >Submit</button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <!-- SERVICES -->
    <section class="services"> 
      
      <!-- SERVICES ROW -->
      <ul class="row">
        
        <!-- SECTION -->
        <li class="col-md-4">
          <div class="ser-inn">
          <i class="fa fa-globe"></i>
            <h4>Stay in touch with your
              colleagues</h4>
            <i class="fa fa-globe big"></i>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue conseqaut nibbhi ellit ipsum consectetur.</p>
          </div>
        </li>
        
        <!-- SECTION -->
        <li class="col-md-4">
          <div class="ser-inn">
            <i class="fa fa-book"></i>
            <h4>Get the latest news
              in your industry</h4>
            <i class="fa fa-book big"></i>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue conseqaut nibbhi ellit ipsum consectetur.</p>
          </div>
        </li>
        
        <!-- SECTION  -->
        <li class="col-md-4">
          <div class="ser-inn">
          <i class="fa fa-picture-o"></i>
            <h4>Share whatâs up
              with you</h4>
            <i class="fa fa-picture-o big"></i>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue conseqaut nibbhi ellit ipsum consectetur.</p>
          </div>
        </li>
      </ul>
    </section>
    
    <!-- PRO SECTION -->
    <section class="pro-content">
      <div class="container-fluid">
        <div class="row"> 
          
          <!-- PRO IMAGE -->
          <div class="col-md-6 pro-inside" style="background:url(images/pro-img-1.jpg) center center no-repeat;"></div>
          
          <!-- PRO CONTENT -->
          <div class="col-md-6 pro-inside">
            <div class="position-center-center col-md-6">
              <h1>Interact with other
                professionals</h1>
              <p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem 
                accusantium doloremque laudantium, totam rem aperiam, 
                eaque ipsa quae ab illo inventore veritatis et quasi architecto 
                beatae vitae dicta sunt explicabo. </p>
            </div>
          </div>
        </div>
      </div>
      
      <!-- PRO SECTION -->
      <div class="container-fluid">
        <div class="row"> 
          
          <!-- PRO TEXT -->
          <div class="col-md-6 pro-inside">
            <div class="position-center-center col-md-6">
              <h1>Collaborate on a
                project</h1>
              <p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem 
                accusantium doloremque laudantium, totam rem aperiam, 
                eaque ipsa quae ab illo inventore veritatis et quasi architecto 
                beatae vitae dicta sunt explicabo. </p>
            </div>
          </div>
          
          <!-- PRO BACKGROUND -->
          <div class="col-md-6 pro-inside" style="background:url(images/pro-img-2.jpg) center center no-repeat;"></div>
        </div>
      </div>
    </section>
    
    <!-- APP IMAGE -->
    <section class="app-images">
      <div class="container">
        <div class="row"> 
          
          <!-- TEXT -->
          <div class="col-md-6 text-center text-area">
            <h1>SocialMe for your 
              Smartphone</h1>
            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem 
              accusantium doloremque laudantium, totam rem aperiam, 
              eaque ipsa quae ab illo inventore veritatis et quasi architecto 
              beatae vitae dicta sunt explicabo. </p>
            <a href="#."><i class="fa fa-apple"></i> App Store</a> </div>
          
          <!-- APP IMAGE -->
          <div class="col-md-6 text-right"><img src="images/app-img.png" alt="" > </div>
        </div>
      </div>
    </section>
    
    <!-- TESTIMONIALS -->
    <section class="clients-says">
      <div class="container">
        <h3 class="section-title">what our users say </h3>
        <div class="testi">
          <div class="texti-slide"> 
            <!-- SLide -->
            <div class="clints-text">
              <div class="text-in">
                <p>"Bugfree technologies is one of d quickest service providers. They understand your needs completely and try to fulfill them. It's wonderful to work with the efficient team."</p>
              </div>
              <div class="avatar">
                <div class="media-left"> <a href="#."> <img src="images/clients-avatar-1.jpg" alt=""> </a> </div>
                <div class="media-body">
                  <h6>Hiren Pancholi</h6>
                  <span>hiren@bugfreetechnologies.com</span> </div>
              </div>
            </div>
            
            <!-- SLide -->
            <div class="clints-text">
              <div class="text-in">
                <p>"We have Found Best partner in Bugfree Technologies, The way they handle our project & Delivery with proper testing wins our heart."</p>
              </div>
              <div class="avatar">
                <div class="media-left"> <a href="#."> <img src="images/clients-avatar-1.jpg" alt=""> </a> </div>
                <div class="media-body">
                  <h6>Dhruv Sharma</h6>
                  <span>dhruv@bugfreetechnologies.com</span> </div>
              </div>
            </div>
            
            <!-- SLide -->
            <div class="clints-text">
              <div class="text-in">
                <p>"We are having our own devlopment team. So, we have given Bugfree Technologies just testing task for our ecommerce store & they have delievered the best."</p>
              </div>
              <div class="avatar">
                <div class="media-left"> <a href="#."> <img src="images/clients-avatar-1.jpg" alt=""> </a> </div>
                <div class="media-body">
                  <h6>Samarth Modi</h6>
                  <span>samarth@bugfreetechnologies.com</span> </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- sponsors -->
    <div class="sponsors" style="background:url(images/sponser-bg.jpg) no-repeat;">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h3 class="section-title">Our Sponsors</h3>
            <div class="sponsors-slider">
              <div class="item"><img src="images/sponsor_logo1.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="images/sponsor_logo2.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="images/sponsor_logo3.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="images/sponsor_logo4.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="images/sponsor_logo5.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="images/sponsor_logo6.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="images/sponsor_logo4.png" alt="" class="img-responsive"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Footer -->
<div class="uou-block-4e">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-6"> <a href="#" class="logo"><img src="images/bugfree_logo.jpg" alt=""></a>
        <ul class="contact-info has-bg-image contain" data-bg-image="images/footer-map-bg.png">
          <li> <i class="fa fa-map-marker"></i>
            <address>
           			India
					312, 3rd Floor, Pratik Mall,
					Near City Pulse Multiplex,
					Gandhinagar (GUJARAT) - 382421
					
            </address>
          </li>
          <li> <i class="fa fa-phone"></i> <a href="tel:#">Mobile: +91 97146 40210</a> </li>
          <li> <i class="fa fa-envelope"></i> <a href="mailto:#">info@bugfreetechnologies.com</a> </li>
        </ul>
      </div>
      <div class="col-md-3 col-sm-6">
        <h5>Twitter Feed</h5>
        <ul class="twitter-feed">
          <li> RT <a href="#">@no1son</a>: Now this <a href="#">http://t.co/TSfMW1qMAW</a> is one hell of a stunning site!!! Awesome work guys <a href="#">@AIRNAUTS</a> <a href="#" class="time">May 25</a> </li>
          <li> Check out the wordpress version of Tucson - <a href="#">http://t.co/sBlU3GbapT</a> <a href="#" class="time">May 22</a> </li>
        </ul>
      </div>
      <div class="col-md-3 col-sm-6">
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
      <div class="col-md-3 col-sm-6">
        <h5>Newsletter</h5>
        <p>Subscribe to our newsletter to receive our latest news and updates. We do not spam.</p>
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
    <p>Copyright &copy; 2016 <a href="#">The Skills Network</a>. All Rights reserved.</p>
  </div>
</div>
<!-- end .uou-block-4a -->

<div class="uou-block-11a">
  <h5 class="title">Menu</h5>
  <a href="#" class="mobile-sidebar-close">&times;</a>
  <nav class="main-nav">
    <ul>
      <li class="active"><a href="index-2.html">Index</a></li>
      <li> <a href="listing-filter.jsp">Professionals</a> </li>
      <li><a href="profilecompany.jsp">Profile Company</a></li>
      <li><a href="profile_company-no-tabs.html">Profile Company No Tabs</a></li>
      <li><a href="user-dashboard(connections)(hotkeys-disabled).html">User Dashboard 1</a></li>
      <li><a href="user-dashboard(connections)(hotkeys-enabled).html">User Dashboard 2</a></li>
      <li><a href="user-dashboard(followers).html">User Dashboard 3</a></li>
      <li><a href="user-dashboard(following).html">User Dashboard 4</a></li>
      <li><a href="blog-post.jsp">Blog Post</a></li>
      <li> <a href="user-profile(layout-1).jsp">User Profile</a></li>
      <li><a href="blog.jsp">Blog</a></li>
      <li><a href="gui-kit.html">GUI KIT</a></li>
    </ul>
  </nav>
  <hr>
</div>

<!-- Scripts --> 
<script src="https://maps.googleapis.com/maps/api/js"></script> 
<script src="js/jquery-2.1.3.min.js"></script> 
<script src="js/bootstrap.js"></script> 
<script src="js/plugins/superfish.min.js"></script> 
<script src="js/jquery.ui.min.js"></script> 
<script src="js/plugins/rangeslider.min.js"></script> 
<script src="js/plugins/jquery.flexslider-min.js"></script> 
<script src="js/uou-accordions.js"></script> 
<script src="js/uou-tabs.js"></script> 
<script src="js/plugins/select2.min.js"></script> 
<script src="js/owl.carousel.min.js"></script> 
<script src="js/gmap3.min.js"></script> 
<script src="js/scripts.js"></script> 
<script src="assets/js/custom.js"></script>


<!-- <script src="jquery-1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script> -->
<!-- <script src="js/headroom.min.js"></script> -->
<!-- <script src="js/jQuery.headroom.min.js"></script> -->
<!-- <script src="js/template.js"></script> -->

<script src="js/plugins/jquery-validation-1.11.1/dist/jquery.validate.min.js"></script>

<%
	if(regusers.getAttribute("emailnotmatch") != null){
	%>
	<script>
	alert("Invalid Email Address");
	jQuery("#ln").removeAttr("class","active");
	jQuery("#log-in").removeAttr("class","active");
	jQuery("#register").attr("class","active");
	 jQuery("#res").attr("class","active");
	 </script>
	 <%
	}
	 %>
<script type="text/javascript">




$(document).ready(function(){
	
	$('input[type="text"]').keydown(function(e) {
	    if (e.keyCode == 32) {
	        return false;
	    }
	});
	
jQuery(".forget").click(function(){
		
	jQuery("#ln").removeAttr("class","active");
	jQuery("#log-in").removeAttr("class","active");
	jQuery("#register").removeAttr("class","active");
	jQuery("#res").removeAttr("class","active");
	jQuery("#fpass").attr("class","active");
	$('html,body').animate({ scrollTop: 0 }, 'fast');
	jQuery("#otpemail").focus();
	});
	
	
	jQuery.validator.addMethod("lettersonly", function (value, element) {
	    //return this.optional(element) || /^[a-z]+$/i.test(value);
	    return this.optional(element) || /^[a-zA-Z]*$/i.test(value);
	}, "Enter only alphabet characters.");
	jQuery.validator.addMethod("email", function (value, element) {
	    //return this.optional(element) || /^[a-z]+$/i.test(value);
	    return this.optional(element) || /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/i.test(value);
	}, "Enter only Email Address Here.");
	 jQuery.validator.addMethod("validpassword", function (value, element) {
		     //return this.optional(element) || /^[a-z]+$/i.test(value);       /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/
		     return this.optional(element) || /(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{6,}$/i.test(value);
		 }, "Input must contain at least one digit/special characters and alphanumeric letter and be at least six characters long.");
	
// 	 jQuery.validator.addMethod("digits", function (value, element) {
// 		    //return this.optional(element) || /^[a-z]+$/i.test(value);
// 		    return this.optional(element) ||  /^\+(?:[0-9] ?){6,14}[0-9]$/i.test(value);
// 		}, "Enter only numbers.");
	
	 
	 
	$('#btnRegister').on('click', function(){		
		$('#frmregister').validate({
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
	            },
	            phone: {
	                required: true,
	                minlength: 10,
	                maxlength: 12,
	                digits:true
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
                $('#frmregister').submit();
            }
	    });
		
	});

});
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
	$('#btnRegister').attr('disabled',true);
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
	$('#btnRegister').removeAttr('disabled',true);
     temp=true;
     }
  }

  }
 // alert("sending");
  xmlhttp.open("get", "${pageContext.request.contextPath}/UserRegisterController?flag=searchUserName&email="+email,true);
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
var temp=true;

function loademail()
 {
 //alert("check email");
 //  var data_file = "http://localhost:8080/Project2/Admin/loadUser.jsp";
  var email=document.getElementById("otpemail").value;
  var my_submit=document.getElementById("otpsubmit");
//  alert("email for otp is:" +email);
  
    
  var xmlhttp;
  
  if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
     xmlhttp=new XMLHttpRequest();
  //  alert("request done");
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
     
     //otpsubmit.disabled=true;
     $('#otpsubmit').attr('disabled',true);
    // Alert("Already Exist");
   //  Alert("Out of loop");
     
    
     temp=true;
     }
  }

  }
 // alert("sending");
  xmlhttp.open("get", "${pageContext.request.contextPath}/UserRegisterController?flag=searchUserName&email="+email,true);
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
var temp=true;

function validatelogin()
 {
// alert("check");
 //  var data_file = "http://localhost:8080/Project2/Admin/loadUser.jsp";
  var email=document.getElementById("regemail").value;
  var my_submit=document.getElementById("loginsubmit");
  //alert("email for otp is:" +email);
  
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
   // alert("Return111");
    
    var jsonObj = JSON.parse(xmlhttp.responseText);
    for(i=0 ; i<jsonObj.length ; i++)
    {
    // document.getElementById("abcd").innerHTML = jsonObj[i].email;
              
    document.getElementById("loginpqr").innerHTML = "";
    loginsubmit.removeAttribute("disabled");
    temp=false;
//     btnRegister.disabled=true;
	
	 //var a=jsonObj.length();
    //alert(a);
    //alert(d);
    //alert("Return222");
    //document.getElementById('abcd').innerHTML="jsonObj.userName";
    //alert("Return333");
  
   }
    if(jsonObj.length == 0)
     {
    	document.getElementById("loginpqr").innerHTML = "Email Doesn't Exist";
    	 $('#loginsubmit').attr('disabled',true);
        // Alert("Already Exist");
      //   Alert("Out of loop");
         
     temp=true;
     }
  }

  }
 // alert("sending");
  xmlhttp.open("get", "${pageContext.request.contextPath}/UserRegisterController?flag=searchUserName&email="+email,true);
  xmlhttp.send();
  
  /* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
   0: request not initialized
   1: server connection established
   2: request received
   3: processing request
   4: request finished and response is ready */
 }
</script>

<script type="text/javascript">



$(document).ready(function(){	
	
	
	jQuery.validator.addMethod("email", function (value, element) {
	    //return this.optional(element) || /^[a-z]+$/i.test(value);
	    return this.optional(element) || /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/i.test(value);
	}, "Enter only Email Address Here.");
	 jQuery.validator.addMethod("loginvalidpassword", function (value, element) {
		     //return this.optional(element) || /^[a-z]+$/i.test(value);       /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/
		     return this.optional(element) || /(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{6,}$/i.test(value);
		 },"This field is required");
	
// 	 jQuery.validator.addMethod("digits", function (value, element) {
// 		    //return this.optional(element) || /^[a-z]+$/i.test(value);
// 		    return this.optional(element) ||  /^\+(?:[0-9] ?){6,14}[0-9]$/i.test(value);
// 		}, "Enter only numbers.");
	
	 
	 
	$('#loginsubmit').on('click', function(){		
		$('#frmlogin').validate({
	        rules: {
	        	
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
	                loginvalidpassword : false
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
                $('#frmlogin').submit();
            }
	    });
		
	});
	
	$('#otpsubmit').on('click', function(){		
		$('#frmfpass').validate({
	        rules: {
	        	
	        	email: {
	                required: true,
	                minlength: 2,
	                maxlength: 70,
	                email:true
	            },
	            
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
                $('#frmfpass').submit();
            }
	    });
		
	});

});
</script>

</body>
</html>
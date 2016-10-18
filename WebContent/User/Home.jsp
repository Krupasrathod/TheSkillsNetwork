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
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

<!-- Style Sheet -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/owl.carousel.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main-style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">

<link rel="stylesheet" href="<%=request.getContextPath()%>/User/css/intlTelInput.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/User/css/demo.css">

<script type="text/javascript">
var country_arr = new Array("Afghanistan","Albania","Algeria", "India", "USA", "Vietnam");

var s_a = new Array();
s_a[1]="+93";
s_a[2]="+355";
s_a[3]="+213";
s_a[4]="+91";
s_a[5]="+1";
s_a[6]="+84";
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
//     option_str.options[0] = new Option('Select State','');
    option_str.selectedIndex = 0;
    var state_arr = s_a[selectedIndex].split("|");
    for (var i=0; i<state_arr.length; i++) {
    option_str.options[option_str.length] = new Option(state_arr[i],state_arr[i]);
    }
}
</script>

<script>
var temp=true;

function loademail()
	{
	alert("check email");
	//  var data_file = "http://localhost:8080/Project2/Admin/loadUser.jsp";
		var email=document.getElementById("otpemail").value;
		var my_submit=document.getElementById("otpsubmit");
		alert("email for otp is:" +email);
		
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

function loadData()
	{
	alert("check");
	//  var data_file = "http://localhost:8080/Project2/Admin/loadUser.jsp";
		var email=document.getElementById("email").value;
		var my_submit=document.getElementById("my_submit");
		alert("email is:" +email);
		
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
				// document.getElementById("abcd").innerHTML = jsonObj[i].email;
              
				document.getElementById("pqr").innerHTML = jsonObj[i].email+"Already Exists";
				my_submit.disabled=true;
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
					document.getElementById("pqr").innerHTML = "";
					Alert("Out of loop");
					my_submit.removeAttribute("disabled");
					temp=true;
					}
		}

		}
		alert("sending");
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
function myFunction() {
    var y, x, text;

    // Get the value of the input field with id="numb"
    x = document.getElementById("numb").value;
	y=document.getElementById("numb").value;
    // If x is Not a Number or less than one or greater than 10
    if (isNaN(x) || x < 1 || x > 10) {
        text = "Input not valid";
        y.disable=true
    } 
    else {
        text = "Input OK";
        y.removeAttribute("disabled");//=false;
    }
    document.getElementById("demo").innerHTML = text;
}


function allLetter(x)  
{
alert("123");
document.getElementById("my_submit").disable=true;
var submit= document.getElementById("my_submit").disable=true;
var letters = /^[A-Za-z]+$/; 
if(x.value.match(letters))  
{
alert('Your name have accepted : you can try another');  
submit.disabled=true;
return false;
}
else  
{
alert('Please input alphabet characters only');  
$("#submit").attr("disabled");
return true;
}
}
</script>
</head>

<body>
<div id="main-wrapper"> 
  
  <!-- Top Toolbar -->
  <div class="toolbar">
    <div class="uou-block-1a blog">
      <div class="container">
        <div class="search"> <a href="#" class="toggle fa fa-search"></a>
          <form action="#">
            <input type="text" class="search-input" placeholder="Search ...">
            <input type="submit" value="ï">
          </form>
        </div>
        <ul class="social">
          <li><a href="#" class="fa fa-facebook"></a></li>
          <li><a href="#" class="fa fa-twitter"></a></li>
          <li><a href="#" class="fa fa-google-plus"></a></li>
        </ul>
        <ul class="authentication">
          <li><a href="#">Login</a></li>
          <li><a href="#">Register</a></li>
        </ul>
        <div class="language"> <a href="#" class="toggle"><img src="images/flags/32/US.png" alt=""> ENG</a>
          <ul>
            <li><a href="#"><img src="images/flags/32/PT.png" alt=""> ENG</a></li>
            <li><a href="#"><img src="images/flags/32/FR.png" alt=""> FR</a></li>
            <li><a href="#"><img src="images/flags/32/ES.png" alt=""> ES</a></li>
          </ul>
        </div>
      </div>
    </div>
    <!-- end .uou-block-1a --> 
  </div>
  <!-- end toolbar -->
  
  <div class="box-shadow-for-ui">
    <div class="uou-block-2b">
      <div class="container"> <a href="#" class="logo"><img src="images/logo.png" alt=""></a> <a href="#" class="mobile-sidebar-button mobile-sidebar-toggle"><span></span></a>
        <nav class="nav">
          <ul class="sf-menu">
            <li class="active"><a href="Home.jsp"><i class="fa  fa-home"></i></a></li>
            <li> <a href="listing-filter.jsp">Professionals</a> </li>
            <li> <a href="Home.jsp">Pages</a>
              <ul>
                <li><a href="profilecompany.jsp">Profile Company</a></li>
                <li><a href="">Profile Company No Tabs</a></li>
                <li><a href="user-dashboard(connections)(hotkeys-disabled).html">User Dashboard 1</a></li>
                <li><a href="user-dashboard(connections)(hotkeys-enabled).html">User Dashboard 2</a></li>
                <li><a href="user-dashboard(followers).html">User Dashboard 3</a></li>
                <li><a href="user-dashboard(following).html">User Dashboard 4</a></li>
                <li><a href="blog-post.jsp">Blog Post</a></li>
              </ul>
            </li>
            <li> <a href="user-profile(layout-1).jsp">User Profile</a></li>
            <li><a href="blog.jsp">Blog</a></li>
            <li><a href="gui-kit.html">GUI KIT</a></li>
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
                <h1> Here comes the social networking platform that youâve been waiting for</h1>
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
                  <li><a href="#register">Register Now</a></li>
                  <li class="active"><a href="#log-in">Member Login</a></li>
                   <li><a href="#fpass">Forgot Password</a></li>
                </ul>
                
                <!-- REGISTER -->
                <div class="content">
                  <div id="register">
                    <form action="<%=request.getContextPath()%>/RegistrationController?flag=reg" method="post">
                      <input type="text" name="firstname" onchange="allLetter(this)" maxlength="20" placeholder="First Name" required="required">
                      <input type="text" name="lastname" placeholder="Last Name" required="required">
                     
                      <input type="email" name="email" onchange="loadData()" id="email" placeholder="Email Address" required="required">
                       <span id="pqr"></span>
                       
                      <input type="tel" id="demo" placeholder="">
                      Select Country:<select  onchange="print_state('state',this.selectedIndex);" id="country" name ="country"></select>
                      
                      <select name ="state" id ="state"></select>
                     <script language="javascript">print_country("country");</script>
                      <input type="text" name="phone" id="numb" onchange="myFunction()" maxlength="10" placeholder="Phone" required="required">
                      <input type="password" name="password" placeholder="Password" required="required">
                      
                      <select name="admin" >
                      <option>Trainee</option>
                      <option>Trainer</option>
                      <option>Mentor</option>
                      <option>Recruiters</option>
                      </select>
                      
                      
                      
                      <input type="password" name="rpassword" placeholder="Confirm Password" required="required">
                      <input type="button" id="my_submit" value="Submit">
                      <button id="my_submit" type="submit" >Register</button>
                      <div class="login-with"> <span>Or login with:</span> <a href="#."><i class="fa fa-facebook"></i></a> <a href="#."><i class="fa fa-google"></i></a> <a href="#."><i class="fa fa-linkedin"></i></a> </div>
                    </form>
                  </div>
                  
                  <!-- LOGIN -->
                  <div id="log-in" class="active">
                    <form action="<%=request.getContextPath() %>/UserLoginController?flag=login" method="post">
                      <input type="email" name="email" placeholder="Email Address" required="required">
                      <input type="password" name="password" placeholder="Password" required="required">
                      <button type="submit">Login</button>
                      <div class="login-with"> <span>Or login with:</span> <a target="_blank" href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a> <a href="#."><i class="fa fa-google"></i></a> <a target="_blank" href="https://www.linkedin.com/uas/login"><i class="fa fa-linkedin"></i></a> </div>
                      <div class="forget">Forgot your password? <a href="#fpass">Click Here</a></div>
                    </form>
                  </div>
                  
                  <div  id="fpass">
                    <form action="<%=request.getContextPath() %>/FpsswdController" method="post">
                      <input type="email" name="email" onchange="loademail()" id="otpemail" placeholder="Email Address">
                    	<div>
                    	<span id="otpqr"></span>
                    	</div>
                     
                       
                      <button type="submit" disabled="disabled" id="otpsubmit">Login</button>
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
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue.</p>
              </div>
              <div class="avatar">
                <div class="media-left"> <a href="#."> <img src="images/clients-avatar-1.jpg" alt=""> </a> </div>
                <div class="media-body">
                  <h6>John Kevin Mara</h6>
                  <span>smashingmagazine.com</span> </div>
              </div>
            </div>
            
            <!-- SLide -->
            <div class="clints-text">
              <div class="text-in">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue.</p>
              </div>
              <div class="avatar">
                <div class="media-left"> <a href="#."> <img src="images/clients-avatar-1.jpg" alt=""> </a> </div>
                <div class="media-body">
                  <h6>John Kevin Mara</h6>
                  <span>smashingmagazine.com</span> </div>
              </div>
            </div>
            
            <!-- SLide -->
            <div class="clints-text">
              <div class="text-in">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Proin nibh augue.</p>
              </div>
              <div class="avatar">
                <div class="media-left"> <a href="#."> <img src="images/clients-avatar-1.jpg" alt=""> </a> </div>
                <div class="media-body">
                  <h6>John Kevin Mara</h6>
                  <span>smashingmagazine.com</span> </div>
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
              <div class="item"><img src="../images/sponsor_logo1.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="../images/sponsor_logo2.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="../images/sponsor_logo3.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="../images/sponsor_logo4.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="../images/sponsor_logo5.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="../images/sponsor_logo6.png" alt="" class="img-responsive"></div>
              <div class="item"><img src="../images/sponsor_logo4.png" alt="" class="img-responsive"></div>
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
      <div class="col-md-3 col-sm-6"> <a href="#" class="logo"><img src="images/logo.png" alt=""></a>
        <ul class="contact-info has-bg-image contain" data-bg-image="images/footer-map-bg.png">
          <li> <i class="fa fa-map-marker"></i>
            <address>
            795 Folsom Ave, Suite 600, San Francisco, CA 94107
            </address>
          </li>
          <li> <i class="fa fa-phone"></i> <a href="tel:#">(123) 456-7890</a> </li>
          <li> <i class="fa fa-envelope"></i> <a href="mailto:#">first.last@example.com</a> </li>
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
    <p>Copyright &copy; 2015 <a href="#">UOUAPPS</a>. All Rights reserved.</p>
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
<script src="<%=request.getContextPath()%>/js/jquery-2.1.3.min.js"></script> 
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script> 
<script src="<%=request.getContextPath()%>/js/plugins/superfish.min.js"></script> 
<script src="<%=request.getContextPath()%>/js/jquery.ui.min.js"></script> 
<script src="<%=request.getContextPath()%>/js/plugins/rangeslider.min.js"></script> 
<script src="<%=request.getContextPath()%>/js/plugins/jquery.flexslider-min.js"></script> 
<script src="<%=request.getContextPath()%>/js/uou-accordions.js"></script> 
<script src="<%=request.getContextPath()%>/js/uou-tabs.js"></script> 
<script src="<%=request.getContextPath()%>/js/plugins/select2.min.js"></script> 
<script src="<%=request.getContextPath()%>/js/owl.carousel.min.js"></script> 
<script src="<%=request.getContextPath()%>/js/gmap3.min.js"></script> 
<script src="<%=request.getContextPath()%>/js/scripts.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/js/registration.js"></script>
<!-- <script src="http://code.jquery.com/jquery-latest.min.js"></script> -->
<script src="<%=request.getContextPath()%>/User/js/intlTelInput.js"></script>


<script>
$("#demo").intlTelInput();
</script>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="enquiry.aspx.cs" Inherits="enquiry" %>

 
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>WebInteric | Enquiry </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Interior Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- font -->
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Droid+Serif:400,400i,700,700i" rel="stylesheet">
<!-- //font -->
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
        });
    });
</script> 
       

<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<![endif]-->
</head>
<body>
    <form id="form2" runat="server">
	<!-- banner -->
	<div class="banner-1" style="background: url(images/b5.jpg) no-repeat 0px 0px;
    background-size: cover;">
			<div class="w3layouts-header-top">
				<div class="container">
					<div class="w3-header-top-grids">
						<div class="w3-header-top-left">
							<p><i class="fa fa-volume-control-phone" aria-hidden="true"></i> +1 234 567 8901</p>
						</div>
						<div class="w3-header-top-right">
							<div class="agileinfo-social-grids">
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
									<li><a href="#"><i class="fa fa-vk"></i></a></li>
								</ul>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<div class="head">
				<div class="container">
					<div class="navbar-top">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
							  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							  </button>
								 <div class="navbar-brand logo ">
									<h1><a href="index.html">WebInteric</a></h1>
								</div>

							</div>

							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							 <ul class="nav navbar-nav link-effect-4">
								<li><a href="index.html">Home</a> </li>
								<li><a href="about.html">About </a> </li>
								<li><a href="gallery.aspx">Gallery</a></li>
								
								<li class="active"><a href="contact.aspx">Contact</a></li>
							  </ul>
							</div><!-- /.navbar-collapse -->
						</div>
				</div>
			</div>
	</div>
	<!-- //banner -->
	<!-- contact -->
	<div class="contact">
		<div class="container">
			<div class="w3-heading-grid">
				<h2>Enquiry</h2>
				<div class="agileits-border"> </div>
			</div>
       
			<div class="map">
			
			<div class="address">
				
				
			
			<div class="contact-infom">
				<h4>Specify Your Product Enquiry :</h4>
				<p>Complete this Enquiry Form to obtain additComplete this Enquiry Form to obtain additional information about our services . We will analyze your enquiry and return to you shortly by email or phone.</p>
			</div>	
			<div class="contact-form">
				<h4>Enqiry Form</h4>
				 <form id="form1" ruEnqiry Form</h4>
				 
                     <asp:TextBox ID="TextBox2" runat="server"   placeholder="Name"></asp:TextBox>
                       &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"  placeholder="Email"></asp:TextBox>
                       &nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox4" runat="server" placeholder="Telephone"></asp:TextBox>
                     <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                     <asp:Button ID="Button1" runat="server"  style="color: #ffffff;
    font-size: .9em;
    border: solid 1px #2ebaef;
    width: 100px;
    height: 41px;
    text-align: center;
    text-decoration: none;
    background: #2ebaef;
    transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -o-transition: 0.5s all;
    -ms-transition: 0.5s all;" Text="Submit" OnClick="Button1_Click" /><br><br>
				 </form>  
                              
			</div>	
		</div>
	</div>
	</div>
	<!-- //contact -->

<!-- bootstrap-pop-up -->
	
<!-- //bootstrap-pop-up -->
	<!-- footer --> 
	<link rel="stylesheet" href="assets/css/Footer-with-button-logo.css">
	 <footer id="myFooter" style='margin-bottom:-70px;'>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <h3 class="logo" style='font-size:30px;'><a href="#"> WebInteric </a></h3>

                </div>
                <div class="col-sm-2">
                    <h5>Get started</h5>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="gallery.aspx">Gallery</a></li>
                        
                    </ul>
                </div>
                <div class="col-sm-2">
                    <h5>About us</h5>
                    <ul>
                        <li><a href="about.html">Company Information</a></li>
                        <li><a href="contact.aspx">Contact us</a></li>
                     
                    </ul>
                </div>
                <div class="col-sm-2" style='visibility:hidden;'>
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Help desk</a></li>
                        <li><a href="#">Forums</a></li>
                    </ul>
                </div>
                <div class="col-sm-3">
                    <div class="social-networks">
                        <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="google"><i class="fa fa-google-plus"></i></a>
                    </div>
                    <button type="button" onclick="window.location.href='contact.aspx'"class="btn btn-default">Contact us</button>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <p>© 2017 WebInteric </p>
        </div>
    </footer>
	
	

	<script src="js/jarallax.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
	    /* init Jarallax */
	    $('.jarallax').jarallax({
	        speed: 0.5,
	        imgWidth: 1366,
	        imgHeight: 768
	    })
	</script>
	<script src="js/responsiveslides.min.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

	        $().UItoTop({ easingType: 'easeOutQuart' });

	    });
	</script>
	<!-- //here ends scrolling icon -->
        </form>
</body>	
</html>
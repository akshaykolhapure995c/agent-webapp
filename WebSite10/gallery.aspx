<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>WebInteric | Gallery </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Interior Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
    <link href="StyleSheet.css" rel="stylesheet" />
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/lightbox.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<!--// css -->
<!-- font-awesome icons -->
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
    <!-- Load more starts -->
   <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript">
    $(function () {

        $('#btnLoad').click(function () {
            var nextval = $('#tbDetails tr').length - 1;
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "gallery.aspx/BindRepeater",
                data: "{'count':'" + nextval + "'}",
                dataType: "json",
                success: function (data) {
                    if (data.d.length > 0) {
                        for (var i = 0; i < data.d.length; i++) {
                            $("#d1").append('<ItemTemplate><div  class="col-md-4 gallery-grid"><div class="grid"><figure class="effect-apollo" id="mn"><a class="example-image-link" href="large/<%#Eval("id") %>" data-lightbox="example-set" data-title="<%#Eval("name")%>"><img style="width:340px; height:260px;" src="upload/<%#Eval("id") %>" alt="" /><figcaption><p>Code&nbsp;&nbsp;:&nbsp;<%#Eval("description")%></p></figcaption></a></figure>	</div>	</div> </ItemTemplate>')
                        }
                    }
                    else
                        alert('No More Records to Load')
                },
                error: function (result) {
                    alert("Error");
                }
            });
        })
    });
</script>
<style type="text/css">
.hrefclass
{
color:White;
font-weight:bold;
}
</style>
     <!-- Load more end -->

</head>
<body>
    <form id="form1" runat="server">
	<!-- banner -->
	<div class="banner-1" style="background: url(images/b5.jpg) no-repeat 0px 0px;
    background-size: cover;">
			<div class="w3layouts-header-top">
				<div class="container">
					<div class="w3-header-top-grids">
						<div class="w3-header-top-left">
							
						</div>
						<div class="w3-header-top-right">
							<div class="agileinfo-social-grids" >
								<ul>
									<li><a href="#" ><i class="fa fa-facebook" ></i></a></li>
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
								<li class="active"><a href="gallery.html">Gallery</a></li>
								
								<li><a href="contact.aspx">Contact</a></li>
							  </ul>
							</div><!-- /.navbar-collapse -->
						</div>
				</div>
			</div>
	</div>
	<!-- //banner -->
	<!-- gallery -->
	<div class="gallery">
		<div class="container">
			<div class="w3-heading-grid">
				<h2>Gallery</h2>
				<div class="agileits-borGallery</h2>
				<div class="agileits-borGallery</h2>
				<div class="agileits-border"> </div>
			</div>
          <asp:Repeater ID="d1" runat="server" >
        <ItemTemplate >
             <div  class="col-md-4 gallery-grid">
						<div class="grid">
							<figure class="effect-apollo" id="mn">
								<a class="example-image-link" href="large/<%#Eval("id") %>" data-lightbox="example-set" data-title="<%#Eval("name")%>" >
									<img style="width:340px; height:260px;" src="upload/<%#Eval("id") %>" alt="" />
                                    <figcaption>   
                                        <div >         
                                        <Button id="btn2" class='' OnClick="window.location.href='enquiry.aspx?des=<%#Eval("description")%> <%#Eval("name")%>'">Enquire Now</Button>
                                            </div>
                                        <p>Code&nbsp;&nbsp;:&nbsp;<%#Eval("description")%> </p>
                                    </figcaption>	
								</a>
							</figure>
						</div>
					</div>
              </ItemTemplate>
    </asp:Repeater>
                   <!--input type="button" id="btnLoad" value="Load More Data" /-->
				 	<div class="clearfix"> </div>
					<script src="js/lightbox-plus-jquery.min.js"> </script>
			</div>
		</div>
	</div>
	<!-- //gallery -->

<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Interior Styleismiss="modal" aria-label="Close">utton>						
				</div>
				<section>
					<div class="modal-body">
						<img src="images/1.jpg" alt=" " class="img-responsive" />
						<p>Ut enim ad minima veniam, quis nostrum 
							exercitationem ullam corporis suscipit laboriosam, 
							nisi ut aliquid ex ea commodi consequatur? Quis autem 
							vel eum iure reprehenderit qui in ea voluptate velit 
							esse quam nihil molestiae consequatur, vel illum qui 
							dolorem eum fugiat quo voluptas nulla pariatur.
							<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
								esse quam nihil molestiae consequatur.</i></p>
					</div>
				</section>
			</div>
		</div>
	</div>
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
	<!-- //copyright -->

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

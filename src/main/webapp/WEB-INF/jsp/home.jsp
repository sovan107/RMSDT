<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

	<spring:url value="/resources/css/form.css" var="formCSS"/>

	<head>
	<title>Home</title>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico">
	<link rel="shortcut icon" href="images/favicon.ico" />
	<link rel="stylesheet" href="${formCSS}">
	<link rel="stylesheet" href="css/thumbs.css">
	<link rel="stylesheet" href="css/slider.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src="js/script.js"></script>
	<script src="js/superfish.js"></script>
	<script src="js/sForm.js"></script>
	<script src="js/jquery.ui.totop.js"></script>
	<script src="js/jquery.equalheights.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.iosslider.min.js"></script>
	<script>
	$(document).ready(function(){
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<!--[if lt IE 8]>
	<div style=' clear: both; text-align:center; position: relative;'>
		<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
			<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
		</a>
	</div>
	<![endif]-->
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<link rel="stylesheet" media="screen" href="css/ie.css">
	<![endif]-->
	</head>
	<body class="page1" id="top">
<!--==============================header=================================-->
		<header>
			<div class="container_12">
				<div class="grid_12">
					<h1>
						<a href="index.html">
							<img src="images/logo.png" alt="Your Happy Family">
						</a>
					</h1>
					<div class="menu_block ">
						<a href="#" class="donate">DONATE</a>
						<div class="clear"></div>
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
							<ul class="sf-menu">
								<li class="current"><a href="index.html">Home</a></li>
								<li><a href="index-1.html">What We Do</a></li>
								<li><a href="index-2.html">Media</a></li>
								<li><a href="index-3.html">Get Involved</a></li>
								<li><a href="index-4.html">Contacts</a></li>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
				</div>
			</div>
		</header>
		<div class="fluidHeight container_12">
			<div class="sliderContainer">
				<div class="iosSlider">
					<div class="slider">
						<div class="item item1">
							<div class="inner">
								<div class="text1"><span>Join our campaigns and give <br>hope to homeless people</span></div>
							</div>
						</div>
						<div class="item item2">
							<div class="inner">
								<div class="text1"><span>Make the right choice! <br>Help those who are in need.</span></div>
							</div>
						</div>
						<div class="item item3">
							<div class="inner">
								<div class="text1"><span>Our mission is to engage more people in the fight <br> for better life of needy people</span></div>
							</div>
						</div>
					</div>
				</div>
				<div class="slideSelectors">
					<div class="item selected"></div>
					<div class="item"></div>
					<div class="item"></div>
				</div>
			</div>
		</div>
<!--==============================Content=================================-->
		<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - March 24, 2014!</div>
			<div class="container_12">
				<div class="grid_6">
					<h2>Meet Our Team</h2>
					<img src="images/page1_img1.jpg" alt="" class="img_inner fleft">
					<div class="extra_wrapper">
						<p class="col2"><a href="#">Cras facilisis, nulla vel viverra tor, leo magna sodales felis, quis </a></p>
						Proin pharetra luctus diamer scelerisque eros convallisa <br>
						<a href="#" class="btn">Learn More</a>
					</div>
					<div class="clear"></div>
				</div>
				<div class="grid_5 prefix_1">
					<h2>Our Mission</h2>
					<div class="rel1">
						<p>Following the <span class="col1"><a href="http://blog.templatemonster.com/free-website-templates/" >link</a></span> you’ll find all you wanted to know about free theme released by TemplateMonster.</p>
						Need more themes of this kind? Find a variety of premium <span class="col1"><a href="http://www.templatemonster.com/properties/topic/society-people/" rel="nofollow">society &amp; people templates</a></span> at TemplateMonster.
					</div>
					<a href="#" class="btn">Learn More</a>
				</div>
			</div>
			<div class="hor"></div>
			<div class="container_12">
				<div class="grid_3">
					<h2>Latest News</h2>
					<ul class="list">
						<li>
							<time datetime="2014-01-01">29<span>Jan</span></time>
							<div class="extra_wrapper">
								<div class="title col2"><a href="#">Vivamuagna</a></div>
								amus at magn
								malesuada fauc
							</div>
						</li>
						<li>
							<time datetime="2014-01-01">02<span>Feb</span></time>
							<div class="extra_wrapper">
								<div class="title col2"><a href="#">Dereamuagne</a></div>
								amus at magn
								malesuada faut
							</div>
						</li>
						<li>
							<time datetime="2014-01-01">20<span>Feb</span></time>
							<div class="extra_wrapper">
								<div class="title col2"><a href="#">Hovamuagrt</a></div>
								emus at mago malesuada fau
							</div>
						</li>
						<li>
							<time datetime="2014-01-01">05<span>Mar</span></time>
							<div class="extra_wrapper">
								<div class="title col2"><a href="#">Meloamuar</a></div>
								ferus at magne malesuada faui
							</div>
						</li>
					</ul>
					<blockquote class="bq1">
						<div class="title">Testimonials</div>
						<p>Nulla vel viverra auctorleo magna sodales felis, quis malesuada nibh odio ut </p>
						<div class="col2">Sandra Wood</div>
					</blockquote>
				</div>
				<div class="grid_9">
					<h2>Our Campaigns</h2>
					<section>
						<ul id="da-thumbs" class="da-thumbs">
							<li>
								<a href="#">
								<img src="images/th1.jpg" alt="" />
								<div><span>Helping Adults</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="images/th2.jpg" alt="" />
								<div><span>Helping Children</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="images/th3.jpg" alt="" />
								<div><span>Empowering Women</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="images/th4.jpg" alt="" />
								<div><span>Homes for Veterans</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="images/th5.jpg" alt="" />
								<div><span>Saving Lives</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="images/th6.jpg" alt="" />
								<div><span>Invest in Kids</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="images/th7.jpg" alt="" />
								<div><span>Healthy Nutrition</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="images/th8.jpg" alt="" />
								<div><span>Educated World</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="images/th9.jpg" alt="" />
								<div><span>Against Hunger</span></div>
								</a>
							</li>
						</ul>
					</section>
				</div>
			</div>
		</div>
		<div class="bottom_block">
			<div class="container_12">
				<div class="grid_4">
					<h3>Stay Informed</h3>
					<div class="text1">Subscribe to Our Newsletter</div>
					<form id="newsletter">
						<div class="rel">
							<div class="success">Your subscribe request has been sent!</div>
							<label class="email">
								<input type="email" value="Enter your Email" >
								<span class="error">*This is not a valid email address.</span>
							</label>
						</div>
						<a href="#" class="btn" data-type="submit">Submit</a>
					</form>
				</div>
				<div class="grid_5 prefix_3">
					<h3>Stay Connected</h3>
					<div class="text1">Follow Us on Social Media Accounts </div>
					Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit. Proin pharetra
					<div class="socials">
						<a href="#"><div class="fa fa-twitter"></div></a>
						<a href="#"><div class="fa fa-facebook"></div></a>
						<a href="#"><div class="fa fa-pinterest-square"></div></a>
						<a href="#"><div class="fa fa-google-plus"></div></a>
						<a href="#"><div class="fa fa-instagram"></div></a>
					</div>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="copy">
						Life &copy; 2014 | <a href="#">Privacy Policy</a> <br> Website designed by <a href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster.com</a>
					</div>
				</div>
			</div>
		</footer>
		<script src="js/jquery.hoverdir.js"></script>
		<script>
		$(document).ready(function() {
		 $('.iosSlider').iosSlider({
			desktopClickDrag: true,
			snapToChildren: true,
			navSlideSelector: '.sliderContainer .slideSelectors .item',
			onSlideComplete: slideComplete,
			onSliderLoaded: sliderLoaded,
			onSlideChange: slideChange,
			scrollbar: false,
			autoSlide: true,
			autoSlideTimer: 3300,
			infiniteSlider: true
		 });
		});
		function slideChange(args) {
		 $('.sliderContainer .slideSelectors .item').removeClass('selected');
		 $('.sliderContainer .slideSelectors .item:eq(' + (args.currentSlideNumber - 1) + ')').addClass('selected');
		}
		function slideComplete(args) {
		 if(!args.slideChanged) return false;
		 $(args.sliderObject).find('.text1, .text2').attr('style', '');
		 $(args.currentSlideObject).find('.text1').animate({
			right: '100px',
			opacity: '0.72'
		 }, 400, 'easeOutQuint');
		 $(args.currentSlideObject).find('.text2').delay(200).animate({
			right: '70px',
			opacity: '0.72'
		 }, 400, 'easeOutQuint');
		}
		function sliderLoaded(args) {
		 $(args.sliderObject).find('.text1, .text2').attr('style', '');
		 $(args.currentSlideObject).find('.text1').animate({
			right: '100px',
			opacity: '0.72'
		 }, 400, 'easeOutQuint');
		 $(args.currentSlideObject).find('.text2').delay(200).animate({
			right: '70px',
			opacity: '0.72'
		 }, 400, 'easeOutQuint');
		 slideChange(args);
		}
		$(function() {
				$(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );
			});
		</script>
	</body>
</html>
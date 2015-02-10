<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

	<!-- Navigation URLs -->
	<spring:url value="/" var="homeURL"/>
	<spring:url value="/objective" var="objectiveURL"/>
	<spring:url value="/gallery" var="galleryURL"/>
	<spring:url value="/family_tree" var="familyTreeURL"/>
	<spring:url value="/contacts" var="contactURL"/>
	<spring:url value="/login" var="adminLoginURL"/>
	<spring:url value="/admin/viewDetails" var="viewDetails"/>
	<spring:url value="/admin/campaign/viewAllCampaign/${user.id}" var="viewAllCampaign"/>
	<spring:url value="/j_spring_security_logout" var="adminLogout"/>

	<!-- CSS Files -->
	<spring:url value="/resources/css/form.css" var="formCSS"/>
	<spring:url value="/resources/css/thumbs.css" var="thumbsCSS"/>
	<spring:url value="/resources/css/slider.css" var="sliderCSS"/>
	<spring:url value="/resources/css/style.css" var="styleCSS"/>
	<spring:url value="/resources/css/ie.css" var="ieCSS"/>
	
	<!-- JS Files -->
	<spring:url value="/resources/js/jquery.js" var="jqueryJS"/>
	<spring:url value="/resources/js/jquery-migrate-1.2.1.js" var="migrateJS"/>
	<spring:url value="/resources/js/script.js" var="scriptJS"/>
	<spring:url value="/resources/js/superfish.js" var="superfishJS"/>
	<spring:url value="/resources/js/sForm.js" var="sformJS"/>
	<spring:url value="/resources/js/jquery.ui.totop.js" var="jqueryuiJS"/>
	<spring:url value="/resources/js/jquery.equalheights.js" var="equalheightJS"/>
	<spring:url value="/resources/js/jquery.easing.1.3.js" var="easingJS"/>
	<spring:url value="/resources/js/superfish.js" var="superfishJS"/>
	<spring:url value="/resources/js/jquery.iosslider.min.js" var="iossliderJS"/>
	<spring:url value="/resources/js/html5shiv.js" var="html5shivJS"/>
	<spring:url value="/resources/js/jquery.hoverdir.js" var="hoverdirJS"/>
	
	
	<!-- Image Files -->
	
	<spring:url value="/resources/image/favicon.ico" var="faviconICO"/>
	<spring:url value="/resources/image/logo.png" var="logoPNG"/>
	<spring:url value="/resources/image/page1_img1.jpg" var="founderPNG"/>
	
	<!-- Events images -->
	<spring:url value="/resources/image/th1.jpg" var="firstEventPNG"/>
	<spring:url value="/resources/image/th2.jpg" var="secondEventPNG"/>
	<spring:url value="/resources/image/th3.jpg" var="thirdEventPNG"/>
	<spring:url value="/resources/image/th4.jpg" var="fourthEventPNG"/>
	<spring:url value="/resources/image/th5.jpg" var="fifthEventPNG"/>
	<spring:url value="/resources/image/th6.jpg" var="sixthEventPNG"/>
	<spring:url value="/resources/image/th7.jpg" var="seventhEventPNG"/>
	<spring:url value="/resources/image/th8.jpg" var="eighthEventPNG"/>
	<spring:url value="/resources/image/th9.jpg" var="ninthEventPNG"/>
	
	
	<head>
	<title>Home</title>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="${faviconICO}">
	<link rel="shortcut icon" href="${faviconICO}" />
	<link rel="stylesheet" href="${formCSS}">
	<link rel="stylesheet" href="${thumbsCSS}">
	<link rel="stylesheet" href="${sliderCSS}">
	<link rel="stylesheet" href="${styleCSS}">
	<script src="${jqueryJS}"></script>
	<script src="${migrateJS}"></script>
	<script src="${scriptJS}"></script>
	<script src="${superfishJS}"></script>
	<script src="${sformJS}"></script>
	<script src="${jqueryuiJS}"></script>
	<script src="${equalheightJS}"></script>
	<script src="${easingJS}"></script>
	<script src="${iossliderJS}"></script>
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
	<script src="${html5shivJS}"></script>
	<link rel="stylesheet" media="screen" href="${ieCSS}">
	<![endif]-->
	</head>
	<body class="page1" id="top">
<!--==============================header=================================-->
		<header>
			<div class="container_12">
				<div style="float: right;">Welcome : <c:out value="${user.firstName} ${user.lastName}" /></div>
				<div class="grid_12">
					<h1>
						<a href="home.jsp">
							<img src="${logoPNG}" alt="Your Happy Family">
						</a>
					</h1>
					<div class="menu_block ">


						<div class="clear"></div>
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
							<ul class="sf-menu">
								<li class="current"><a href="${homeURL}">Home</a></li>
								<li><a href="${objectiveURL}">Our Objectives</a></li>
								<li><a href="${galleryURL}">Media &amp; Gallery</a></li>
								<li><a href="${familyTreeURL}">Family Tree</a></li>
								<li><a href="${contactURL}">Contacts</a></li>
								<li><a href="${viewAllCampaign}">Campaign</a></li>
								<li><a href="${viewDetails}">Account Details</a></li>
								<li><a href="${adminLogout}">Logout</a></li>
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
					<img src="${founderPNG}" alt="" class="img_inner fleft">
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
								<img src="${firstEventPNG}" alt="" />
								<div><span>Helping Adults</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="${secondEventPNG}" alt="" />
								<div><span>Helping Children</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="${thirdEventPNG}" alt="" />
								<div><span>Empowering Women</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="${fourthEventPNG}" alt="" />
								<div><span>Homes for Veterans</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="${fifthEventPNG}" alt="" />
								<div><span>Saving Lives</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="${sixthEventPNG}" alt="" />
								<div><span>Invest in Kids</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="${seventhEventPNG}" alt="" />
								<div><span>Healthy Nutrition</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="${eighthEventPNG}" alt="" />
								<div><span>Educated World</span></div>
								</a>
							</li>
							<li>
								<a href="#">
								<img src="${ninthEventPNG}" alt="" />
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
		<script src="${hoverdirJS}"></script>
		<script>
		$(document).ready(function() {
			
			console.log("Hello");
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
			
			console.log("Hello2");
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

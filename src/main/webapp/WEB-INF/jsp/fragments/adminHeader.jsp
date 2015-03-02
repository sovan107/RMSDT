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
	<spring:url value="/resources/css/style.css" var="styleCSS"/>
	<spring:url value="/resources/css/ie.css" var="ieCSS"/>
	<c:if test="${param.callingPage == 'home'}">
		<spring:url value="/resources/css/thumbs.css" var="thumbsCSS"/>
		<spring:url value="/resources/css/slider.css" var="sliderCSS"/>
	</c:if>
	<c:if test="${param.callingPage == 'allCampaign'}">
		<spring:url value="/resources/css/slider.css" var="sliderCSS"/>
	</c:if>
	
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
	<spring:url value="/resources/js/html5shiv.js" var="html5shivJS"/>
	<c:if test="${param.callingPage == 'home' }">
		<spring:url value="/resources/js/jquery.iosslider.min.js" var="iossliderJS"/>
		<spring:url value="/resources/js/jquery.hoverdir.js" var="hoverdirJS"/>
	</c:if>
	<c:if test="${param.callingPage == 'allCampaign' }">
		<spring:url value="/resources/js/jquery.iosslider.min.js" var="iossliderJS"/>
	</c:if>
	
	<!-- Image Files -->
	
	<spring:url value="/resources/image/favicon.ico" var="faviconICO"/>
	<spring:url value="/resources/image/logo.png" var="logoPNG"/>
	
	<c:if test="${param.callingPage == 'home' }">
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
	</c:if>
	
	<head>
	<title>Home</title>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="${faviconICO}">
	<link rel="shortcut icon" href="${faviconICO}" />
	
	<c:if test="${param.callingPage == 'home' }">
		<link rel="stylesheet" href="${thumbsCSS}">
		<link rel="stylesheet" href="${sliderCSS}">
	</c:if>
	<c:if test="${param.callingPage == 'allCampaign' }">
		<link rel="stylesheet" href="${sliderCSS}">
	</c:if>
	
	<link rel="stylesheet" href="${formCSS}">
	<link rel="stylesheet" href="${styleCSS}">
	<script src="${jqueryJS}"></script>
	<script src="${migrateJS}"></script>
	<script src="${scriptJS}"></script>
	<script src="${superfishJS}"></script>
	<script src="${sformJS}"></script>
	<script src="${jqueryuiJS}"></script>
	<script src="${equalheightJS}"></script>
	<script src="${easingJS}"></script>
	<c:if test="${param.callingPage == 'home' }">
		<script src="${iossliderJS}"></script>
	</c:if>
	<c:if test="${param.callingPage == 'allCampaign' }">
		<script src="${iossliderJS}"></script>
	</c:if>
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
		<c:if test="${param.callingPage == 'home' }">
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
	</c:if>
	
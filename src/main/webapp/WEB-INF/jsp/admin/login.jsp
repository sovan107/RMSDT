<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>

<spring:url value="/resources/css/form.css" var="formCSS" />
<spring:url value="/resources/css/style.css" var="styleCSS" />
<spring:url value="/resources/css/ie.css" var="ieCSS" />
<spring:url value="/resources/css/touchTouch.css" var="touchCSS" />

<!-- JS Files -->
<spring:url value="/resources/js/jquery.js" var="jqueryJS" />
<spring:url value="/resources/js/jquery-migrate-1.2.1.js"
	var="migrateJS" />
<spring:url value="/resources/js/script.js" var="scriptJS" />
<spring:url value="/resources/js/superfish.js" var="superfishJS" />
<spring:url value="/resources/js/sForm.js" var="sformJS" />
<spring:url value="/resources/js/jquery.ui.totop.js" var="jqueryuiJS" />
<spring:url value="/resources/js/jquery.equalheights.js"
	var="equalheightJS" />
<spring:url value="/resources/js/jquery.easing.1.3.js" var="easingJS" />
<spring:url value="/resources/js/touchTouch.jquery.js" var="touchJS" />
<spring:url value="/resources/js/html5shiv.js" var="html5shivJS" />
<spring:url var="loginUrl" value="/j_spring_security_check" />

<!-- Image Files -->

<spring:url value="/resources/image/favicon.ico" var="faviconICO" />
<spring:url value="/resources/image/logo.png" var="logoPNG" />

<title>Get Involved</title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="${faviconICO}">
<link rel="shortcut icon" href="${faviconICO}" />
<link rel="stylesheet" href="${formCSS}">
<link rel="stylesheet" href="${touchCSS}">
<link rel="stylesheet" href="${styleCSS}">

<script src="${jqueryJS}"></script>
<script>
	$(document).ready(function() {
		$().UItoTop({
			easingType : 'easeOutQuart'
		});
		$('.gallery a.gal').touchTouch();
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
<body class="" id="top">
	<!--==============================header=================================-->
	<header>
		<div class="container_12">
			<div class="grid_12">
				<h1>
					<a href="index.html"> <img src="${logoPNG}" alt="RMSDT">
					</a>
				</h1>
				<div class="menu_block ">
					<a href="#" class="logout">Home</a>
				</div>
			</div>
		</div>

	</header>
	<!--==============================Content=================================-->
	<div class="content">

		<div class="container_12">
			<div class="grid_6">
				<h2>Only Admin Access</h2>

				<div class="extra_wrapper">
					<br> <br> <br>
					<p class="col2">This page can only be accessed by admin of the
						website</p>
					If you need an access please contact Admin <br>
				</div>
				<div class="clear"></div>
			</div>

			<div class="grid_5 prefix_1">
				<h2>Admin Login</h2>
				<div class="formholder">
					<div class="randompad">
						<fieldset>
							<form action="${loginUrl}" name="form" method="post">
								<label name="email">Username</label>
								<input type="text" name="j_username" value="" placeholder="Username" />
								<label name="password">Password</label>
								<input type="password" name="j_password" placeholder="Password" />
								<input type="submit" name="submit" value="LOGIN" />
							</form>
						</fieldset>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!--==============================footer=================================-->
	<footer>
		<div class="container_12">
			<div class="grid_12">
				<div class="copy">
					RMSDT &copy; 2014 | Cuttack <br> Website
					designed by Developers @ RMSDT
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
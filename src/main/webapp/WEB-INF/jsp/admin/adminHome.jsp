<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<jsp:include page="../fragments/userHeader.jsp"/>

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

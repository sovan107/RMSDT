	<jsp:include page="fragments/userHeader.jsp">
		<jsp:param value="contacts" name="callingPage" />
		<jsp:param value="Contacts" name="title" />
	</jsp:include>
	<!--==============================Content=================================-->
	<div class="content">
		<div class="ic">More Website Templates @ TemplateMonster.com -
			March 24, 2014!</div>
		<div class="container_12">
			<div class="grid_12">
				<h2>Find Us</h2>
				<div class="map">
					<figure class="">
						<iframe
							src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
					</figure>
					<div class="grid_4 alpha">
						<h2>Address:</h2>
						<address>
							<span class="fa fa-home"></span> 138 Atlantis Ln <br>
							Kingsport <br> Illinois 121164
						</address>
					</div>
					<div class="grid_4">
						<h2>Phones:</h2>
						<div class="m_phone">
							<div class="fa fa-phone"></div>
							+1 800 559 6580
						</div>
						<div class="m_phone">
							<div class="fa fa-print"></div>
							+1 504 889 9898138
						</div>
					</div>
					<div class="grid_4 omega">
						<h2>Email:</h2>
						<a href="#"><span class="fa fa-envelope-o"></span>
							mail@demolink.org</a>
					</div>
					<div class="clear"></div>
				</div>
				<h2>Contact Form</h2>
				24/7 support is available for all <span class="col1"><a
					href="http://www.templatemonster.com/website-templates.php"
					rel="nofollow">premium</a></span> themes produced by TemplateMonster. Free
				themes go without it. <br> If you want a help in customization
				of the chosen freebie, address to <span class="col1"><a
					href="http://www.templatetuning.com/" rel="nofollow">TemplateTuning.</a></span>
				<form id="form">
					<div class="success_wrapper">
						<div class="success-message">Contact form submitted</div>
					</div>
					<label class="name"> <input type="text" placeholder="Name:"
						data-constraints="@Required @JustLetters" /> <span
						class="empty-message">*This field is required.</span> <span
						class="error-message">*This is not a valid name.</span>
					</label> <label class="email"> <input type="text"
						placeholder="Email:" data-constraints="@Required @Email" /> <span
						class="empty-message">*This field is required.</span> <span
						class="error-message">*This is not a valid email.</span>
					</label> <label class="subject"> <input type="text"
						placeholder="Subject:" data-constraints="@Required @JustLetters" />
						<span class="empty-message">*This field is required.</span> <span
						class="error-message">*This is not a valid phone.</span>
					</label> <label class="message"> <textarea placeholder="Message:"
							data-constraints='@Required @Length(min=20,max=999999)'></textarea>
						<span class="empty-message">*This field is required.</span> <span
						class="error-message">*The message is too short.</span>
					</label>
					<div>
						<div class="clear"></div>
						<div class="btns">
							<a href="#" data-type="reset" class="btn">Clear</a> <a href="#"
								data-type="submit" class="btn">Send</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!--==============================footer=================================-->
	<jsp:directive.include file="fragments/footer.jsp" />
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<jsp:include page="../fragments/userHeader.jsp">
	<jsp:param value="all_campaign" name="callingPage" />
</jsp:include>

<sec:authorize ifAnyGranted="ROLE_SUPER_ADMIN">
	<spring:url value="/admin/campaign/viewAllCampaignList" var="campaignListURL" />
</sec:authorize>

<sec:authorize access="isAnonymous()">
	<spring:url value="/common/viewAllCampaignList" var="campaignListURL" />
</sec:authorize>


<!--==============================Header=================================-->

<div class="fluidHeight container_12">
	<div class="sliderContainer">
		<div class="iosSlider">
			<div class="slider">
				<c:forEach var="campaign" items="${campaigns}">
					<spring:url value="/common/campaignImage/${campaign.id}"
						var="campaignImageUrl" />
					<div class="item">
						<div class="inner"
							style="background-image:url(${campaignImageUrl});">
							<div class="text1">
								<span>${campaign.campaignName}<br>${campaign.campaignDescription}</span>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="slideSelectors">
			<c:forEach var="campaign" items="${campaigns}">
				<div class="item"></div>
			</c:forEach>
		</div>
	</div>
</div>
<div>
	<a href="${campaignListURL}" class="btn">Show Campaign List</a>
</div>
<br>
<br>
<!--==============================Footer=================================-->
<jsp:include page="../fragments/footer.jsp">
	<jsp:param value="home" name="footerFor" />
</jsp:include>
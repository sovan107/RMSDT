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

<spring:url value="/common/viewAllCampaignList" var="campaignListURL" />

<!--==============================Header=================================-->
<div class="content">
	<div class="ic">More Website Templates @ TemplateMonster.com -
		March 24, 2014!</div>
	<div class="container_12">
		<div class="gallery">
			<c:forEach var="campaign" items="${campaigns}" varStatus="count">
				<spring:url value="/common/campaignImage/${campaign.id}"
					var="campaignImageUrl" />
				<div class="grid_3">
					<h2>${campaign.campaignName}</h2>
					<a href="images/big1.jpg" class="gal"> <img
						src="${campaignImageUrl}" alt=""
						style="height: 218px; width: 218px;" />
					</a>
					<spring:url
						value="/common/viewCampaign/${campaign.user.id}/${campaign.id}"
						var="editCampaignUrl" />
					<a href="${editCampaignUrl}" class="btnLong">Learn More</a> <br />
					<sec:authorize ifAnyGranted="ROLE_SUPER_ADMIN">
						<spring:url value="/admin/campaign/editCampaign/${campaign.id}"
							var="editCampaignUrl" />
						<spring:url
							value="/admin/event/addEvent/${campaign.id}"
							var="addEventUrl" />
						<spring:url value="/common/viewAllEvent/${campaign.id}"
							var="viewAllEventUrl" />
						<spring:url
							value="/admin/campaign/deleteCampaign/${campaign.id}"
							var="deleteCampaign" />

						<a href="${editCampaignUrl}" class="btnMedium">Edit Camp</a>
						<a href="${addEventUrl}" class="btnMedium">Add Event</a>
						<br />
						<a href="${viewAllEventUrl}" class="btnLong">View All Event</a>
						<br />
						<a href="${deleteCampaign}" class="btnLong">Delete Campaign</a>
					</sec:authorize>
				</div>
				<c:if test="${count.count % 4 == 0}">
					<div class="clear"></div>
				</c:if>
			</c:forEach>
		</div>
	</div>
	<div>
		<sec:authorize ifAnyGranted="ROLE_SUPER_ADMIN">
			<spring:url value="/admin/campaign/newCampaign/${user.id}"
				var="addNewCampaign" />
			<a href="${addNewCampaign}" class="btn">New Campaign</a>
		</sec:authorize>
	</div>
</div>
<!--==============================Footer=================================-->
<jsp:include page="../fragments/footer.jsp">
	<jsp:param value="all_campaign" name="footerFor" />
</jsp:include>
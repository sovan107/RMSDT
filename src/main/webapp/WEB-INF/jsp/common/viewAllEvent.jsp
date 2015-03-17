<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags"%>


<jsp:include page="../fragments/userHeader.jsp">
	<jsp:param value="viewAllEvent" name="callingPage" />
</jsp:include>

<div class="content">
		<div class="campaign">
		<h2 class="campaignHeader">Campaign Name : ${campaign.campaignName}</h2>
		<c:forEach var="event" items="${campaign.events}">
				
			<div class="events" style='background-color:
				<c:if test="${event.eventStatus == -1}">#618DD0</c:if>
				<c:if test="${event.eventStatus == 0}">#60bf93</c:if>
				<c:if test="${event.eventStatus == 1}">#e14f42</c:if>
			'>
			
				<div id="eventName">${event.eventName}</div>
				<div class="date">Starts : <joda:format value="${event.eventStartDate}" pattern="yyyy/MM/dd" /></div>
				<div class="date">Ends : <joda:format value="${event.eventEndDate}" pattern="yyyy/MM/dd" /></div> 
				<div id="eventDescription"><div>Description:</div> <br>${event.eventDescription}</div>
				<br/>
				<div id="eventName"> Address</div>
				<div class="addEventAddress">
					<sec:authorize ifAnyGranted="ROLE_SUPER_ADMIN">
						<spring:url value="/admin/event/addAddress/${event.id}"
							var="addAddressUrl"></spring:url>
						<a href="${addAddressUrl}">New Address</a>
					</sec:authorize>
				</div>
				<div id="eventDescription">
				<div class="container_12">
				
				<div class="gallery">
					<c:forEach var="address" items="${event.addresses}" varStatus="count">
						<div class="grid_3">
								<table> 
									<tr><td>House no &nbsp;</td><td>:</td> <td>${address.houseNumber}</td></tr>
									<tr><td>Street	&nbsp;     <td>:</td></td> <td>${address.street}</td></tr>
									<tr><td>City	&nbsp;</td> <td>:</td><td>${address.city}</td></tr>
									<tr><td>State 	&nbsp;</td> <td>:</td><td>${address.state}</td></tr>
									<tr><td>Country &nbsp;</td> <td>:</td><td>${address.country}</td></tr>
									<tr><td>Zip code&nbsp;</td> <td>:</td><td>${address.postalCode}</td></tr>
								</table>
						</div>
				<c:if test="${count.count % 4 == 0}">
					<div class="clear"></div>
					<br>
				</c:if>
			</c:forEach>
		</div>
	</div>
	</div>
		</div>
		<br>
	</c:forEach>
	</div>
	</div>
<!--==============================Footer=================================-->
<jsp:include page="../fragments/footer.jsp">
	<jsp:param value="viewAllEvent" name="footerFor" />
</jsp:include>
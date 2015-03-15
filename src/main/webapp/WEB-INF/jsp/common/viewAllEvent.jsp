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

<table border="1">
	<tr>
		<th>Campaign Name : ${campaign.campaignName}</th>
	</tr>
	<c:forEach var="event" items="${campaign.events}">

		<tr>
			<td>
				Event Name : ${event.eventName} 
				&nbsp;&nbsp;&nbsp;
				<b>[
				<c:if test="${event.eventStatus == -1}">Not Started</c:if>
				<c:if test="${event.eventStatus == 0}">In Progress</c:if>
				<c:if test="${event.eventStatus == 1}">Event Closed</c:if>
				]</b>
				
				<br/>
				Event Description : ${event.eventDescription} <br/>
				Event Start Date : <joda:format value="${event.eventStartDate}" pattern="yyyy/MM/dd" /> <br/>
				Event End Date :<joda:format value="${event.eventEndDate}" pattern="yyyy/MM/dd" /> <br/>
			</td>
			

			<td>
			<b>Addresses :</b> 
				<c:forEach var="address" items="${event.addresses}">
					<div style="border-color: black; border-style: solid;">
						House no: ${address.houseNumber}<br/>
						Street	: ${address.street}<br/>
						City	: ${address.city}<br/>
						State	: ${address.state}<br/>
						Country	: ${address.country}<br/>
						Zip code: ${address.postalCode}<br/>
					</div>
					<br/>
				</c:forEach>
			</td>
			
			<td>
			<sec:authorize ifAnyGranted="ROLE_SUPER_ADMIN">
				<spring:url value="/admin/event/addAddress/${event.id}" var="addAddressUrl"></spring:url>
				<a href="${addAddressUrl}">New Address</a>
			</sec:authorize>
			</td>
		</tr>
	</c:forEach>
	</table>
<!--==============================Footer=================================-->
<jsp:include page="../fragments/footer.jsp">
	<jsp:param value="viewAllEvent" name="footerFor" />
</jsp:include>
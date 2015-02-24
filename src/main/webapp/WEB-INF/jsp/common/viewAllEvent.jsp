<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View All Events</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>Campaign Name : ${campaign.campaignName}</th>
		</tr>
		<c:forEach var="event" items="${campaign.events}">

			<tr>
				<td>
					Event Name : ${event.eventName} <br/>
					Event Description : ${event.eventDescription} <br/>
					Event Start Date : <joda:format value="${event.eventStartDate}" pattern="yyyy/MM/dd" /> <br/>
					Event End Date :<joda:format value="${event.eventEndDate}" pattern="yyyy/MM/dd" /> <br/>
				</td>
				
				<%-- 
				<td>
				<b>Addresses :</b> 
					<c:forEach var="address" items="${event.addresses}">
						<div>
							House no: ${address.houseNumber}
						</div>
					</c:forEach>
				</td>
				--%>
				
				<td>
					<spring:url value="/admin/event/addAddress/${event.id}" var="addAddressUrl"></spring:url>
					<a href="${addAddressUrl}">New Address</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
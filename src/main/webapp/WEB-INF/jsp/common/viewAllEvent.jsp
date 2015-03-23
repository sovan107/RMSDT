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

<spring:url value="/resources/image/mapPin.png" var="mapImageUrl" />

<jsp:include page="../fragments/userHeader.jsp">
	<jsp:param value="viewAllEvent" name="callingPage" />
</jsp:include>

<!-- Adding for dialog -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

<!-- Map related ------------- -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBxAdEf0RDMZ5CMqObGPNTOtXAiYbfz9M0">
</script>
<!-- Map related ----------------------- -->

<script type="text/javascript">
	var map = null;
	
	jQuery(document).ready(function() {
		// On Map element click
		$(document).on('click', '.showMap', function(){
			var lat = $(this).attr('lat');
			var lng = $(this).attr('lng');
			
			// Return if one is null
			if(lat == null || lng == null){
				return;
			}
			
	        googleMap("mapDialog", lat, lng);
	        $('#mapDialog').dialog('open');
	        return false;
			
	    });
		
		 var mapDialog = $("#mapDialog").dialog({
		        modal: true,
		        width: 500,
		        height: 500,
		        autoOpen: false,
		        title: "Map Service",
		        resizeStop: function (event, ui) { google.maps.event.trigger(map, 'resize') },
		        open: function (event, ui) { google.maps.event.trigger(map, 'resize'); },
	 	});
	
	});
	
	function googleMap(selector, lat, lng) {
	    var myLatlng = new google.maps.LatLng(lat, lng);
	    
	    if (!map) {
	        var myOptions = {
	            zoom: 15,
	            center: myLatlng,   
	            mapTypeId: google.maps.MapTypeId.ROADMAP
	        }
	        map = new google.maps.Map(document.getElementById(selector), myOptions);
	        
	        var populationOptions = {
	            strokeColor: "#990000",
	            strokeOpacity: 0.5,
	            strokeWeight: 1,
	            fillColor: "#FF0000",
	            fillOpacity: 0.15,
	            map: map,
	            center: myLatlng,
	            radius: 50
	        };
	        cityCircle = new google.maps.Circle(populationOptions);
	    } else {
	        map.setCenter(myLatlng);
	    }	    
	}
	
</script>

<div id="mapDialog">  </div>

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
						<c:if test="${event.eventStatus != 1}">
							<spring:url value="/admin/event/addAddress/${event.id}"
								var="addAddressUrl"></spring:url>
							<a href="${addAddressUrl}">New Address</a>
						</c:if>
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
									<tr><td>
										<c:if test="${not empty address.lat && not empty address.lng}">
											<input type="image" class="showMap" lat="${address.lat}" lng="${address.lng}" src="${mapImageUrl}" />
										</c:if>
									</td></tr>
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
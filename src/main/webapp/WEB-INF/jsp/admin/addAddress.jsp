<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags"%>

<jsp:include page="../fragments/userHeader.jsp">
	<jsp:param value="campaign" name="callingPage" />
</jsp:include>

<spring:url value="/resources/image/mapPin.png" var="mapImageUrl" />

<spring:url value="/webjars/jquery/2.0.3/jquery.js" var="jQuery" />
<script src="${jQuery}"></script>

<spring:url value="/webjars/jquery-ui/1.10.3/ui/jquery.ui.datepicker.js"
	var="jQueryUiDatePicker" />
<script src="${jQueryUiDatePicker}"></script>

<!-- jquery-ui.js file is really big so we only load what we need instead of loading everything -->
<spring:url value="/webjars/jquery-ui/1.10.3/ui/jquery.ui.core.js"
	var="jQueryUiCore" />
<script src="${jQueryUiCore}"></script>

<script type="text/javascript">
	 var contexPath = "<%=request.getContextPath()%>";
</script>

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

		$('.validation').hide();			
		
		// On submit
		$(document).on('click', '.submit', function(){
			var formId = this.id;
				
			// Get form data all enabled and disabled fields.
			var formData = $("#form" + formId).serialize();
			$('input[disabled]').each( function() {
              formData = formData + '&' + $(this).attr('name') + '=' + $(this).val();
          	});
				
			// Ajax submit.
			$.ajax({
				type : "POST",
				url : contexPath + "/admin/event/addAddress/${event.id}",
				data : formData,
				success : function(response) {
					if(response.status == "success"){
						var addId;
						// Json response.
						addId = response.id;
					
						var hdnId = "hdn" + formId;
					
						if($("#" + hdnId).length == 0) {
							// This hidden ID wil help for edit purpose.
							$("#form" + formId).append( "<input type='hidden' id='" + hdnId + "' value='" + addId + "' name='ajaxId' />" );
							$("#lbl" + formId).text("Edit");
							$('#errLbl' + formId).hide();
						}
					}else{
						var errorInfo = "";
						
						// Loop through all available errors.
						for(i =0 ; i < response.errors.length ; i++){
						   errorInfo += "<br>" + (i + 1) +". " + response.errors[i].defaultMessage;
						}
						$('#errLbl' + formId).html("Please correct following errors: " + errorInfo);
						$('#errLbl' + formId).show('slow');
					}
				},
				error : function(e) {
					alert(e);
				}
			});
		});
		
		$("#newAdd").click(function() {
			var formLen = $("form.addressForm").length;
			$.ajax({
				type : "GET",
				url : contexPath + "/admin/event/getAddressForm/"+formLen,
				success : function(response) {
					
					// Json response.
					var form = response.form;
					$("#form" + formLen).after(form);
					$('#errLbl' + (formLen + 1)).hide();
				},
				error : function(e) {
					alert('Error: ' + e);
				}
			});
		});
		
		// Map functionality----------------------
		 var mapDialog = $("#mapDialog").dialog({
	        modal: true,
	        width: 500,
	        height: 500,
	        autoOpen: false,
	        title: "Map Service",
	        resizeStop: function (event, ui) { google.maps.event.trigger(map, 'resize') },
	        open: function (event, ui) { google.maps.event.trigger(map, 'resize'); },
        

    	});

	    $("#showMap").on("click", function () {
	        googleMap("mapDialog", 20.2700, 85.8400);
	        $('#mapDialog').dialog('open');
	        return false;
	    });
		
		//------------------------------------------

		
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
	    
		google.maps.event.addListener(map, 'click', function(event) {
			$("#lat").val(event.latLng.lat());
			$("#lng").val(event.latLng.lng());
			
		})
	    
	}
</script>

<!-- jquery-ui.css file is not that big so we can afford to load it -->
<spring:url value="/webjars/jquery-ui/1.10.3/themes/base/jquery-ui.css"
	var="jQueryUiCss" />
<link href="${jQueryUiCss}" rel="stylesheet"></link>
<spring:url value="/admin/event/viewAllEvent/${event.campaign.id}" var="viewAllEventUrl" />

</head>

<body>

<div id="mapDialog">
    
</div>


	<label id="newAdd" class="addAddress">New Address</label>
	<label id="bte" class="backToEvent">
		<a href="${viewAllEventUrl}" >Back To Events</a>
	</label>
	
	
	<form id="form1" class="form-basic-grey addressForm">
		<h1>Add address for event 
      		<span>${event.eventName}</span>
		</h1>
		<label id="errLbl1" class="validation">
		</label>
		<label>
	        <span>House no. :</span>
	        <input type="text" name="houseNumber"/>
    	</label>
    	
    	<label>
	        <span>Street :</span>
	        <input type="text" name="street"/>
    	</label>
    	
    	<label>
	        <span>City :</span>
	        <input type="text" name="city"/>
    	</label>
    	
    	<label>
	        <span>State :</span>
	        <input type="text" name="state"/>
    	</label>
    	
    	<label>
	        <span>Country :</span>
	        <input type="text" name="country"/>
    	</label>
    	
    	<label>
	        <span>Pin Code :</span>
	        <input type="text" name="postalCode"/>
    	</label>
    	<label>
	        <span id="location">Location :</span>
	        <input id="lat" type="text" name="lat" disabled="disabled" style="width: 300px;"/>
	        <input id="lng" type="text" name="lng" disabled="disabled"/>
	        <img id="showMap" alt="Not Found" src="${mapImageUrl}" />
    	</label>
    	<br/><br/>
    	<div id="1" class="submit">
			<label id="lbl1" class="btn">Save</label>
		</div>  	
	</form>
<jsp:include page="../fragments/footer.jsp">
	<jsp:param value="home" name="footerFor" />
</jsp:include>
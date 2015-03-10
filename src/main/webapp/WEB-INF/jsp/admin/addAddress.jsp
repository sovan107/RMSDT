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

<script type="text/javascript">
	jQuery(document).ready(function() {
			
			$('.validation').hide();
			
			$(document).on('click', '.submit', function(){ 
			var formId = this.id;
			$.ajax({
				type : "POST",
				url : contexPath + "/admin/event/addAddress/${event.id}",
				data : $("#form" + formId).serialize(),
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

	});
</script>

<!-- jquery-ui.css file is not that big so we can afford to load it -->
<spring:url value="/webjars/jquery-ui/1.10.3/themes/base/jquery-ui.css"
	var="jQueryUiCss" />
<link href="${jQueryUiCss}" rel="stylesheet"></link>

</head>

<body>
	<label id="newAdd" class="addAddress">New Address</label>
	
	<form id="form1" class="form-basic-grey addressForm">
		<h1>Add address for event 
      		<span>This is a new event 123</span>
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
    	
    	<div id="1" class="submit">
			<label id="lbl1" class="btn">Save</label>
		</div>  	
	</form>
<jsp:include page="../fragments/footer.jsp">
	<jsp:param value="home" name="footerFor" />
</jsp:include>
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

		//$(".submit").click(function() {
			$(document).on('click', '.submit', function(){ 
			var formId = this.id;
			$.ajax({
				type : "POST",
				url : contexPath + "/admin/event/addAddress/${event.id}",
				data : $("#form" + formId).serialize(),
				success : function(response) {
					
					alert($("#form" + formId).serialize());
					
					// we have the response
					alert("Just saving withoud validation");
					
					var addId;
					// Json response.
					addId = response.id;
					alert(addId);
					
					var hdnId = "hdn" + formId;
					
					
					if($("#" + hdnId).length == 0) {
						alert("add");
						$("#form" + formId).append( "<input type='hidden' id='" + hdnId + "' value='" + addId + "' name='ajaxId' />" );
						$("#lbl" + formId).text("Edit");
					}
				},
				error : function(e) {
					alert('Error: ' + e);
				}
			});
		});
		
		$("#newAdd").click(function() {
			var formLen = $("form").length;
			$.ajax({
				type : "GET",
				url : contexPath + "/admin/event/getAddressForm/"+formLen,
				success : function(response) {
					
					// Json response.
					var form = response.form;
					alert(form);
					alert("#form"+formLen);
					$("#form"+(formLen - 1)).after(form);
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
	
	<form id="form1" class="form-basic-grey">
		<h1>Add address for event 
      		<span>This is a new event 123</span>
		</h1>
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
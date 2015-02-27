<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>

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
					
					$("#form"+formLen).after(form);
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

	<div>
		<b>
			<ul>Add address for event : ${event.eventName}
			</ul>
		</b>
	</div>
	<form id="form1">
		<table id="tbl1">
			<tr>
				<td style="background-color: olive;">
					<label id="newAdd">New Address</label>
				</td>
				<td></td>
			</tr>
			<tr>
				<td>House no. :</td>
				<td><b><input type="text" name="houseNumber"/></b>
			</tr>
			<tr>
				<td>Street. :</td>
				<td><b><input  type="text" name="street" /></b>
			</tr>
			<tr>
				<td>City. :</td>
				<td><b><input type="text" name="city" /></b>
			</tr>
			<tr>
				<td>State. :</td>
				<td><b><input type="text" name="state" /></b>
			</tr>
			<tr>
				<td>Country. :</td>
				<td><b><input type="text" name="country" /></b>
			</tr>
			<tr>
				<td>Pincode. :</td>
				<td><b><input type="text" name="postalCode" /></b>
			</tr>
			<tr>
				<td></td>
				<td>
					<div id="1" class="submit" style="background-color: olive;">
						<label id="lbl1">Save</label>
					</div>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
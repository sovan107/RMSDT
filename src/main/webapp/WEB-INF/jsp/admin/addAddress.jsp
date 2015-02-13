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

		$(".submit").click(function() {
			var formId = this.id;
			//var houseNumber = $('#houseNumber' + formId).val();
			//var street = $('#street' + formId).val();
			//var city = $('#city' + formId).val();
			//var state = $('#state' + formId).val();
			//var country = $('#country' + formId).val();
			//var postalCode = $('#postalCode' + formId).val();

			$.ajax({
				type : "POST",
				url : contexPath + "/admin/event/addAddress/${event.id}",
				//data: "houseNumber=" + houseNumber + "&street=" + street + "&city=" + city + "&state=" + state + "&country=" + country + "&postalCode=" + postalCode,
				data : $("#form" + formId).serialize(),
				success : function(response) {
					// we have the response
					alert("do not care now");
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
				<td>House no. :</td>
				<td><b><input type="text" name="houseNumber" /></b>
			</tr>
			<tr>
				<td>Street. :</td>
				<td><b><input type="text" name="street" /></b>
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
				<td><div id="1" class="submit" style="background-color: olive;">
						<label>Sumbit</label>
					</div></td>
			</tr>
		</table>
	</form>
	<form id="form1">
		<table id="tbl1">
			<tr>
				<td>House no. :</td>
				<td><b><input type="text" name="houseNumber" /></b>
			</tr>
			<tr>
				<td>Street. :</td>
				<td><b><input type="text" name="street" /></b>
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
				<td><div id="1" class="submit" style="background-color: olive;">
						<label>Sumbit</label>
					</div></td>
			</tr>
		</table>
	</form>
</body>
</html>
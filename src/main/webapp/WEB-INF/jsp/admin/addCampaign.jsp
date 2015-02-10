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
	jQuery(document).ready(function() {
		$("#dob").datepicker({
			dateFormat : 'yy/mm/dd'
		});
	});
</script>

<!-- jquery-ui.css file is not that big so we can afford to load it -->
<spring:url value="/webjars/jquery-ui/1.10.3/themes/base/jquery-ui.css"
	var="jQueryUiCss" />
<link href="${jQueryUiCss}" rel="stylesheet"></link>

</head>

<body>
	<c:choose>
		<c:when test="${campaigns['new']}">
			<c:set var="headerText" value="Add Campaign" />
			<c:set var="btnText" value="Save" />
		</c:when>
		<c:otherwise>
			<c:set var="headerText" value="Update Campaign" />
			<c:set var="btnText" value="Update" />
		</c:otherwise>
	</c:choose>

	<div><ul><b>${headerText}</b></ul></div>
	
	<form:form modelAttribute="campaigns" method="post"
		class="form-horizontal" id="add-campaign-form"
		enctype="multipart/form-data">

		<table>
			<tr>
				<td>Name :</td>
				<td><b><form:input path="campaignName" /></b> <form:errors
						path="campaignName" /></td>
			</tr>

			<tr>
				<td>Description :</td>
				<td><b><form:input path="campaignDescription" /></b> <form:errors
						path="campaignDescription" /></td>
			</tr>

			<tr>
				<td>Upload Image :</td>
				<td><input type="file" name="image" />
			</tr>

			<tr>
				<td></td>
				<td><button type="submit" value="Submit">${btnText}</button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
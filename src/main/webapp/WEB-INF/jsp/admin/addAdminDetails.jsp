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

<spring:url value="/admin/editDetails" var="editAdminDetails" />

<body>
	<form:form modelAttribute="user" method="post">
		<table>
			<tr>
				<td>First Name :</td>
				<td>
					<b><form:input path="firstName" /></b>
					<form:errors path="firstName" />
				</td>
			</tr>

			<tr>
				<td>Last Name :</td>
				<td>
					<b><form:input path="lastName" /></b>
					<form:errors path="lastName" />
				</td>
			</tr>

			<tr>
				<td>Email :</td>
				<td><b>
					<form:input path="email" /></b>
					<form:errors path="email" />
				</td>
			</tr>
			<tr>
				<td>New Password :</td>
				<td>
					<b><form:password path="password" showPassword="true"/></b>
					<form:errors path="password" />
				</td>
			</tr>
			<tr>
				<td>Phone :</td>
				<td>
					<b><form:input path="phone" /></b>
					<form:errors path="phone" />	
				</td>
			</tr>

			<tr>
				<td>Dob :</td>
				<td>
					<b><form:input path="dob" id="dob" placeholder="yyyy/MM/dd"/></b>
					<form:errors path="dob" />	
				</td>
			</tr>
			<tr>
				<td></td>
				<td><button type="submit" value="Sumit">Submit</button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
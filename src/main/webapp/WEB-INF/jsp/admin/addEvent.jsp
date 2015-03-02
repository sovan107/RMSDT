<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<jsp:include page="../fragments/userHeader.jsp">
	<jsp:param value="addEvent" name="callingPage" />
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
	jQuery(document).ready(function() {
		$("#esd").datepicker({
			dateFormat : 'yy/mm/dd'
		});
		
		$("#eed").datepicker({
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
		<c:when test="${events['new']}">
			<c:set var="headerText" value="Add Event" />
			<c:set var="btnText" value="Save" />
		</c:when>
		<c:otherwise>
			<c:set var="headerText" value="Update Event" />
			<c:set var="btnText" value="Update" />
		</c:otherwise>
	</c:choose>

	<div>
		<ul>
			<b>${headerText}</b>
		</ul>
	</div>

	<form:form modelAttribute="events" method="post"
		class="form-horizontal" id="add-event-form">

		<table>
			<tr>
				<td>Name :</td>
				<td><b><form:input path="eventName" /></b> <form:errors
						path="eventName" /></td>
			</tr>

			<tr>
				<td>Description :</td>
				<td><b><form:textarea path="eventDescription" /></b> <form:errors
						path="eventDescription" /></td>
			</tr>

			<tr>
			<td>Event Start Date :</td>
				<td><b><form:input path="eventStartDate" id="esd"
							placeholder="yyyy/MM/dd" /></b> <form:errors path="eventStartDate" /></td>
			</tr>
				<tr>
				<td>Event End Date :</td>
				<td><b><form:input path="eventEndDate" id="eed"
							placeholder="yyyy/MM/dd" /></b> <form:errors path="eventEndDate" /></td>
			</tr>

			<tr>
				<td></td>
				<td><button type="submit" value="Submit">${btnText}</button></td>
			</tr>
		</table>
	</form:form>
	<!--==============================Footer=================================-->
<jsp:include page="../fragments/footer.jsp">
	<jsp:param value="home" name="footerFor" />
</jsp:include>
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
	<jsp:param value="campaign" name="callingPage" />
</jsp:include>

<spring:url value="/common/viewAllCampaignList" var="campaignListURL"/>

<!--==============================Header=================================-->

<spring:url value="/webjars/jquery/2.0.3/jquery.js" var="jQuery" />
<spring:url value="/webjars/jquery-ui/1.10.3/ui/jquery.ui.datepicker.js" var="jQueryUiDatePicker" />
<spring:url value="/webjars/jquery-ui/1.10.3/ui/jquery.ui.core.js" var="jQueryUiCore" />

<!-- jquery-ui.js file is really big so we only load what we need instead of loading everything -->
<script src="${jQuery}"></script>
<script src="${jQueryUiDatePicker}"></script>
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
		<c:when test="${events['new']}">
			<c:set var="headerText" value="Add Event" />
			<c:set var="btnText" value="Save" />
		</c:when>
		<c:otherwise>
			<c:set var="headerText" value="Update Event" />
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
				<td><b><form:textarea path="campaignDescription" /></b> <form:errors
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

<!--==============================Footer=================================-->

<jsp:include page="../fragments/footer.jsp">
	<jsp:param value="home" name="footerFor" />
</jsp:include>
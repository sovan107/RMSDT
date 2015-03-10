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
		<c:when test="${campaigns['new']}">
			<c:set var="headerText" value="Add New Campaign" />
			<c:set var="headerTextDetail" value="Plese fill the fields to add a campaign" />
			<c:set var="btnText" value="Save" />
		</c:when>
		<c:otherwise>
			<c:set var="headerText" value="Update Campaign" />
			<c:set var="headerTextDetail" value="Plese update the fields for this Campaign" />
			<c:set var="btnText" value="Update" />
		</c:otherwise>
	</c:choose>
	
	<form:form modelAttribute="campaigns" method="post"
		class="form-basic-grey" id="add-campaign-form"
		enctype="multipart/form-data">
		
		<h1>${headerText}
      		<span>${headerTextDetail}</span>
		</h1>
		
		<label>
	        <span>Campaign Name :</span>
	        <form:input path="campaignName" id="name" type="text" name="name" placeholder="Enter campaign name"/>
	        <form:errors path="campaignName" cssClass="error" element="div"/>
    	</label>
		<label>
	        <span>Description :</span>
	        <form:textarea path="campaignDescription" id="description" name="description" placeholder="Description about the campaign"/>
	        <form:errors path="campaignDescription" cssClass="error" element="div"/>
	    </label>
    	<label>
	        <span>Upload Image :</span>
	        <input type="file" name="image" />
	         <form:errors path="campaignImage" cssClass="error" element="div"/>
   		</label>
   		<br>
	    <label>
	    	<span>&nbsp;</span> 
	        <input type="submit" value="${btnText}"/>
    	</label>
	</form:form>
	

<!--==============================Footer=================================-->

<jsp:include page="../fragments/footer.jsp">
	<jsp:param value="home" name="footerFor" />
</jsp:include>
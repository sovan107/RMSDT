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
			<c:set var="headerText" value="Add New Event" />
			<c:set var="headerTextDetail" value="Plese fill the fields to add an event" />
			<c:set var="btnText" value="Save" />
		</c:when>
		<c:otherwise>
			<c:set var="headerText" value="Update Event" />
			<c:set var="headerTextDetail" value="Please update all information related to event" />
			<c:set var="btnText" value="Update" />
		</c:otherwise>
	</c:choose>

	<form:form modelAttribute="events" method="post"
		class="form-basic-grey" id="add-event-form">
		
	
	<h1>${headerText}
      		<span>${headerTextDetail}</span>
	</h1>
	
    <label>
        <span>Event Name :</span>
        <form:input path="eventName" id="name" type="text" name="name" placeholder="Enter event name"/>
      	<form:errors path="eventName" />
    </label>
    
    <label>
        <span>Event Start Date :</span>
        <form:input path="eventStartDate" id="esd" type="text" name="esd" placeholder="yyyy/MM/dd"/>
        <form:errors path="eventStartDate" />
    </label>
    
    <label>
        <span>Event End Date :</span>
        <form:input path="eventEndDate" id="eed" type="text" name="eed" placeholder="yyyy/MM/dd" />
        <form:errors path="eventEndDate" />
    </label> 
     <label>
        <span>Description :</span>
        <form:textarea path="eventDescription" id="description" name="description" placeholder="Description about the event"/>
        <form:errors path="eventDescription" />
    </label>    
     <label>
        <span>&nbsp;</span> 
        <input type="submit" value="${btnText}"/>
    </label>    
</form:form>


	<!--==============================Footer=================================-->
<jsp:include page="../fragments/footer.jsp">
	<jsp:param value="home" name="footerFor" />
</jsp:include>
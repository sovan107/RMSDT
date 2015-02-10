<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<spring:url value="/admin/campaign/newCampaign/${user.id}"
	var="addNewCampaign" />

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View All Campaign</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>Image</th>
			<th>Campaign</th>
			<th>Description</th>
			<th></th>
		</tr>
		<c:forEach var="campaign" items="${campaigns}">
		<spring:url value="/common/campaignImage/${campaign.id}" var="campaignImageUrl"/>
		<spring:url value="/admin/campaign/editCampaign/${campaign.user.id}/${campaign.id}" var="editCampaignUrl"/>

			<tr>
				<td><img src="${campaignImageUrl}" /></td>
				<td>${campaign.campaignName}</td>
				<td>${campaign.campaignDescription}</td>
				<td><a href="${editCampaignUrl}">Edit Campaign</a></td>
			</tr>

		</c:forEach>
	</table>
	<div>
		<a href="${addNewCampaign}">New Campaign</a>
	</div>

</body>
</html>
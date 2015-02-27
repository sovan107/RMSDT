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
</head>

<spring:url value="/admin/editDetails" var="editAdminDetails" />

<body>
	<table>

		<tr>
			<td>First Name :</td>
			<td><b><c:out value="${user.firstName}" /></b></td>
		</tr>

		<tr>
			<td>Last Name :</td>
			<td><b><c:out value="${user.lastName}" /></b></td>
		</tr>

		<tr>
			<td>Email :</td>
			<td><b><c:out value="${user.email}" /></b></td>
		</tr>

		<tr>
			<td>Phone :</td>
			<td><b><c:out value="${user.phone}" /></b></td>
		</tr>

		<tr>
			<td>Dob :</td>
			<td><b><joda:format value="${user.dob}" pattern="yyyy-MM-dd" /></b></td>
		</tr>
		<tr>
			<td></td>
			<td><a href="${editAdminDetails}">Edit</a></td>
		</tr>


	</table>
</body>
</html>
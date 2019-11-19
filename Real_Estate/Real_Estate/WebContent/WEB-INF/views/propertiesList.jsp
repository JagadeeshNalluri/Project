<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>All Properties</title>
</head>
<body>
<h1>List Employees</h1>
<h3><a href="add.html">Add More Employee</a></h3>

<c:if test="${!empty employees}">
	<table align="left" border="1">
		<tr>
			<th>Property ID</th>
			<th>Property Type  </th>
			<th>Property BHK</th>
			<th>city</th>
			<th>state</th>
			<th>price</th>
			<th>status</th>
			
		</tr>

		<c:forEach items="${properties}" var="property">
			<tr>
				<td><c:out value="${property.id}"/></td>
				<td><c:out value="${property.type}"/></td>
				<td><c:out value="${property.bhk}"/></td>
				<td><c:out value="${property.city}"/></td>
				<td><c:out value="${property.state}"/></td>
				<td><c:out value="${property.price}"/></td>
				<td><c:out value="${property.status}"/></td>
				
			</tr>
		</c:forEach>
	</table>
</c:if>
</body>
</html>
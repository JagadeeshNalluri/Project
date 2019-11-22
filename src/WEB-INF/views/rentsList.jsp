<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>All Rents</title>
</head>
<body>
<h1>List Rents</h1>
<h3><a href="radd.html">Add More Rent</a></h3>

<c:if test="${!empty rents}">
	<table align="left" border="1">
		<tr>
			<th>Rent ID</th>
			<th>Rent Type  </th>
			<th>Rent BHK</th>
			<th>city</th>
			<th>state</th>
			<th>price</th>
			<th>status</th>
			
		</tr>

		<c:forEach items="${rents}" var="rent">
			<tr>
				<td><c:out value="${rent.id}"/></td>
				<td><c:out value="${rent.type}"/></td>
				<td><c:out value="${rent.bhk}"/></td>
				<td><c:out value="${rent.city}"/></td>
				<td><c:out value="${rent.state}"/></td>
				<td><c:out value="${rent.price}"/></td>
				<td><c:out value="${rent.status}"/></td>
				
			</tr>
		</c:forEach>
	</table>
</c:if>
</body>
</html>
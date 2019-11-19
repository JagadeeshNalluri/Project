<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>All Feedbacks</title>
</head>
<body>
<h1>List Feedbacks</h1>
<h3><a href="add.html">Add More Feedback</a></h3>

<c:if test="${!empty feedbacks}">
	<table align="left" border="1">
		<tr>
			<th>Feedback ID</th>
			<th>Feedback Name</th>
			<th>Feedback Email</th>
			<th>Feedback Comment</th>
			
		</tr>

		<c:forEach items="${feedbacks}" var="feedback">
			<tr>
				<td><c:out value="${feedback.id}"/></td>
				<td><c:out value="${feedback.name}"/></td>
				<td><c:out value="${feedback.email}"/></td>
				<td><c:out value="${feedback.comment}"/></td>
			</tr>
		</c:forEach>
	</table>
</c:if>
</body>
</html>
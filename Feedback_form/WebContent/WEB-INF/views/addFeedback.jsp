<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Feedback Form Handling</title>
	</head>
	<body>
		<h2>Add Feedback Data</h2>
		<form:form method="POST" action="/Feedback_form/save.html">
	   		<table>
			    <tr>
			        <td><form:label path="id">Feedback ID:</form:label></td>
			        <td><form:input path="id" value="${feedback.id}" /></td>
			    </tr>
			    <tr>
			        <td><form:label path="name">Feedback Name:</form:label></td>
			        <td><form:input path="name" value="${feedback.name}"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="email">Feedback Email:</form:label></td>
			        <td><form:input path="email" value="${feedback.email}"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="comment">Feedback Comment:</form:label></td>
			        <td><form:input path="comment" value="${feedback.comment}"/></td>
			    </tr>
			    
			    <tr>
			      <td colspan="2"><input type="submit" value="Submit"/></td>
		      </tr>
			</table> 
		</form:form>
		
  <c:if test="${!empty feedbacks}">
		<h2>List Feedbacks</h2>
	<table align="left" border="1">
		<tr>
			<th>Feedback ID</th>
			<th>Feedback Name</th>
			<th>Feedback Email</th>
			<th>Feedback Comment</th>
			<th>Actions on Row</th>
		</tr>

		<c:forEach items="${feedbacks}" var="feedback">
			<tr>
				<td><c:out value="${feedback.id}"/></td>
				<td><c:out value="${feedback.name}"/></td>
				<td><c:out value="${feedback.email}"/></td>
				<td><c:out value="${feedback.comment}"/></td>
				<td align="center"><a href="edit.html?id=${feedback.id}">Edit</a> | <a href="delete.html?id=${feedback.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring MVC Form Handling</title>
	</head>
	<body>
		<h2>Add Rent Data</h2>
		<form:form method="POST" action="/Main/rsave.html">
	   		<table>
			    <tr>
			        <td><form:label path="id">Rent ID:</form:label></td>
			        <td><form:input path="id" value="${Rent.id}" /></td>
			    </tr>
			    <tr>
			        <td><form:label path="type">Rent Type:</form:label></td>
			        <td><form:input path="type" value="${Rent.type}"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="bhk">Rent BHK:</form:label></td>
			        <td><form:input path="bhk" value="${Rent.bhk}"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="city">Rent City:</form:label></td>
			        <td><form:input path="city" value="${Rent.city}"/></td>
			    </tr>
			    
			    <tr>
			        <td><form:label path="state">Rent State:</form:label></td>
                    <td><form:input path="state" value="${Rent.state}"/></td>
			    </tr>
			    
			     <tr>
			        <td><form:label path="price">Rent Price:</form:label></td>
                    <td><form:input path="price" value="${Rent.price}"/></td>
			    </tr>
			    
			     <tr>
			        <td><form:label path="status">Rent Status:</form:label></td>
                    <td><form:input path="status" value="${Rent.status}"/></td>
			    </tr>
			    
			    <tr>
			      <td colspan="2"><input type="submit" value="Submit"/></td>
		      </tr>
			</table> 
		</form:form>
		
  <c:if test="${!empty rents}">
		<h2>List Rent</h2>
	<table align="left" border="1">
		<tr>
			<th>Rent ID</th>
			<th>Rent Type  </th>
			<th>Rent BHK</th>
			<th>city</th>
			<th>state</th>
			<th>price</th>
			<th>status</th>
			<th>Actions on Row</th>
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
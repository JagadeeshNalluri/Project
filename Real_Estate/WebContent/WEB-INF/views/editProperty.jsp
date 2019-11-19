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
		<h2>Add Property Data</h2>
		<form:form method="POST" action="/Real_Estate/save.html">
	   		<table>
			    <tr>
			        <td><form:label path="id">Property ID:</form:label></td>
			        <td><form:input path="id" value="${property.id}" /></td>
			    </tr>
			         <td>Property Type :</td>
                     <td><form:select path="type">
                <form:option  value="house" label="House" />
                <form:option path="type" value="villa" label="villa" />
                <form:option path="type" value="Flat" label="Flat" /></td>
                  </form:select>  
</tr>
			    <tr>
			        <td><form:label path="bhk">Property BHK:</form:label></td>
			        <td><form:input path="bhk" value="${property.bhk}"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="city">Property City:</form:label></td>
			        <td><form:input path="city" value="${property.city}"/></td>
			    </tr>
			    
			    <tr>
			        <td><form:label path="state">Property State:</form:label></td>
                    <td><form:input path="state" value="${property.state}"/></td>
			    </tr>
			    
			     <tr>
			        <td><form:label path="price">Property Price:</form:label></td>
                    <td><form:input path="price" value="${property.price}"/></td>
			    </tr>
			    
			    <%--  <tr>
			        <td><form:label path="status">Property Status:</form:label></td>
                    <td><form:input path="status" value="${property.status}"/></td>
			    </tr> --%>
			    <tr>
			    <td> Status:   </td>
                <td>  Available<form:radiobutton path="status" value="Available"/>  
                       Not Available<form:radiobutton path="status" value="Not Available"/>  </td>
                 </tr>

			    
			    <tr>
			      <td colspan="2"><input type="submit" value="Submit"/></td>
		      </tr>
			</table> 
		</form:form>
		
  <c:if test="${!empty properties}">
		<h2>List Property</h2>
	<table align="left" border="1">
		<tr>
			<th>Property ID</th>
			<th>Property Type  </th>
			<th>Property BHK</th>
			<th>city</th>
			<th>state</th>
			<th>price</th>
			<th>status</th>
			<th>Actions on Row</th>
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
				<td align="center"><a href="edit.html?id=${property.id}">Edit</a> </td>
			</tr>
		</c:forEach>
	</table>
</c:if>
	</body>
</html>
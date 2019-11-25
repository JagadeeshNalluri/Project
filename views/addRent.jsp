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
			      <td>Property Type :</td>
                     <td><form:select path="type">
                     <form:option  value="house" label="House" />
                     <form:option path="type" value="villa" label="villa" />
                     <form:option path="type" value="Flat" label="Flat" /></td>
                       </form:select>  
			    </tr>
			    <tr>
			        <td>BHK:</td>
                     <td><form:select path="bhk">
                <form:option  value="1BHK" label="1BHK" />
                <form:option path="bhk" value="2BHK" label="2BHK" />
                <form:option path="bhk" value="3BHk" label="3BHK" />
                 <form:option path="bhk" value="Other" label="Other" />
                  </form:select> </td>
			    </tr>
			    <tr>
			       <td>City:</td>
                     <td><form:select path="city">
                <form:option  value="Mumbai" label="Mumbai" />
                <form:option path="city" value="Pune" label="Pune" />
                <form:option path="city" value="Banglore" label="Banglore" />
                 <form:option path="city" value="Hydrabad" label="Hydrabad" />
                  </form:select> </td>
			    </tr>
			    
			    <tr>
			         <td>State:</td>
                     <td><form:select path="state">
                <form:option  value="Maharashtra" label="Maharashtra" />
                <form:option path="state" value="Karnataka" label="Karnataka" />
                <form:option path="state" value="Telangana" label="Telangana" />
                 </form:select> </td>
			    </tr>
			    
			     <tr>
			        <td><form:label path="price">Rent Price:</form:label></td>
                    <td><form:input path="price" value="${Rent.price}"/></td>
			    </tr>
			    
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
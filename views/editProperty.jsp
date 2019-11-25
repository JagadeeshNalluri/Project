<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>REAL ESTATE</title>
	</head>
	<body>
		<h2>Add Property Data</h2>
		<form:form method="POST" action="/Main/save.html">
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
                  </form:select> 
			    </tr>
			    
			    <tr>
			        <td><form:label path="state">Property State:</form:label></td>
                    <td><form:input path="state" value="${property.state}"/></td>
			    </tr>
			    
			     <tr>
			        <td><form:label path="price">Property Price:</form:label></td>
                    <td><form:input path="price" value="${property.price}"/></td>
			    </tr>
			    
			 
			    <tr>
			    <td> Status:   </td>
                <td>  Available<form:radiobutton path="status" value="Available"/>  
                       Not Available<form:radiobutton path="status" value="Not Available"/>  </td>
                 </tr>
                  <tr>
                <td> Car Parking:   </td>
                <td>  Available<form:radiobutton path="carparking" value="Available"/>  
                       Not Available<form:radiobutton path="carparking" value="Not Available"/>  </td>
                 </tr>
			    
			    <tr>
                <td> Swimming Pool:   </td>
                <td>  Available<form:radiobutton path="swimmingpool" value="Available"/>  
                       Not Available<form:radiobutton path="swimmingpool" value="Not Available"/>  </td>
                 </tr>    
                 
                  <tr>
                  
                <td> Water Supply:   </td>
                <td>  Available<form:radiobutton path="water" value="Available"/>  
                       Not Available<form:radiobutton path="water" value="Not Available"/>  </td>
                 </tr>
                 
                  <tr>
                <td> Fitness Center:   </td>
                <td>  Available<form:radiobutton path="fitnesscenter" value="Available"/>  
                       Not Available<form:radiobutton path="fitnesscenter" value="Not Available"/>  </td>
                 </tr>
                 
                  <tr>
                <td> Elevator:   </td>
                <td>  Available<form:radiobutton path="elevator" value="Available"/>  
                       Not Available<form:radiobutton path="elevator" value="Not Available"/>  </td>
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
			<th>Car parking</th>
			<th>Swimming Pool</th>
			<th>Elevator</th>
			<th>Water Supply</th>
			<th>Fitness Center</th>
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
			    <td><c:out value="${property.carparking}"/></td>
			    <td><c:out value="${property.swimmingpool}"/></td>
				<td><c:out value="${property.elevator}"/></td>
				<td><c:out value="${property.water}"/></td>
				<td><c:out value="${property.fitnesscenter}"/></td>
				<td align="center"><a href="edit.html?id=${property.id}">Edit</a> </td>
			</tr>
		</c:forEach>
	</table>
</c:if>
	</body>
</html>
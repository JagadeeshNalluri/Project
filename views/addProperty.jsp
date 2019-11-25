<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring MVC Form Handling</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
         <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
	</head>
	<body>
		<h2>Add Property Data</h2>
		<form:form method="POST" action="/Main1/save.html">
	   		<table>
			    <tr>
			        <td><form:label path="id">Property ID:</form:label></td>
			        <td><form:input path="id" value="${property.id}" /></td>
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
                 <form:option path="bhk" value="Other" label="Other" /></td>
                  </form:select> 
			        
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
                <form:option path="state" value="Telangana" label="Telangana" /></td>
                 </form:select> 
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
                 
			    
			    	
			      <td colspan="2"><input type="submit" value="Submit"/></td>
		      </tr>
			</table> 
		</form:form>
		
		<c:if test="${!empty properties}">
<c:forEach items="${properties}" var="property">
   <div class="card" style="width: 18rem;">
  <img src="img/${property.id}.jpg" class="card-img-top" alt="image not found">
  <div class="card-body">
    <h5 class="card-title">Property Id: <c:out value="${property.id}"/></h5>
      <p class="card-text">Property Type: <c:out value="${property.type}"/></p>
      <p class="card-text">Property BHK: <c:out value="${property.bhk}"/></p>
      <p class="card-text">City: <c:out value="${property.city}"/></p>
      <p class="card-text">State: <c:out value="${property.state}"/></p>
      <p class="card-text">Price: <c:out value="${property.price}"/></p>
      <p class="card-text">Status: <c:out value="${property.status}"/></p>
      <p class="card-text">car Parking: <c:out value="${property.carparking}"/></p>
      <p class="card-text">swimming pool: <c:out value="${property.swimmingpool}"/></p>
      <p class="card-text">Water: <c:out value="${property.water}"/></p>
      <p class="card-text">Elevator: <c:out value="${property.elevator}"/></p>
      <p class="card-text">Fitness Center: <c:out value="${property.fitnesscenter}"/></p>
   </div>
 
  <div class="card-body">
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
   
  </div>
   <br><br>

</c:forEach>
</div>
	
</c:if>
</body>
</html>
		
	
		
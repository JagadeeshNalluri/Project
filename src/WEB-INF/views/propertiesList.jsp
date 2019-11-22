<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>All Properties</title>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>SpringMVC with Hibernate </title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
         <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
        
     <link rel="stylesheet" type="text/css" href="/Resources/css/Admin.css">
     <style>
     body {
  background-image: url(../images/adminb.jpg");
  background-repeat: no-repeat, repeat;
  background-color: #cccccc;
}
     </style>
   
</head>
<body>
<h1>List of Properties</h1>
<h3><a href="add.html">Add More Property</a></h3>

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


 


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Real Estate </title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
         <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
        
     <link rel="stylesheet" type="text/css" href="admin.css">
     
     <style >
      @import url('https://fonts.googleapis.com/css?family=Germania+One|Lobster');
     body {
    width: 100vw;
    height: 100vh;
    margin: 0;
    padding: 0;
    background-image: url("Resources/images/abg.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}
 
section {
    display: flex;
    justify-content: center;
}
 
nav {
    background-color: rgba(253, 253, 253, 0.78);
    width: 100%;
    height: 10vh;
    display: flex;
    align-items: center;                                                 ;
    justify-content: left;
    position:fixed;
}
 
.menu {
    font-size: 2vw;
    padding: 0vh 2vw 0vh 2vw;
    text-decoration: none;
    font-family: 'Germania One';
    color: forestgreen;
    }
    
    .menuitem {
    text-decoration: none;
    padding: 1vw 4vh 1vw 4vh;
    font-family: 'Lobster';
    font-size: 1.5vw;
    color: black;
}
 
.menuitem:hover {
    background-color: rgba(247, 245, 245, 0.47);
}
 
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 14vw;
    min-height: 20vh;
    padding: 12px 16px;
    z-index: 1;
    text-align: center;
    background-color: rgba(253, 246, 246, 0.6);
    border-radius: 5%;
}
 
.dropdown-content a {
    display: inline-block;
}
 
.dropdown {
    position: relative;
    display: inline-block;
}
 
.dropdown:hover .dropdown-content {
    display: block;
}
     </style>

  </head>
  <body>
    <section>
        <nav>
        <div class="dropdown">
                <a class="menu">List Of Properties</a>
                <div class="dropdown-content">
            <a class="menuitem" href="properties.html">List for Buy</a>
             <a class="menuitem" href="rents.html">List for Rent</a>
             </div>
             </div>
             
              <div class="dropdown">
                <a class="menu">Add Properties</a>
                <div class="dropdown-content">
            <a class="menuitem" href="add.html"> Buy</a>
             <a class="menuitem" href="radd.html"> Rent</a>
             </div>
             </div>
            
            <div class="dropdown">
                <a class="menu">Delete Properties</a>
                <div class="dropdown-content">
            <a class="menuitem" href="delete.html"> Buy</a>
             <a class="menuitem" href="rdelete.html"> Rent</a>
             </div>
             </div>
             
             <div class="dropdown">
                <a class="menu">Edit Properties</a>
                <div class="dropdown-content">
            <a class="menuitem" href="add1.html"> Buy</a>
             <a class="menuitem" href="radd1.html"> Rent</a>
             </div>
             </div>
            
            
           </nav>
           </section>
    
   
  </body>
</html>
 


















<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>REAL ESTATE </title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
         <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
        
     <link rel="stylesheet" type="text/css" href="admin.css">
     
     
     <style >
      @import url('https://fonts.googleapis.com/css?family=Germania+One|Lobster');
     body {
    width: 100vw;
    height: 100vh;
    margin: 0;
    padding: 0;
    background-image: url("Resources/images/adminbg.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}
 
section {
    display: flex;
    justify-content: center;
}
 
nav {
    background-color: rgba(253, 253, 253, 0.78);
    width: 80vw;
    height: 10vh;
    display: flex;
    align-items: center;
    justify-content: center;
}
 
.menu {
    font-size: 2vw;
    padding: 0vh 2vw 0vh 2vw;
    text-decoration: none;
    font-family: 'Germania One';
    color: forestgreen;
    }
     </style>

  </head>
  <body>
    <section>
        <nav>
            <a class="menu" href="properties.html">List of Properties</a>
             <a class="menu" href="add.html">Add Properties</a>
              <a class="menu" href="delete.html">Delete Properties</a>
               <a class="menu" href="add1.html">Edit Properties</a>
               <a class = "menu" href = "rindex.html">Rent Properties</a>
    
   
  </body>
</html> --%>
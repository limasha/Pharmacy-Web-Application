<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Add Medicine</title>
 <link rel="stylesheet" href="/css/main.css">
 <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>

<jsp:include page="header.jsp" />

 <div class="container">
  <spring:url value="/pharmacy/addMedicine" var="addURL" />
  <h2 class="main-title">Add Medicine</h2><br>
  
  <form:form  modelAttribute="medicineForm"  method="post" action="${addURL}" cssClass="form" >
   <form:hidden path="id"/>
   <div class="form-group">
    <label>Medicine Name</label>
    <form:input path="medicine_name" cssClass="form-control" id="medicine_name" />
   </div>
   <div class="form-group">
    <label>Description</label>
    <form:textarea path="description" cssClass="form-control" id="description" />
   </div>
   <div class="form-group">
    <label>Form</label>
    <form:select path="form" cssClass="form-control" id="form">
    	<form:option value="Capsule" label="Capsule" />
    	<form:option value="Cream" label="Cream" />
    	<form:option value="Drop" label="Drop" />
        <form:option value="Injection" label="Injection" />
        <form:option value="Liquid" label="Liquid" />
    	<form:option value="Tablet" label="Tablet" />        
    </form:select>
   </div>
   <div class="form-group">
    <label>Unit Price</label>
    <form:input path="unit_price" cssClass="form-control" id="unit_price" />
   </div> 
   <div class="form-group">
    <label>Qty</label>
    <form:input path="qty" cssClass="form-control" id="qty" />
   </div> 
   
   <br><br> 
   <button type="submit" class="btn btn-success">Add Medicine</button>
   
   <spring:url value="/pharmacy/list/" var="listURL" />
   <a class="btn btn-dark" href="${listURL}" role="button">Go Store</a>
  </form:form>
</div>
  
<jsp:include page="footer.jsp" />
  
</body>
</html>

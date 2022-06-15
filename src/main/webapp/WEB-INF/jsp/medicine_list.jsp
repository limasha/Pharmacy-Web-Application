<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Medicine List</title>
 <link rel="stylesheet" href="/css/main.css">
 <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
 
 <script type="text/javascript">
  function clearField(){
	  window.location = '/pharmacy/list/';
  }
</script>
</head>
<body>

<jsp:include page="header.jsp" />

<div class="container">
 <h2 class="main-title">Medicine List</h2>
 <br><br>
 
 <spring:url value="/pharmacy/list/" var="searchURL" />
 <form action="${searchURL}">
   <div class="row">
   <div class="col-sm-2">
      <label>Medicine Name</label>
   </div>
   <div class="col-sm-4">
      <input type="text" class="form-control col-sm-12" name="keyword">
   </div>
   <div class="col-sm-4">
      <button type="submit" class="btn btn-success">Search</button> &nbsp;&nbsp;
      <button type="button" class="btn btn-primary" onclick="clearField()">All Medicines</button>
   </div>
   
   </div>
 </form>

 
 <br><br>
 
  <table class="table table-striped">
   <thead class="thead-dark">
    <th scope="row">Medicine ID</th>
    <th scope="row">Medicine Name</th>
    <th scope="row">Description</th>
    <th scope="row">Form</th>
    <th scope="row">Unit Price</th>
    <th scope="row">Qty</th>
    <th scope="row">Update</th>
    <th scope="row">Delete</th>
   </thead>
   <tbody>
    <c:forEach items="${medicineList}" var="medicine" >
     <tr>
      <td>${medicine.id}</td>
      <td>${medicine.medicine_name}</td>
      <td>${medicine.description}</td>
      <td>${medicine.form}</td>
      <td>${medicine.unit_price}</td>
      <td>${medicine.qty}</td>
      <td>
       <spring:url value="/pharmacy/editMedicine/${medicine.id}" var="editURL" />
       <a class="btn btn-info" href="${editURL}" role="button" >Update</a>
      </td>
      <td>
       <spring:url value="/pharmacy/deleteMedicine/${medicine.id}" var="deleteURL" />
       <a class="btn btn-danger" href="${deleteURL}" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  <br>
  <spring:url value="/pharmacy/addMedicine/" var="addURL" />
  <a class="btn btn-success" href="${addURL}" role="button" >Add New Medicine</a>
 </div>
 
 <jsp:include page="footer.jsp" />
 
</body>
</html>


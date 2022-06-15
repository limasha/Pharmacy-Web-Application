<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
 <link rel="stylesheet" href="/css/main.css">
 <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
<div class="header">
<div class="site-logo border">Pharma</div>
<div>
<ul class="nav header-nav">
 <li class="sub-nav">
    <spring:url value="/pharmacy/index/" var="indexURL" />
    <a href="${indexURL}">Home</a>
 </li>
 
 <li class="sub-nav">
    <spring:url value="/pharmacy/list/" var="listURL" />
    <a href="${listURL}">Store</a>
 </li>
 
 <li class="sub-nav"><a href="#">About</a></li>
 <li class="sub-nav"><a href="#">Contact</a></li>
</ul>

<ul class="nav register-nav">
 <li class="sub-nav-register"><a href="#">Login</a></li>
 <li class="sub-nav-register"><a href="#">Register</a></li>
</ul>
</div>
</div>

<br><br>
</body>
</html>
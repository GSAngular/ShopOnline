<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css"/>
<spring:url var="js" value="/resources/js"/>
<spring:url var="images" value="/resources/images"/>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

  <head>  

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Online - ${title}</title>
     <script>
     window.menu='${title}';
     </script>
    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    <!-- Theam botstrap -->
      <link href="${css}/bootstrap-lumen.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}/myapp.css" rel="stylesheet">

  </head>

  <body>
   <div class="wrapper">
    <!-- Navigation -->
    <%@include file="./shared/navbar.jsp" %>
        
    
    <!-- Page container -->
    <div class="content">
    <!-- Loading the home content -->
    <c:if test="${userClickHome == true }">
   <%@include file="home.jsp" %>
   </c:if>
  
    <!-- Loading only when user click About  -->
    <c:if test="${userClickAbout == true }">
   <%@include file="about.jsp" %>
   </c:if>
   
     <!-- Loading only when user click Contact  -->
    <c:if test="${userClickContact == true }">
   <%@include file="contact.jsp" %>
   </c:if>
   
   
     <!-- Loading only when user click all products or category products  -->
    <c:if test="${userClickAllProducts == true or userClickCategoryProducts ==true}">
   <%@include file="listProduct.jsp" %>
   </c:if>
  
   </div><!-- page content close -->
  
  
    <!-- Footer -->
    <%@include file="./shared/footer.jsp" %>
   
    <!-- Bootstrap core JavaScript -->
    <script src="${js}/jquery.js"></script>
    <script src="${js}/bootstrap.min.js"></script>
    <!-- Self coded javascript -->
      <script src="${js}/myapp.js"></script>
  </div><!-- Wrapper class close -->
  </body> 

</html>

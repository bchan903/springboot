<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.82.0">
    <title>Java Coffee 구독</title>

   <!-- Bootstrap core CSS -->
	<link href="<c:url value='/css/bootstrap.min.css'/>" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="<c:url value='/css/company.css'/>" rel="stylesheet">
  </head>
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check" viewBox="0 0 16 16">
    <title>Check</title>
    <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
  </symbol>
</svg>

<div class="container py-3">
   <header class="d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom">
    <a href="/web" class="d-flex align-items-center text-dark text-decoration-none">
      <svg xmlns="http://www.w3.org/2000/svg" width="40" height="32" fill="indigo" class="bi bi-cup-fill" viewBox="0 0 16 16">
  		<path d="M1 2a1 1 0 0 1 1-1h11a1 1 0 0 1 1 1v1h.5A1.5 1.5 0 0 1 16 4.5v7a1.5 1.5 0 0 1-1.5 1.5h-.55a2.5 2.5 0 0 1-2.45 2h-8A2.5 2.5 0 0 1 1 12.5V2zm13 10h.5a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.5-.5H14v8z"/>
	 </svg>
      <span class="fs-4">Java Coffee</span>
    </a>

    <nav class="d-inline-flex mt-2 mt-md-0 ms-md-auto">
      <a class="me-3 py-2 text-dark text-decoration-none" href="<c:url value='/' />">홈 이동</a>
    </nav>
  </header>

  <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">
    
<div class="container">


  <main>
  	   <h4 class="mb-3">상품 조회</h4>

      <div class="table-responsive">
       <table class="table">

      <thead class="thead-light">
        <tr>
          <th scope="col">코드</th>
          <th scope="col">상품명</th>
          <th scope="col">설명</th>
          <th scope="col">기간</th>
          <th scope="col">단가</th>
          <th scope="col">용량</th>
          <th scope="col">옵션1</th>
          <th scope="col">옵션2</th>
          <th scope="col">옵션3</th>
        </tr>
      </thead>
      <tbody>
      	<c:forEach items="${prdList}" var="product">
	        <tr>
	            <td><a href="<c:url value='selectProduct/${product.prdNo}'/>">${product.prdNo}</a></td>
	            <td>${product.prdName}</td>
	            <td>${product.prdDesc}</td>
	            <td>${product.prdPeriod}</td>
	            <td>${product.prdPrice}</td>
	            <td>${product.prdSize}</td>
	            <td>${product.prdOpt1}</td>
	            <td>${product.prdOpt2}</td>
	            <td>${product.prdOpt3}</td>
	        </tr>
        </c:forEach>
  		</tbody>
	</table>
	</div>

  </main>

  <footer class="pt-4 my-md-5 pt-md-5 border-top">
    <div class="row">
      <div class="col-12 col-md">
<!--         <img class="mb-2" src="../assets/brand/bootstrap-logo.svg" alt="" width="24" height="19"> -->
        <small class="d-block mb-3 text-muted">&copy; Java Coffee Company</small>
      </div>

  </footer>

    </div>
  </body>
  
</html>

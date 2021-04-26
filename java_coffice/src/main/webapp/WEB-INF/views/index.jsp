<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.82.0">
    <title>Java Coffee</title>

   <!-- Bootstrap core CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">

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
    <link href="css/company.css" rel="stylesheet">
  </head>
  <body>
    
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
    
    	<c:if test="${empty sessionScope.sid }" >	            	
    		<a class="me-3 py-2 text-dark text-decoration-none" href="<c:url value='/loginForm'/>">로그인</a>
			<a class="me-3 py-2 text-dark text-decoration-none" href="<c:url value='/joinForm'/>">회원가입</a>
     	</c:if> 
   		<c:if test="${not empty sessionScope.sid }" >
   			<a class="me-3 py-2 text-dark text-decoration-none" href="<c:url value='/logout' />">${sessionScope.sid } 님,</a> 
   			
   			<c:if test="${sessionScope.srole eq 'admin'}">
   				<a class="me-3 py-2 text-dark text-decoration-none" href="<c:url value='/orderList'/>">주문관리</a>
   				<a class="me-3 py-2 text-dark text-decoration-none" href="<c:url value='/productList'/>">상품관리</a>
   			</c:if>
   			
   		</c:if>
    
    </nav>
  </header>

  <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
    <h1 class="display-4 fw-normal">Java Coffee 구독</h1>
    <p class="fs-5 text-muted">지금 부터 매달 새로운 원두를 신선하게 받아 보세요.</p>
  </div>

  <main>
    <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <c:set var="i" value="0"/>
      <c:forEach items="${prdMain}" var="product">
	      <div class="col">
	        <c:choose>
	        	<c:when test="${i!=2}">
	        		<div class="card mb-4 rounded-3 shadow-sm">
	          		<div class="card-header py-3">
	         	</c:when>
	         	<c:otherwise>
	         		<div class="card mb-4 rounded-3 shadow-sm border-primary">
          	   		<div class="card-header py-3 text-white bg-primary border-primary">
	         	</c:otherwise>
	         </c:choose>
	            <h4 class="my-0 fw-normal">${product.prdPeriod}개월</h4>
	          </div>
	          <div class="card-body">
	            <h1 class="card-title pricing-card-title"><fmt:formatNumber value="${product.prdPrice}" pattern="#,###"/><small class="text-muted fw-light">/월</small></h1>
	            <ul class="list-unstyled mt-3 mb-4">
	              <li>${product.prdSize}</li>
	              <li>${product.prdOpt1}</li>
	              <li>${product.prdOpt2}</li>
	              <li>${product.prdOpt3}</li>
	            </ul>
	            <form method="post" action="order/${product.prdNo}">
	            	<c:choose>
	            		<c:when test="${i==0}">
	            			<button type="submit" id="button" class="w-100 btn btn-lg btn-outline-primary">${product.prdDesc}</button>
	            		</c:when>
	            		<c:otherwise>
	            			<button type="submit" id="buttrn" class="w-100 btn btn-lg btn-primary">${product.prdDesc}</button>
	            		</c:otherwise>
	            	</c:choose>
	            </form>
	          </div>
	        </div>
	      </div>
	      <c:set var="i" value="${i+1}"/>
	  </c:forEach>
    </div>

    <h2 class="display-6 text-center mb-4">상품별 비교</h2>

    <div class="table-responsive">
      <table class="table text-center">
        <thead>
          <tr>
            <th style="width: 34%;"></th>
            <th style="width: 22%;">1개월</th>
            <th style="width: 22%;">6개월</th>
            <th style="width: 22%;">12개월</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row" class="text-start">원두200g</th>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
          <tr>
            <th scope="row" class="text-start">무료 배송</th>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
        </tbody>

        <tbody>
          <tr>
            <th scope="row" class="text-start">추천 원두</th>
            <td></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
          <tr>
            <th scope="row" class="text-start">1+1 혜택</th>
            <td></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
          <tr>
            <th scope="row" class="text-start">사은품</th>
            <td></td>
            <td></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
        </tbody>
      </table>
    </div>
  </main>

  <footer class="pt-4 my-md-5 pt-md-5 border-top">
    <div class="row">
      <div class="col-12 col-md">
        <small class="d-block mb-3 text-muted">&copy; Java Coffee Company</small>
      </div>
    </div>
  </footer>
</div>
    
  </body>
  
</html>

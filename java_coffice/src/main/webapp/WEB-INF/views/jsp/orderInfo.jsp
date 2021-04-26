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
 	<h4 class="mb-3">주문/결제</h4>
 	<hr>
       	<div class="mb-1">	
        	<label class="form-label">상품명: ${product.prdName}</label>
	    </div>
	    <div class="mb-1">	
        	 <ul>
              <li>${product.prdSize}</li>
              <li>${product.prdOpt1}</li>
              <li>${product.prdOpt2}</li>
              <li>${product.prdOpt3}</li>
            </ul>
	    </div>
	    <div class="mb-1">	
        	<label class="form-label">구독 기간</label>
        		<ul>
	        	  <li>구독 시작: 2021-01-01</li>
	              <li>구독 종료: 2021-12-31</li>
                </ul>
	    </div>
	    <div class="mb-1">	
        	<label class="form-label">배송 정보</label>
        		<ul>
	        	  <li>이름: ${member.name}</li>
	              <li>전화번호: ${member.tel1}-${member.tel2}-${member.tel3}</li>
	              <li>주소: ${member.zipcode} ${member.address1} ${member.address2}</li>
                </ul>
	    </div>
	<h4 class="mb-3">카드 결제 정보</h4>
	<hr>
          <div class="row gy-3">
           <div class="col-md-6">
              <label for="cc-number" class="form-label">카드번호</label>
              <input type="text" class="form-control" id="cc-number" placeholder="" required>
            </div>

            <div class="col-md-3">
              <label for="cc-expiration" class="form-label">만료날짜</label>
              <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
            </div>

            <div class="col-md-3">
              <label for="cc-cvv" class="form-label">CVV</label>
              <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
              
            </div>
            <div class="col-md-3">
            	<form method="post" action="/web/payment">
            		<input type="hidden" name="memId" value="${member.id}" >
            		<input type="hidden" name="prdNo" value="${product.prdNo}" >
            		<input type="hidden" name="ordStatus" value="P" >
            		<input type="hidden" name="subsStart" value="20210422" >
            		<input type="hidden" name="subsEnd" value="20220421" >
            		<input type="submit" class="w-100 btn btn-lg btn-primary" value="결제">
            	</form>
           	</div>
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

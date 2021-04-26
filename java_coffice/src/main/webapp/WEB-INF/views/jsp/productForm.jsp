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

  </head>
  <body class="bg-light">
    
<div class="container">
  <main>
 	<h4 class="mb-3">상품 정보 수정</h4>
      <form method="post" action="/web/updateProduct">
       	<div class="mb-3">	
        	<label class="form-label">상품코드</label>
	        <div class="col-md-3">
	          <input type="text" class="form-control" id="prdNo" name="prdNo" value="${product.prdNo}">
	        </div>
	    </div>
	    <div class="mb-3">
	        <label class="form-label">상품명</label>
           	<div class="col-md-5">
	          <input type="text" class="form-control" id="prdName" name="prdName" value="${product.prdName}">
	        </div>
	    </div>
	    <div class="mb-3">
	        <label class="form-label">설명</label>
           	<div class="col-md-7">
	          <input type="text" class="form-control" id="prdDesc" name="prdDesc" value="${product.prdDesc}">
	        </div>
	    </div>
        <div class="mb-3">
        	<div class="row">
            	<div class="col-sm-3">
            		<label class="form-label">기간</label>
              		<input type="text" class="form-control" id="prdPeriod" name="prdPeriod" value="${product.prdPeriod}">
            	</div>
	            <div class="col-sm-3">
	              <label class="form-label">단가</label>
	              <input type="text" class="form-control" id="prdPrice" name="prdPrice" value="${product.prdPrice}">
	            </div>
	         </div>
		</div>
		<div class="mb-3">
			<div class="row">
				<div class="col-md-3">
	           		<label class="form-label">용량</label>
	                <input type="text" class="form-control" id="prdSize" name="prdSize" value="${product.prdSize}">
	            </div>
		        <div class="col-md-3">
		           	<label class="form-label">종류</label>
		            <input type="text" class="form-control" id="prdOpt1" name="prdOpt1" value="${product.prdOpt1}">
	            </div>
	         	<div class="col-md-3">
	           		<label class="form-label">배송</label>
	              	<input type="text" class="form-control" id="prdOpt2" name="prdOpt2" value="${product.prdOpt2}">
	            </div>
	      	</div>
		</div>
		<div class="mb-3">
           	<label class="form-label">혜택</label>
            <div class="col-sm-5">
              <input type="text" class="form-control" id="prdOpt3" name="prdOpt3" value="${product.prdOpt3}">
            </div>
		</div>

        <div class="mb-3">
           	<input type="submit" class="btn btn-primary" value="완료">
           	<input type="reset" class="btn btn-primary" value="취소">
         </div>
  	</form>
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

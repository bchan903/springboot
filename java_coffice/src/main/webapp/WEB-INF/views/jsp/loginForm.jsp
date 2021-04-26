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
    <title>Java Coffee</title>

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
  <body>
    

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
      <a class="me-3 py-2 text-dark text-decoration-none" href="<c:url value='/joinForm'/>">회원가입</a>
    </nav>
  </header>
    
  <body class="text-center">
    
	<main class="form-signin">
	  <form name="loginForm" method="post" action="login" >
	    <h1 class="h3 mb-3 fw-normal">회원 로그인</h1>
	
	    <div class="form-floating">
	      <input type="text" class="form-control" id="id" name="id">
	      <label>아이디</label>
	    </div>
	    <div class="form-floating">
	      <input type="password" class="form-control" id="pwd" name="pwd">
	      <label>비밀번호</label>
	    </div>
	
	    <div class="checkbox mb-3">
	      <label>
	        <input type="checkbox" value="ID 저장"> Remember me
	      </label>
	    </div>
	    <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
	    <p class="mt-5 mb-3 text-muted">&copy; Java Coffee Company</p>
	  </form>
	</main>


    
  </body>
</html>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>상세 조회</title>
	</head>
	<body>
		<h3>세부 정보</h3>
			<table border="1" width="400">
				<tr><td>번호</td><td>${book.bookNo}</td><tr>
				<tr><td>이름</td><td>${book.bookName}</td><tr>
				<tr><td>저자</td><td>${book.bookAuthor}</td><tr>
				<fmt:formatNumber value="${book.bookPrice}" type="number" var="priceNumber" />
				<tr><td>가격</td><td>${priceNumber}</td><tr>
				<fmt:parseDate var="parseDate" value="${book.bookDate}" pattern="yyyy-MM-dd"/>
				<fmt:formatDate var="resulDate" value="${parseDate}" pattern="yyyy-MM-dd"/>
				<tr><td>출판일</td><td>${resulDate}</td><tr>
				<tr><td>재고</td><td>${book.bookStock}</td><tr>
				<tr><td>출판사코드</td><td>${book.pubNo}</td><tr>
			</table><br><br>
			<a href="<c:url value='/book/updateForm/${book.bookNo}'/>">수정</a><br>
			<a href="javascript:deleteCheck();">삭제</a><br>
			<a href="<c:url value='/' />">메인 화면으로 이동</a> 
			
			<script>
				function deleteCheck(){
					var answer = confirm("삭제 하시겠습니까?")
					if(answer == true) {
						
						location.href="/book/delete/${book.bookNo}";
					}
				}
			</script>
	</body>
</html>
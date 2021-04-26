<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>정보 수정 화면</title>
	</head>
	<body>
		<h3>정보 수정</h3>
		<form method="post" action="/book/update">
			<table>
				<tr><td>번호</td><td><input type="text" name="bookNo" value="${book.bookNo}" readonly></td></tr>
				<tr><td>이름</td><td><input type="text" name="bookName" value="${book.bookName}"></td></tr>
				<tr><td>저자</td><td><input type="text" name="bookAuthor" value="${book.bookAuthor}"></td></tr>
				<tr><td>기격</td><td><input type="text" name="bookPrice" value="${book.bookPrice}"></td></tr>
				<fmt:parseDate var="parseDate" value="${book.bookDate}" pattern="yyyy-MM-dd"/>
				<fmt:formatDate var="resultDate" value="${parseDate}" pattern="yyyy-MM-dd"/>
				<tr><td>출판일</td><td><input type="text" name="bookDate" value="${resultDate}"></td></tr>
				<tr><td>재고</td><td><input type="text" name="bookStock" value="${book.bookStock}"></td></tr>
				<tr><td>출판사코드</td><td><input type="text" name="pubNo" value="${book.pubNo}"></td></tr>
				<tr><td colspan="3"> <input type="submit" value="업데이트"> 
												   <input type="reset" value="취소"></td></tr>
				
			</table>
		
		</form>
		
		<br><br><a href="<c:url value='/'/>">메인 화면으로 이동</a> 
	</body>
	
	

</html>
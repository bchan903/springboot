<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체 리스트</title>
	</head>
	<body>
		<h3>전체 리스트</h3>
		<table border="1" width="800">
			<tr><th>번호</th><th>이름</th><th>작가</th>
					<th>가격</th><th>출판일</th><th>재고</th><th>출판사코드</th></tr>
					
		    <c:forEach items="${bookList}" var="book">
		    	<tr>
		    		<td><a href="<c:url value='/book/bookDetailView/${book.bookNo }' />"> ${book.bookNo}</a></td>
		    		<td>${book.bookName}</td>
		    		<td>${book.bookAuthor}</td>
		    		<fmt:formatNumber value="${book.bookPrice}" type="number" var="priceNumber" />
		    		<td>${priceNumber}</td>
		    		<fmt:parseDate var="parseDate" value="${book.bookDate}" pattern="yyyy-MM-dd"/>
					<fmt:formatDate var="resultDate" value="${parseDate}" pattern="yyyy-MM-dd"/>
		    		<td>${resultDate}</td>
		    		<td>${book.bookStock}</td>
		    		<td>${book.pubNo}</td>
		    		
		    		
		    		
		    	</tr>
		    </c:forEach>			
		</table><br><br>
		<a href="<c:url value='/' />">메인 화면으로 이동</a> 
	</body>
</html>












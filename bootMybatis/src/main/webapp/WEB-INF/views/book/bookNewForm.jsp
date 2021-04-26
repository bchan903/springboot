<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>신규 등록</title>
	</head>
	<body>
		<h3>신규 등록</h3>
		<form method="post" action="/book/book/insert">
			<table>
				<tr><td>번호</td><td><input type="text" name="bookNo"></td></tr>
				<tr><td>이름</td><td><input type="text" name="bookName"></td></tr>
				<tr><td>작가</td><td><input type="text" name="bookAuthor"></td></tr>
				<tr><td>가격</td><td><input type="text" name="bookPrice"></td></tr>
				<tr><td>출판일</td><td><input type="text" name="bookDate"></td></tr>
				<tr><td>재고</td><td><input type="text" name="bookStock"></td></tr>
				<tr><td>출판사코드</td><td><input type="text" name="pubNo"></td></tr>
			
			<tr><td colspan="2"><input type="submit" value="등록"><input type="reset" value="취소"></td></tr>
			</table>
		</form>
		<br><br><a href="<c:url value='/'/>">메인 화면으로 이동</a> 
	</body>
</html>
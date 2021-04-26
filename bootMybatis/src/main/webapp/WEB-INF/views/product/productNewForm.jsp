<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>상품 등록</title>
	</head>
	<body>
		<h3>상품 등록</h3>
		<form method="post" action="/product/insert">
			<table>
				<tr><td>상품번호</td><td><input type="text" name="prdNo"></td></tr>
				<tr><td>상품명</td><td><input type="text" name="prdName"></td></tr>
			<tr><td>가격</td><td><input type="text" name="prdPrice"></td></tr>
			<tr><td>제조회사</td><td><input type="text" name="prdCompany"></td></tr>
			<tr><td>재고</td><td><input type="text" name="prdStock"></td></tr>
			<tr><td colspan="2"><input type="submit" value="등록"><input type="reset" value="취소"></td></tr>
			</table>
		</form>
		<a href="<c:url value='/'/>">메인 화면으로 이동</a><br>
	</body>
</html>
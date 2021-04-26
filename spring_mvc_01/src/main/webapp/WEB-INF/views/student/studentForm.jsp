<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form method="post" action="/project/student/newStudent4">
			학번: <input type="text" name="no"><br>
			이름: <input type="text" name="name"><br>
			학년: <input type="text" name="year"><br>
			<input type="submit" value="등록">
			<input type="reset" value="취소"><br>
		</form>
		
	</body>
</html>
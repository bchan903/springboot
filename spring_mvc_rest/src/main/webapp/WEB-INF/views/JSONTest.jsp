<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>JSON Test</title>
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		
		<script>
			$(function(){
				
				$('#checkJson').on("click",function(){
					var member=" {
						id:"park",
						name:"홍길동",
						pwd:"1234",
						email:"park@mail.com"
					};
					
					$.ajax({
						type:"post",
						url:"${contextPath}/info",
						contentType:application/json",
						data:JSON.stringify(member),
						success:function(data,textStatus){
							
						},
						error:function(data,textStatus{
							alert("에러가 발생했습니다.");
						},
						complete:function(data,textStatus){
							
						}
						
					});
					
				});
				
			})
		
		</script>
	</head>
	<body>
		<input type="button" id="checkJson" value="회원 정보 보내기"/><br><br>
		<div id="output"></div>
		
	</body>
</html>
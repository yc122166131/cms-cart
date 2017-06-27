<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/commons/taglib.jsp" %>   
<%@include file="/commons/public.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<style>
		
		body{background:#aaa;}
		.test{height:3300px;width:2000px;}
	</style>

	<div class="test"></div>
	
	
	<script>
	
		$(function(){
			 $(document).scroll(function(){
					console.log(1212121212);
			}); 
		});
	</script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>
<body>
<%@ include file="include/header.jsp" %>
	<div class="content">
		<div class="test">
			<div class="content_web1">
				<i class="fab fa-apple"></i>
			</div>
			
			<div class="content_web2">
				<i class="fas fa-battery-three-quarters"></i>
			</div>
			
			<div class="content_web3">
				<i class="fas fa-clinic-medical"></i>
			</div>
			
			<div class="content_web4">
				<i class="fas fa-ambulance"></i>
			</div>
		</div>
	</div>
<%@ include file="include/footer.jsp" %>

</body>
</html>
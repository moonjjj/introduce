<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath}/resources/css_my/perfume.css" rel="stylesheet">
<title>안녕향수</title>
</head>
<body>


<%@ include file="include/header.jsp" %>

	<div class="page_content">
		<div id="demo" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<!-- 슬라이드 쇼 -->
				<div class="carousel-item active slide_picture">
					<img class="d-block w-100"
						src="${pageContext.request.contextPath}/resources/image/animation.jpg" alt="First slide">
					<div class="on_image_text1"><p style='width:1200px; font-weight:700'>안녕하세요 오늘의 향수입니다.<br>오늘 같은 날 뿌리기 좋은 향수를 추천해드릴게요.😁 
					<button class="btn btn-info" style='font-size: 50px; border-radius: 30px; padding-bottom: 22px;}'>gogo!</button></p></div>
					<div class="carousel-caption d-none d-md-block"></div>
				</div>
				<div class="carousel-item slide_picture">
					<img class="d-block w-100" src="${pageContext.request.contextPath}/resources/image/background.jpg" alt="Second slide">
					<div class="on_image_text2"><p style='color:#c1c98a'>이야기를 나눠보아요
					</p><button class="btn btn-success" style='font-size: 50px; border-radius: 30px; padding-bottom: 22px; margin-left:20px;'>gogo!</button></div>
				</div>
				<div class="carousel-item slide_picture">
					<img class="d-block w-100" src="${pageContext.request.contextPath}/resources/image/organ.jpg" alt="Third slide">
					<div class="on_image_text3"><p style='color:#924e39'>향기를 더 전문적으로 알고싶다면?
					<button class="btn btn-default" style='font-size: 50px; border-radius: 30px; padding-bottom: 22px;}'>click!</button></p></div>
				</div>
				<!-- / 슬라이드 쇼 끝 -->
				<!-- 왼쪽 오른쪽 화살표 버튼 -->
				<a class="carousel-control-prev" href="#demo" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<!-- <span>Previous</span> -->
				</a> <a class="carousel-control-next" href="#demo" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<!-- <span>Next</span> -->
				</a>
				<!-- / 화살표 버튼 끝 -->
				<!-- 인디케이터 -->
				<ul class="carousel-indicators">
					<li data-target="#demo" data-slide-to="0" class="active"></li>
					<li data-target="#demo" data-slide-to="1"></li>
					<li data-target="#demo" data-slide-to="2"></li>
				</ul>
				<!-- 인디케이터 끝 -->
			</div>
		</div>
		<!-- end slide -->
		
		<div class="content2" style="background-image:url('${pageContext.request.contextPath}/resources/image/content2_bg.jpg')">
			<img src="${pageContext.request.contextPath}/resources/image/couple1.jpg" class="content2_image">
			<a href="test" class="content2_a">그 혹은 그녀에게 주고싶은 향수😍</a>
		</div>	
	</div>
	<!-- end content -->
	<%@ include file="include/footer.jsp" %>
<!-- 	<a id="btn-top" href="#">TOP</a>



    <script>
        $(function () {
            $(window).scroll(function () {
                if ($(this).scrollTop() > 500) {
                    $('#btn-top').fadeIn();
                } else {
                    $('#btn-top').fadeOut();
                }
            });

            $("#btn-top").click(function () {
                $('html, body').animate({
                    scrollTop: 0
                }, 400);
                return false;
            });
        });
    </script>-->

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>

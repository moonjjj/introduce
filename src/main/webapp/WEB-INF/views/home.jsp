<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html>
<head>
<title>MoonJeSeon</title>
</head>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet"> <!--font awesome CDN 링크 -->
<style>
	body{
		font-family:arial;
	}
	a{
		text-decoration:none;
		color:white;
	}
	.nav_name{
	    font-weight: 900;
	}
	.top_navbar{
		width:100%;
		height:100px;
		font-size: 60px;
    	text-align: center;
    	border-bottom: 5px solid;
    	/* background: rgb(1 0 102); */
    	color: white;
    	padding-top: 35px;
    	background-image:url(${pageContext.request.contextPath}/resources/image/bg_night.jpg);
		/* background-repeat:repeat-x; */
		/* -webkit-background-clip: text; */
    	animation: animate 30s linear infinite;
	}
	
	@keyframes animate{
		0%{
			background-position: left 1000px top 1000px;
		}
		100%{
			background-position: left 800px; top 0px;
		}
		
	}
	
	.content1, .content2{
		display:flex;
		justify-content:center;
		align-items:center;
	}
	.content_all{
	    background:url(${pageContext.request.contextPath}/resources/image/night_sky.jpg) no-repeat center;
	    color: white;
	}
	.boxcss{
		width:300px;
		height:300px;
		border:1px black solid;
		padding: 10px;
    	margin: 40px;
    	text-align:center;
    	text-align: center;
    	font-size: 25px;
    	box-shadow: 4px 1px 5px;
    	background: black;
    	cursor:pointer;
	}
	.boxcss:hover{
		transition: transform 0.2s linear;
	    transform: translate(10px, 10px);
	}
	img{
	    width: 300px;
	    height: 250px;
	    margin-top: 15px;
	    border: 1px solid black;
	}
	.footer{
		width:100%;
		bottom:0;
		height:100px;
		border-top:5px solid;
		display: flex;
    	justify-content: center;
    	align-items: center;
    	background: rgb(1 0 102);
    	color:white;
	}
	@media screen and (max-width: 550px) {
	    .content1,.content2{
	      display:flex;
	      flex-direction: column;
	    }
	    .content_all{
	        background-image: inherit;
	    }
	    .nav_name{
	      display:none;
	    }
	    .top_navbar:after {
	      content: 'Moon';
	    }
    }
	
</style>
<body>
	<div class="top_navbar">
		<span class="nav_name">
			<i class="far fa-moon"></i> MoonJeSeon <i class="far fa-sun"></i>
		</span>
	</div>

	<div class="content_all">
		<div class="content1">
			<div class="content_box1 boxcss" onclick="location.href='perfume'">
				<a href="perfume">향수</a>
				<a href="perfume"><img src="${pageContext.request.contextPath}/resources/image/perfume_page.jpg"></a>
			</div>
			<div class="content_box2 boxcss" onclick="location.href='grid_test'">
				<a href="grid_test">그리드</a>
				<a href="grid_test"><img src="${pageContext.request.contextPath}/resources/image/grid_test_thumbnail.jpg"></a>
			</div>
			<div class="content_box3 boxcss" onclick="location.href='javascript_test'">
				<a href="javascript_test">자바스크립트</a>
			</div>
		</div>
		
		<div class="content2">
			<div class="content_box1 boxcss" onclick="location.href='introduce'">
				<a href="introduce">소개페이지</a>
				<a href="introduce"><img src="${pageContext.request.contextPath}/resources/image/thumbnail_introduce.jpg"></a>
			</div>
			<div class="content_box2 boxcss" onclick="location.href='memo'">
				<a href="memo">메모장(MySQL)+낙서장</a>
				<a href="memo"><img src="${pageContext.request.contextPath}/resources/image/memo.jpg"></a>
			</div>
			<div class="content_box3 boxcss" onclick="location.href='response'">
				<a href="response">반응형 웹</a>
				<a href="response"></a>
			</div>
		</div>
	</div>
	
	<div class="footer">
		<p>👤 문제선 / 📱 010.6335.9627</p>
	</div>
		<script>
			document.getElementsByClassName('nav_name').addEventListener('click',function(){
				document.getElementsByClassName('nav_name').style.transform='skew(45deg,45deg)';
			});
	</script>
</body>
</html>

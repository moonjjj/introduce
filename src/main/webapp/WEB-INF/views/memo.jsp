<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMO</title>
</head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet"> <!--font awesome CDN 링크 -->
<style>
	.table{
		width: 550px;
		border: 1px solid;
    	margin: 30px;
    	text-align: center;
    	box-shadow: 1px 1px 5px;
	}
	.table-responsive {
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    flex-direction: column;
	    ovarflow:auto;
	    height: 300px;
	    width: 1000px;
    	margin: 0 auto;
	}
	.button-div{
		display:flex;
	}
	.transform_action{
		border:1px solid red;
		transform:translate(30px, 20px) rotate(20deg);
		width: 140px;
		height:60px;
		text-align:center;
		font-size:25px;
		display:inline-block;
	}
	.transform_action:hover{
		transform:unset;
	}
	.transform_div1{
		display:flex;
		justify-content:center;
	}
	.fa-home{
		position:fixed;
		left:20px;
		top:20px;
		font-size:40px;
	}
	
	.transform_div2{
		height:80vh;
		display:flex;
		justify-content:center;
		align-items:center;
		flex-direction: column;
		prespective: 500px;
	}
	.text{
		font-size:50px;
		font-weight:900;
		cursor:pointer;
	}
	.box{
		width:350px;
		height:100px;
		background-color:springgreen;
		margin:60px auto;
		cursor:pointer;
	}
	
	.text:hover, .box:hover{
		animation: flipV 1s linear;
	}
	
	@keyframes flipV{
		50%{
			transform:rotateX(180deg);
		}
		to{
			transform: rotateX(360deg);
		}
	}
</style>
<body>
	<a href="/"><i class="fas fa-home"></i></a>
	<h1 style="text-align:center;">메모장</h1>
	<div class="table-responsive">
  		<table class="table">
  				<thead>
	  				<tr>
	  					<td>글 번호</td>
	  					<td>글 제목</td>
	  					<td>게시날짜</td>
	  					<td>조회수</td>
  					</tr>
  				</thead>
			<c:forEach var="allboard" items="${boardAll}">
				<tr>
					<td>${allboard.bd_num}</td>
					<td><a href="memoDetail?bd_num=${allboard.bd_num}">${allboard.bd_title}</a></td>
					<td>${allboard.bd_date}</td>
					<td>${allboard.bd_readcnt}</td>
				</tr>
			</c:forEach>
		</table>
		<div class="button_div">
			<button class="btn btn-default" id="insertButton" onClick="location.href='memoInsert';">글쓰기</button>
			<button class="btn btn-default" id="insertButton" onClick="location.href='/';">홈</button>
		</div>
	</div>
	<h1 style="text-align:center;">css transform!!</h1>
	<div class="transform_div1">
		<div class="transform_action">
		touch me
		</div>
		<div class="transform_action">
		touch me
		</div>
		<div class="transform_action">
		touch me
		</div>
		<div class="transform_action">
		touch me
		</div>
	</div>
	<div class="transform_div2">
		<div class="text">FLIP ANIMATION!</div>
		<div class="box"></div>
	</div>
</body>
</html>
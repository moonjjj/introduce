<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemoDetail</title>
</head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style>
	.table{
		width: 552px;
		border: 1px solid;
    	margin: 30px;
    	text-align: center;
    	box-shadow: 1px 1px 5px;
/*     	display:grid;
    	grid-template-areas:
    	"title1 title2 title2 title2 title2"
    	"content1 content1 content1 content1 content1"
    	"content2 content2 content2 content2 content2"
    	"content2 content2 content2 content2 content2"
    	"content2 content2 content2 content2 content2"
    	"date date date date date"
    	"date date date date date"; */
	}
	.table-responsive {
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    flex-direction: column;
	}
 	#board_title{
		grid-area:title1;
		background:#ddd;
		max-width:100px;
		min-width:50px;
		width:100px;
		    opacity: 0.8;
	}
	#board_title_user{
		grid-area:title2;

	}
	#board_content{
		grid-area:content1;
		background:#ddd;
	}
	#board_content_user{
		grid-area:content2;
		height: 250px;
    	text-align: left;
	}
	#board_date{
		gria-area:date;
	} */
</style>
<body>
	<h1 style="text-align:center;">상세보기</h1>
	<div class="table-responsive">
		<table class="table">
			<tr>
				<td id="board_title">글제목  </td>
				<td id="board_title_user">${detail.bd_title}</td>
			</tr>
			<tr>
				<td colspan="2" id="board_content">글내용</td>
			</tr>			
			<tr>
				<td colspan="2" id="board_content_user">${detail.bd_content}</td>
			</tr>			
			<tr>
				<td colspan="2" id="board_date">${detail.bd_date}</td>
			</tr>
			
		</table>
	<button class="btn btn-default" id="insertButton" onClick="location.href='memo';">뒤로 가기</button>
	</div>
</body>
</html>
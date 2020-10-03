<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GRIDTEST</title>
</head>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet"> <!--font awesome CDN 링크 -->
<style>
	.container {
		display: grid;
		grid-template-rows:1fr 1fr 1fr;
		grid-template-columns: 1fr 1fr 1fr;
		inline-size: fit-content;
	    margin-left: 25px;
	    gap:10px 20px;
	}
	.item{
		border:1px solid;
		text-align: center;
		min-width: 100px;
    	min-height: 60px;
	}
	ul{
		font-size:10px;
		list-style: korean-hangul-formal;
	}
	.additional_explanation{
		font-size:10px;
	}
	
	/* 레이아웃 테스트 */
	.layout_test{
		width:350px;
		height:200px;
		margin-left: 25px;
	}
	.layout_test_all{
		display:flex;
	}
	.layout_test1{
		display:grid;
		border:1px solid;
		grid-template-areas:
		". logo ."
		"menu menu menu"
		"mainImage mainImage mainImage"
		"mainImage mainImage mainImage"
		"mainImage mainImage mainImage"
		"content1 content2 content3"
		"content1 content2 content3"
		"footer footer footer";
		 inline-size: fit-content;
    	width: 150px;
    	height: 195px;
    	font-size: 1px;
    	text-align:center;
    	margin: 10px 25px 5px;
	}
	#layout_logo{
		grid-area:logo;
		border : 2px solid red;
	}
	#layout_menu{
		grid-area:menu;
	}
	#layout_mainImage{
		grid-area:mainImage;
	}
	#layout_content1{
		grid-area:content1;
	}
	#layout_content2{
		grid-area:content2;
	}
	#layout_content3{
		grid-area:content3;
	}
	#layout_footer{
		grid-area:footer;
	}
	.layout_item{
		border:0.5px solid;
		margin: 3px;
	}

	
	.layout_test2{
		display:grid;
		grid-template-areas:
		". logo2 ." 
		"menu2 menu2 menu2"
		"subImage2 subImage2 subImage2"
		"subMenu2 subMenu2 subMenu2"
		"content4 content4 content4"
		"footer2 footer2 footer2";
		inline-size: fit-content;
	    width: 150px;
	    height: 195px;
	    font-size: 1px;
	    text-align: center;
	    border:1px solid;
	    margin: 10px 25px 5px;
	}
	#layout_logo2{
		grid-area:logo2;
	}
	#layout_menu2{
		grid-area:menu2;
		    height: 15px;
	}
	#layout_subImage2{
		grid-area:subImage2;
		height: 30px;
	}
	#layout_subMenu2{
		grid-area:subMenu2;
		height: 15px;
		border: 2px solid red;
	}
	#layout_content4{
		grid-area:content4;
    	height: 60px;
	}
	#layout_footer2{
		grid-area:footer2;
	}
	.down_icon{
		margin-left: 97px;
		margin-right: 88px;
	}
	#code{
		display:inline-block;
		margin-left: -10px;
	}
	
	.block{
		border:0.5px solid;
		width: 50px;
	    height: 50px;
	    display: inline-block;
	    margin: 5px;
	    text-align: center;
	}
	.container3{
		display:grid;
		width: fit-content;
				grid-template-rows:1fr 1fr 1fr;
		grid-template-columns: 1fr 1fr 1fr;
	}
	.block {
		grid-column-start: 1;
		grid-column-end: 4;
		grid-row-start: 1;
		grid-row-end: 4;
	}	
.block:nth-child(1) {
    grid-column: 2 / span2;
    grid-row: 2 / span3;
}
.block:nth-child(2) {
    grid-column: 5 / span2;
    grid-row: 2 / span3;
}
.block:nth-child(3) {
    grid-column: 3 / span2;
    grid-row: 3 / span3;
}
.block:nth-child(4) {
    grid-column: 4 / span2;
    grid-row: 5 / span3;
}
</style>
<body>
	<h1>Hello Grid!</h1>
	<p>1. 그리드 익히기!</p>
	<p class="additional_explanation">Flex와 Grid의 차이점은 <strong>flex는 한 방향 레이아웃 시스템</strong>이고, grid는 <strong>두 방향(column-row)레이아웃 시스템</strong>이다! </p>
	
	<div class="container">
		<div class="item">grid_item_1</div>
		<div class="item">grid_item_2</div>
		<div class="item">grid_item_3</div>
		<div class="item">grid_item_4</div>
		<div class="item">grid_item_5</div>
		<div class="item">grid_item_6</div>
		<div class="item">grid_item_7</div>
		<div class="item">grid_item_8</div>
		<div class="item">grid_item_9</div>
	</div>
	<ul>
		<li>그리드 컨테이너(Grid Container) : {display:grid}를  적용해주는 전체 영역으로 그리드규칙의 영향을 받아 정렬됩니다.</li>
		<li>그리드 아이템 (Grid Item) : 그리드 컨테이너의 자식요소로서 그리드 규칙에 의해 배치된다.</li>
		<li>그래드 트랙 (Grid Track) : 그리드의 행(Row)와 열(Column)</li>
		<li>그리드 셀 (Grid Cell): 그리드 한칸을 가리키는 말로서, 그리드 아이템 하나가 들어가는 가상의 틀이다.</li>
		<li>그리드 라인 (Grid Line): 그리드 셀을 구분하는 선입니다.</li>
		<li>그리드 영역(Grid Area) : 그리드 라인으로 둘러싸인 사각형 영역으로, 그리드 셀의 집합입니다.</li>
		<li>minmax(a,auto)=최소한 a, 최대한 auto(자동)으로 늘어납니다</li>
	</ul>
	
	<p>2. grid area로 <strong>레이아웃 만들기</strong> test</p>
	<p class="additional_explanation">아래 그림을 예시로하여 레이아웃을 똑같이 만들어보는 연습입니다.</p>
	<img src="${pageContext.request.contextPath}/resources/image/layout_test.jpg" class="layout_test">
	<br><i class="fas fa-arrow-down down_icon"></i><i class="fas fa-arrow-down down_icon"></i>
	<div class="layout_test_all">
		<div class="layout_test1">
			<div id="layout_logo" class="layout_item">Logo</div>
			<div id="layout_menu" class="layout_item">Menu</div>
			<div id="layout_mainImage" class="layout_item">Main image</div>
			<div id="layout_content1" class="layout_item">Content1</div>
			<div id="layout_content2" class="layout_item">Content2</div>
			<div id="layout_content3" class="layout_item">Content3</div>
			<div id="layout_footer" class="layout_item">Footer</div>
		</div>
		<div class="layout_test2">
			<div id="layout_logo2" class="layout_item">Logo</div>
			<div id="layout_menu2" class="layout_item">Menu</div>
			<div id="layout_subImage2" class="layout_item">Sub Image</div>
			<div id="layout_subMenu2" class="layout_item">Sub Menu</div>
			<div id="layout_content4" class="layout_item">Content</div>
			<div id="layout_footer2" class="layout_item">Footer</div>
		</div>
	</div>
	<pre class="additional_explanation" id="code">		
	grid-template-areas:
	". logo ."
	"menu menu menu"
	"mainImage mainImage mainImage"
	"mainImage mainImage mainImage"
	"mainImage mainImage mainImage"
	"content1 content2 content3"
	"content1 content2 content3"
	"footer footer footer";
	
	div.grid에 height를 주지않고 같은
	area이름을 정해줌으로 길이를 정해주었다.
	</pre>
	<pre class="additional_explanation" id="code">
	grid-template-areas:
	". logo2 ." 
	"menu2 menu2 menu2"
	"subImage2 subImage2 subImage2"
	"subMenu2 subMenu2 subMenu2"
	"content4 content4 content4"
	"footer2 footer2 footer2";
	
	div.grid에 height를 주어서 표를 만들었다.
	</pre>	
	
	<p>3. 그리드 가지고 놀기</p>
	<p class="additional_explanation">그리드로 원하는 레이아웃을 만들기를 해봅시다.</p>
	<div class="container3">
			<div class="one_block block">1</div>
			<div class="two_block block">2</div>
			<div class="three_block block">3</div>
			<div class="four_block block">4</div>
			<div class="five_block block">5</div>
			<div class="six_block block">6</div>
			<div class="seven_block block">7</div>
			<div class="eight_block block">8</div>
			<div class="nine_block block">9</div>
	</div>
</body>
</html>
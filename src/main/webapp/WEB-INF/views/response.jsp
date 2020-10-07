<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
<title>responseWeb</title>
</head>
<style>
	@media all and (min-width:376px){
		body{
			background:#2dcc70;
		}	
	}
	@media all and (min-width:700px){
		body{
			background:green;
		}	
	}
	@media all and (min-width:1200px){
		body{
			background:white;
		}	
	}
	#wrap{
		width:90%;
		height:500px;
		margin:0 auto;
		border:4px solid #000;
	}
	.container{
		width:93.75%;
		height:492px;
		margin:0 auto;
		border:4px solid #000;
		display:flex;
	}
	.container div:first-child{
		width:33.3%;
		background:#e75d5d;
		display:inline-block;
		height:inherit;
	}
	.container div:first-child + div {
		width:66.7%;
		background:#2dcc70;
		display:inline-block;
		height:inherit;
	}
	p{
		font-size:3vw;
	}
	iframe{
	left:0px;
	top:0px;
	}
</style>
<body>
 	<span><p>반응형 웹</p></span>
	<div id="wrap">
		<div class="container">
			<div></div><div><iframe width="860" height="444" src="https://www.youtube.com/embed/xLD8oWRmlAE" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
		</div>
	</div>

</body>
</html>
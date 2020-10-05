<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Introduce!</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"/>
</head>
<style>
	html {
    scroll-behavior: smooth;
	}
	
	*{
		margin:0;
		padding:0;
		font-family:"Ubumtu", sans-serif;
		box-sizing:border-box;
		text-decoration:none;
	}
	
	.info_card{
		height:100vh;
		background:url(${pageContext.request.contextPath}/resources/image/background_introduce.jpg) no-repeat center;
		background-size:cover;
		display:flex;
		align-items:center;
		justify-content:center;
	}
	.profile-card{
		width:400px;
		text-align:center;
		border-radius:8px;
		overflew:hidden;
	}
	.card-header{
		background:#2c3a47;
		padding: 60px 40px;
	}
	.picture{
		display:inline-block;
		padding:8px;
		background: linear-gradient(130deg, #74b9ff, #e66767);
		margin:auto;
		border-radius:50%;
		background-size: 200% 200%;
		animation : animated-gradient 2s linear infinite;
	}
	@keyframes animated-gradient{
		25%{
			background-position:left bottom;
		}
		50%{
			background-position:right bottom;
		}
		75%{
			background-position:right top;
		}
		100%{
			background-position:left top;
		}
	}
	
	.picture img{
		display:block;
		width:100px;
		height:100px;
		border-radius:50%;
	}
	
	.name{
		color:#f2f2f2;
		font-size:28px;
		font-weight:600;
		margin:10px 0;
	}
	.desc{
		font-size:18px;
		color:#e66767;
	}
	.icon{
		display:flex;
		justify-content:center;
		margin:20px 0;
	}
	.icon a{
		color: #f2f2f2;
		width: 56px;
		font-size:22px;
		transition:.3s linear;
	}
	
	.icon a:hover{
		color:#e66767;
	}
	.contact-btn{
		display:inline-block;
		padding:12px 50px;
		color:#e66767;
		border:2px solid #e66767;
		border-radius:6px;
		margin-top:16px;
		transition:.3s linear;
	}
	.contact-btn:hover{
		background:#e66767;
		color:#f2f2f2;
	}
	.card-footer{
		background:#f4f4f4;
		padding:60px 10px;
	}
	.numbers{
		display:flex;
		align-items:center;
	}
	.item{
		flex:1;
		text-transform:uppercase;
		font-size:13px;
		color:#e66767;
	}
	.item span{
		display:block;
		color:#2c3a47;
		font-size:30px;
	}
	.fa-moon{
		cursor:pointer;
		position: fixed;
	    left: 70px;
	    top: 20px;
	    font-size: 60px;
	    color: yellow;
	}
	
	.info_detail1{
		margin:0;
		padding:0;
		height:100vh;
		display:flex;
		background-color:#2c3a47;
		align-items: center;
    	flex-direction: column;
    	justify-content: center;
	}
	
	.greetings{
		font-size:40px;
	}
	.go_git_p{
		font-size:30px;
	}
	.go_git_button{
		border-radius:10px;
		padding: 5px 30px 13px;
	}
	#git_input{
		font-size: 30px;
	    width: 500px;
	    text-align: center;
	    border-radius: 10px;
	    padding: 5px;
	    margin-top: 40px;
	}
</style>
<body>
<div class="info_card">
<a href="/"><i class="far fa-moon"></i></a>
	<div class="profile-card">
		<div class="card-header">
			<div class="picture">
				<img src="${pageContext.request.contextPath}/resources/image/moonjeseon.jpg">
			</div>
			<div class="name">Moon</div>
			<div class="desc">Front-end designer</div>
			<div class="icon">
				<a href="https://www.facebook.com/profile.php?id=100005624622614"><i class="fab fa-facebook-f"></i></a>
				<a href="${pageContext.request.contextPath}/resources/image/introduce_pdf.pdf"><i class="fas fa-user-tie"></i></a>
				<a href="https://github.com/moonjjj"><i class="fab fa-github"></i></a>
			</div>
			<a class="contact-btn" id="contact" onclick="scrollbottom()">more info</a>
		</div>
		<div class="card-footer">
			<div class="numbers">
				<div class="item">
					<span>문제선</span>
					이름
				</div>
				<div class="item">
					<span>신입</span>
					경력
				</div>
				<div class="item">
					<span>html css js</span>
					보유 기술
				</div>
			</div>
		</div>
	</div>
</div>
<div class="info_detail1" style="top: 100vh; width: 100%;">
	<p class="greetings">안녕하세요. 프론트엔드 개발자가 되고싶은 문제선입니다.</p>
	<div class="introduce">
		<p>보유기술 및 경력 :  html(중상) css(중상) javascript(중) / 클라우드 기반의 개발자 양성과정 수료</p>
	</div>
	<input id="git_input" value="https://github.com/moonjjj">
	<button onclick="copy_to_clipboard()" class="go_git_button"><p class="go_git_p">Copy GitHub URL <i class="fab fa-github"></i></p></button>
</div>
</body>
<script>
	//click 버튼 누를시 내려가는 스크립트
	var contact = document.getElementById("contact");
	
	function scrollbottom(){
		contact.scrollIntoView(true);
		
	}
	//주소 복사 스크립트
	function copy_to_clipboard() {
		  var copyText = document.getElementById("git_input");
		  copyText.select();
		  document.execCommand("Copy");
		  alert('복사 완료');
		}
</script>
</html>
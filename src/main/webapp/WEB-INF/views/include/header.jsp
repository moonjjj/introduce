<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="${pageContext.request.contextPath}/resources/css_my/pageheader.css" rel="stylesheet">
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<body>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<div class="page_header">
		<div class="page_header1">
			<a href="/" class="page_header_logo">
				<img src="${pageContext.request.contextPath}/resources/image/logo.jpg" class="page_header_logo">
			</a>
		</div>
		<div class="page_header2">
			<ul class="page_header_ul">
				<li class="page_header_li"><a href="test" class="page_header_a">오늘의 향기</a></li>
				<li class="page_header_li"><a href="#" class="page_header_a">오늘의 이야기</a></li>
				<li class="page_header_li"><a href="#" class="page_header_a">내일의 향기</a></li>
			</ul>
		</div>
		<div class="page_header3">
<!-- 			<button id="page_header_login" class="btn btn-success" onClick="location.href='test';">로그인</button>
			<button id="page_header_join" class="btn btn-success">회원가입</button> -->
		<a id="kakao-login-btn"></a>
		<div id="user_info_div">
		<img src="#" id="user_thumbnail"><a id="user_nickname">님 반갑습니다!</a>
		<a href="http://developers.kakao.com/logout" id="kakao-logout-btn" role="button">로그아웃</a>
		</div>
		</div>

	</div>
	
	<script>
		$(document).ready(function(){
//			$("#page_header_login").click(function(){
//				location.href="test";
//			});
		$("#user_info_div").hide();
			$("#page_header_join").click(function(){
				location.href="member_join";
			});
		});
		
		
	    Kakao.init('93aa311ae81078b6f32d4eb0a1f17480');  //javascript키
	    // 카카오 로그인 버튼
	    Kakao.Auth.createLoginButton({
	      container: '#kakao-login-btn',
	      success: function(authObj) {
			 Kakao.API.request({
			     url: '/v2/user/me',
				     success: function(userinfo) {
				      console.log(userinfo);
				      
				      /* var userID = res.id;      //유저의 카카오톡 고유 id
				      var userEmail = res.kaccount_email;   //유저의 이메일
				      var userNickName = res.properties.nickname; //유저가 등록한 별명
				      var userProfile = res.properties.profile; //유저가 등록한 별명
				      
				      console.log(userID);
				      console.log(userEmail);
				      console.log(userNickName);
				      console.log(userProfile); */
						    if(userinfo!=null){
						    	var thumbnail=userinfo.properties.thumbnail_image;
						    	$("#kakao-login-btn").hide();
						    	
						    	$("#user_thumbnail").attr("src",thumbnail);
						    	$("#user_nickname").prepend("\""+userinfo.properties.nickname+"\"");
						    	$("#user_info_div").show();
						    	sessionStorage.setItem("session", userinfo ); // 저장
						    }
				     },
				     
				     fail: function(error) {
				      alert(JSON.stringify(error));
				     }
			});
	      },
	      fail: function(err) {
	         alert(JSON.stringify(err));
	      }
	    });
	</script>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMOINSERT</title>
</head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
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
	}
</style>
<body>
	<h1 style='text-align:center;'>글쓰기</h1>
	<form method="POST" action="memoInsert">
	<div class="table-responsive">
	<div class="table">
  		<input type="text" class="form-control" placeholder="제목을 입력하세요" name="bd_title" required>
  		<textarea class="form-control" rows="6" name="bd_content" required></textarea>
  		<button class="btn btn-default" type="submit">작성완료</button>
  		<button class="btn btn-default" type="submit" onClick="location.href='memo';">작성취소</button>
	</div>
</div>
	</form>
</body>
</html>
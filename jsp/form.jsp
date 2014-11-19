<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
<title>Bootstrap 101 Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet"
	media="screen">
<script src="http://code.jquery.com/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>

<!-- 플러그인 참조 -->
<script src="js/plugin/form/jquery.validate.min.js"></script>
<script src="js/plugin/ckeditor/ckeditor.js"></script>
<style type="text/css">
@media ( min-width : 980px) {
	body {
		padding-top: 60px;
		padding-bottom: 40px;
	}
}
</style>
<script type="text/javascript">
	$(function() {
		// submit 될 때, 유효성 검사 기능 수행  
		$("#join_form").validate({
			// 유효성 검사 규칙  
			rules : {
				sender : "required",
				receiver : "required",
				subject : "required",
				content : "required"
			},
			// 사용자에게 보여질 메시지  
			messages : {
				sender : "보내는 분의 메일 주소를 입력하세요.",
				receiver : "받는 분의 메일 주소를 입력하세요.",
				subject : "제목을 입력하세요.",
				content : "내용을 입력하세요."
			}
		});
	});
</script>
</head>
<body data-spy="scroll" data-target=".sub-menu">
	<!-- 상단 고정메뉴 (검정) -->
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a href="#" class="brand">JSP Email 발송 연습</a>
			</div>
		</div>
	</div>
	<!--// 상단 고정메뉴 (검정) -->

	<!-- 내용영역 시작 -->
	<div class="container">

		<form class="form-horizontal" method="post" action="SendMail.jsp">
			<fieldset>
				<legend>
					<strong>신규 회원 추가</strong>
				</legend>

				<div class="control-group">
					<label class="control-label" for="sender">보내는주소 <font
						color='red'>*</font></label>
					<div class="controls">
						<input type="text" name="sender" id="sender"
							class="input-block-level" placeholder="보내는 분의 이메일 주소를 입력하세요." />
					</div>
				</div>

				<div class="control-group">
					<label class="control-label" for="receiver">받는주소 <font
						color='red'>*</font></label>
					<div class="controls">
						<input type="text" name="receiver" id="receiver"
							class="input-block-level" placeholder="받는 분의 이메일 주소를 입력하세요." />
					</div>
				</div>

				<div class="control-group">
					<label class="control-label" for="subject">메일 제목<font
						color='red'>*</font></label>
					<div class="controls">
						<input type="text" name="subject" id="subject"
							class="input-block-level" placeholder="이메일의 제목을 입력하세요." />
					</div>
				</div>

				<div class="control-group">
					<label class="control-label" for="content">내용입력</label>
					<div class="controls">
						<textarea name="content" id="content" class="ckeditor"></textarea>
					</div>
				</div>

				<!-- 버튼 영역 -->
				<div class="form-actions text-right">
					<input type="submit" class="btn btn-primary" value="메일보내기" /> <input
						type="reset" class="btn" value="다시작성" />
				</div>

			</fieldset>
		</form>

	</div>
	<!--// 내용영역 끝 -->
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Lowin</title>
	<link rel="stylesheet" href="css/auth.css">
</head>

<body>
	<div class="lowin lowin-blue">
		<div class="lowin-brand">
			<img src="image/kodinger.jpg" alt="logo">
		</div>
		<div class="lowin-wrapper">
			<div class="lowin-box lowin-login">
				<div class="lowin-box-inner">
				</div>
			</div>

			<div class="lowin-box lowin-register">
				<div class="lowin-box-inner">
					<form action="LoginBrand.action" method="post">
						<p>登录</p>
						<div class="lowin-group">
							<label>Name</label>
							<input type="text" name="bCName" class="lowin-input" value="${brand.bCName}">
						</div>
						<div class="lowin-group">
							<label>Password</label>
							<input type="password" name="brandPwd" class="lowin-input" value="${brand.brandPwd}">
						</div>
						<button class="lowin-btn">
							登录
						</button>

						<div class="text-foot">
							<a href="brand-addbrand.jsp" class="login-link">注册</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script src="js/auth.js"></script>
	<script>
		Auth.init({
			login_url: '#login',
			forgot_url: '#forgot'
		});
	</script>
</body>
</html>
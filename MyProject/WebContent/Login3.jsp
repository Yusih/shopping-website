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
					<form action="RegisterSeller.action" method="post">
						<p>注册</p>
						<div class="lowin-group">
							<label>Name</label>
							<input type="text" name="sName"  class="lowin-input">
						</div>
						<div class="lowin-group">
							<label>Password</label>
							<input type="password" name="sPwd" class="lowin-input">
						</div>
						<div class="lowin-group">
							<label>Email</label>
							<input type="text" name="sEmail" class="lowin-input">
						</div>
						<div class="lowin-group">
							<label>Phone</label>
							<input type="text" name="sPhone" class="lowin-input">
						</div>
						<button class="lowin-btn">
							注册
						</button>
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
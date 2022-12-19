<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Trang đăng nhập</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<link rel="icon" type="image/png" sizes="16x16" href="/images/husc_logo.png">
	
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.11.3/jquery.js"></script>
    
	<link rel="stylesheet" href="/css/loginpage_style.css">
</head>
<body>
<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 style="color: #337ab7" class="heading-section">Trường đại học khoa học, Đại học Huế</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-5">
					<div class="login-wrap p-4 p-md-5">
		      	<div class="d-flex align-items-center justify-content-center">
		      		<img src="/images/husc_logo.png" width="45" height="50" alt="homepage" class="dark-logo" />
		      	</div>
		      	<h3 style="color: #337ab7" class="text-center mb-4">Đăng nhập</h3>
						<form action="/login/register" class="login-form">
		      		<div class="form-group">
		      			<input name="username" id="username_input" type="text" class="form-control rounded-left" placeholder="Username" required>
		      		</div>
	            <div class="form-group d-flex">
	              <input name="password" id="password_input" type="password" class="form-control rounded-left" placeholder="Password" required>
	            </div>
	            <div class="form-group btn-submit">
	            	<button id="btn-login" style="background-color: #337ab7" type="submit" class="btn rounded submit p-3 px-5">Đăng nhập</button>
	            </div>
	          </form>
	        </div>
				</div>
			</div>
		</div>
	</section>
<script src="/js/login.js" type="text/javascript"></script>
</body>
</html>
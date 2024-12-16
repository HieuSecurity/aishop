<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" href="/aishop/resources/assets/css/auth.css">
	<link rel="stylesheet" href="/aishop/resources/assets/css/auth-account.css">
	
    <link rel="shortcut icon" type="image/x-icon" href="./favicon.ico">
    <title>AIShop</title>
</head>
<body>
	<div id="loading_WebAI"></div>
	<div id="frame_webAI">
	    <a id = "page--back" href="/aishop">
	        <div id="home--back">
	            <div id="arrow__page" class="arrow__style">
	                <svg height="25" width="26" style="margin-top: 2px;">
	                    <polyline points="18 17 12 12 18 7" style="fill: none; stroke: #5a5a5a; stroke-width: 3px;"></polyline>
	                </svg>
	            </div>
	            <span class="title--back">Quay lại</span>
	        </div>
	    </a>
	    <div id="account_container">
	        <div class="login--input">
	            <div id="login__style--input">
	                <div id="logo">
	                    <a href="/aishop">
	                        <img class="logo_style" src="/aishop/resources/assets/img/aishop_default/logo-icon.png" alt="logo-Web">
	                    </a>
	                    <span>Đăng nhập với AIShop</span>
	                </div>
	                <div class="frame--input">
	                    <form method="POST">
	                        <input class="username" name="username" placeholder="Email address" value = "" type="text" required pattern="\S+"/>
	                        <input class="password" type="password" name="password" placeholder="Password" value="" required pattern="\S+"/>
	                        <span class="error_login" style="display: block; margin-bottom: 22px;">Email hoặc mật khẩu không đúng!</span>
	                        <button id="btn_login" class="btn--login" name="click--login">Login</button>
	                        <div class="separate"></div>
	                    </form>
                        <div class="password--forget" style="margin-top: 0; margin-bottom: 24px;">
                            <span>Bạn quên mật khẩu ?</span>
                            <a href="/aishop/forget-pass.htm" style="font-size: 17px; color: #aa6b4d;">Forget</a>
                        </div>
	                    <a href="/aishop/sign-up.htm?2">
	                        <button class="btn--login" style="background-color: chartreuse;">Creat Account</button>
	                    </a>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</body>
</html>
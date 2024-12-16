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
	    <a href="/aishop/sign-in.htm">
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
	                    <span>Nhập mã xác thực</span>
	                </div>
	                <div class="frame--input">
	                    <form method="POST">
	                        <input class="username" name="code--verify" style="margin-bottom: 5px; border-color: rgb(221, 223, 226)" placeholder ="Enter Your Code" type="text" required pattern="\S+"/>
	                        <span class ="error_login" style="display: block">Mã xác thực không khớp !</span>
	                        <button id="btn_sigup" class="btn--sigup" style="margin-top: 13px;" name="click--sigup">Confirm</button>
	                        <div class="separate"> </div>
	                    </form>
	                    <form method="POST">
	                        <div class="passwod--forget" style="padding: 0px 59px; margin-bottom: 25px; margin-top: 0; margin-left: 50px;">
	                            <span style="color:#75757c;">Bạn cần hỗ trợ ?</span>
	                            <span style="font-size: 17px; color: #aa6b4d;">Đã gửi</span>
	                            <button style="border: none; background: none; font-size: 17px; color: #aa6b4d;" name="code--give_again">Gửi lại mã</button>
	                        </div>
	                    </form>
	                    <a href="/aishop/sign-up.htm">
	                        <button class="btn--login" style="background-color: chartreuse;">Login</button>
	                    </a>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</body>
</html>
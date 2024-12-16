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
	    <a href="/aishop/sign-up.htm">
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
	                    <span>
	                        Xác nhận mật khẩu
	                    </span>
	                </div>
	                <div class="frame--input">
	                    <form method="POST">
	                        <input id ="password" class="password" type="password" name="password" placeholder="New password" value="" required pattern="\S+"/>
	                        <input id ="confirm--password" class="password" type="password" style = "margin-bottom: 6px;" name="re--enter_password" placeholder="Re-enter password" value="" required pattern="\S+"/>
	                        <ol id="style__note--sigup">
	                            <li id="pass_8" class = "style_position--note"><span>Mật khẩu lớn hơn 8. </span><i id="pass_8-ico" style="color: #67bb14; display: none;" class="fa-solid fa-circle-check"></i> </li>
	                            <li id="pass_acsii" class = "style_position--note"><span>Có ký tự in hoa, thường và chữ số. </span><i id="pass_acsii-ico" style="color: #67bb14; display: none;" class="fa-solid fa-circle-check"></i></li>
	                            <li id ="pass_special" class = "style_position--note"><span>Có ký tự đặc biệt(@#). </span><i id ="pass_special-ico" style="color: #67bb14; display: none;" class="fa-solid fa-circle-check"></i></li>
	                        </ol>
	                        <button id="btn--sigup__verify" class="btn--sigup" style="background-color: rgb(173 173 218); margin-top: 20px;" name="click--sigup__verify">Confirm</button>
	                        <div class="password--forget" style="padding: 0px 59px;">
	                            <span style="color:#75757c;">Bạn cần hỗ trợ ?</span>
	                            <a href="" style="color:#aa6b4d;"><span>Help account</span></a>
	                        </div>
	                        <div class="separate"> </div>
	                    </form>
	                    <a href="/aishop/sign-in.htm">
	                        <button class="btn--login" style="background-color: chartreuse;">Login</button>
	                    </a>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</body>
</html>
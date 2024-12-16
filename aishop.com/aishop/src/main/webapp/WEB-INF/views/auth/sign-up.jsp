<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                        <span>Chào mừng đến với AIShop</span>
                    </div>
                    <div class="frame--input">
                        <form action="sign-up.htm" method="POST">
                            <input class="email username" name="email" style="margin-bottom: 5px; border-color: rgb(221, 223, 226)" placeholder="Email address" type="text"  />
                            <input class="password" name="password" style="margin-bottom: 5px; border-color: rgb(221, 223, 226)" placeholder="Password" type="password"  />
                            
                            <!-- Hiển thị thông báo lỗi nếu có -->
                            <span class="error_login" style="display: block; color: red;">
                                ${error != null ? error : ''}
                            </span>

                          
                            
                            <button id="btn_sigup" class="btn--sigup" style="margin-top: 13px;" name="click--sigup">Create Account</button>
                            <div class="password--forget" style="padding: 0px 59px;">
                                <span style="color:#75757c;">Bạn cần hỗ trợ ?</span>
                                <a href="" style="color:#aa6b4d;"><span>Help account</span></a>
                            </div>
                            <div class="separate"></div>
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- link css: External style -->
    <link rel="stylesheet" href="/aishop/resources/assets/css/homepage.css">
    <link rel="stylesheet" href="/aishop/resources/assets/css/general.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <link rel="shortcut icon" type="image/x-icon" href="./favicon.ico">
    <title>AIShop</title>
</head>
<body>
    <header id="header">
        <!-- Start Navbar Top -->
        <nav id="aishop-top" class="navbar text_line bg-dark">
            <div class="container d-block">
                <div class="w-100 d-flex justify-content-between">
                    <div class="d-flex align-items-center">
                        <svg class="mx-2" height="1em" viewBox="0 0 512 512">
                            <path class="fill-light" d="M48 64C21.5 64 0 85.5 0 112c0 15.1 7.1 29.3 19.2 38.4L236.8 313.6c11.4 8.5 27 8.5 38.4 0L492.8 150.4c12.1-9.1 19.2-23.3 19.2-38.4c0-26.5-21.5-48-48-48H48zM0 176V384c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V176L294.4 339.2c-22.8 17.1-54 17.1-76.8 0L0 176z"/>
                        </svg>
                        <a class="text-light text-decoration-none">AIFurtureShop@gmail.com</a>
                        <svg class="mx-2" height="1em" viewBox="0 0 512 512">
                            <path class="fill-light" d="M164.9 24.6c-7.7-18.6-28-28.5-47.4-23.2l-88 24C12.1 30.2 0 46 0 64C0 311.4 200.6 512 448 512c18 0 33.8-12.1 38.6-29.5l24-88c5.3-19.4-4.6-39.7-23.2-47.4l-96-40c-16.3-6.8-35.2-2.1-46.3 11.6L304.7 368C234.3 334.7 177.3 277.7 144 207.3L193.3 167c13.7-11.2 18.4-30 11.6-46.3l-40-96z"/>
                        </svg>
                        <a class="text-light text-decoration-none">010-020-0340</a>
                    </div>
                    <div class="my-account-auth">
                        <div class="p-relative">
                            <a href="/aishop/dashboards.htm" class="text-light" style="font-size: 14px !important;">Admin</a>
                            /
                            <a href="/aishop/sign-up.htm" class="text-light" style="font-size: 14px !important;"> Sign up</a>
                        </div>
                    </div>
                    <div class="d-flex align-items-center">
                        <a class="text-light mx-2" href="https://www.facebook.com/groups/4916586575062018" rel="sponsored">
                            <svg height="1em" viewBox="0 0 320 512">
                                <path style="fill: var(--aishop-color-light);" d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z"/>
                            </svg>
                        </a>
                        <a class="text-light mx-2" href="https://www.instagram.com/">
                            <svg height="1em" viewBox="0 0 448 512">
                                <path style="fill: var(--aishop-color-light);" d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"/>
                            </svg>
                        </a>
                        <a class="text-light mx-2" href="https://twitter.com/">
                            <svg height="1em" viewBox="0 0 512 512">
                                <path style="fill: var(--aishop-color-light);" d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"/>
                            </svg>
                        </a>
                        <a class="text-light mx-2" href="https://www.linkedin.com/">
                            <svg height="1em" viewBox="0 0 448 512">
                                <path style="fill: var(--aishop-color-light);" d="M100.28 448H7.4V148.9h92.88zM53.79 108.1C24.09 108.1 0 83.5 0 53.8a53.79 53.79 0 0 1 107.58 0c0 29.7-24.1 54.3-53.79 54.3zM447.9 448h-92.68V302.4c0-34.7-.7-79.2-48.29-79.2-48.29 0-55.69 37.7-55.69 76.7V448h-92.78V148.9h89.08v40.8h1.3c12.4-23.5 42.69-48.3 87.88-48.3 94 0 111.28 61.9 111.28 142.3V448z"/>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- End Navbar Top -->

        <!-- Start Navbar Header -->
        <nav id="aishop-header" class="navbar navbar-expand shadow">
            <div class="container d-flex justify-content-between align-items-center">
                <a href="/aishop" class="font-logo text-logo">
                    AIShop
                </a>
                <div class="nav-responsive p-relative">
                    <button id="show-navbar" type="button">
                        <svg height="1.5em" width="1.4em" viewBox="0 0 448 512">
                            <path d="M0 96C0 78.3 14.3 64 32 64H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32C14.3 128 0 113.7 0 96zM0 256c0-17.7 14.3-32 32-32H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32c-17.7 0-32-14.3-32-32zM448 416c0 17.7-14.3 32-32 32H32c-17.7 0-32-14.3-32-32s14.3-32 32-32H416c17.7 0 32 14.3 32 32z"/>
                        </svg>
                    </button>
                    <div id="nav-box" class="d-flex justify-content-between p-absolute" style="display: none;">
                        <ul class="d-flex flex-col nav-list">
                            <li class="nav-item my-2">
                                <a class="my-2" href="/aishop" class="nav-link">Home</a>
                            </li>
                            <li class="nav-item my-2">
                                <a class="my-2" href="/aishop/about.htm" class="nav-link">About</a>
                            </li>
                            <li class="nav-item my-2">
                                <a class="my-2" href="/aishop/shop.htm" class="nav-link">Shop</a>
                            </li>
                            <li class="nav-item my-2">
                                <a class="my-2" href="/aishop/contact.htm" class="nav-link">Contact</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="navbar-main" class="d-flex justify-content-between flex-fill">
                    <div class="nav-option flex-fill">
                        <ul class="d-flex justify-content-between navbar-expand-row mx-2-auto">
                            <li class="nav-item">
                                <a href="/aishop" class="nav-link">Home</a>
                            </li>
                            <li class="nav-item">
                                <a href="/aishop/about.htm" class="nav-link">About</a>
                            </li>
                            <li class="nav-item">
                                <a href="/aishop/shop.htm" class="nav-link">Shop</a>
                            </li>
                            <li class="nav-item">
                                <a href="/aishop/contact.htm" class="nav-link">Contact</a>
                            </li>
                        </ul>
                    </div>
                    <div class="navbar  align-self-center d-flex">
                        <a href="#" class="nav-icon">
                            <svg height="1em" viewBox="0 0 512 512">
                                <path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"/>
                            </svg>
                        </a>
                        <a href="/aishop/cart.htm" class="nav-icon">
                            <svg height="1em" viewBox="0 0 576 512">
                                <path d="M0 24C0 10.7 10.7 0 24 0H69.5c22 0 41.5 12.8 50.6 32h411c26.3 0 45.5 25 38.6 50.4l-41 152.3c-8.5 31.4-37 53.3-69.5 53.3H170.7l5.4 28.5c2.2 11.3 12.1 19.5 23.6 19.5H488c13.3 0 24 10.7 24 24s-10.7 24-24 24H199.7c-34.6 0-64.3-24.6-70.7-58.5L77.4 54.5c-.7-3.8-4-6.5-7.9-6.5H24C10.7 48 0 37.3 0 24zM128 464a48 48 0 1 1 96 0 48 48 0 1 1 -96 0zm336-48a48 48 0 1 1 0 96 48 48 0 1 1 0-96z"/>
                            </svg>
                        </a>
                        <a href="/aishop/profile-user.htm" class="nav-icon">
                            <svg height="1em" viewBox="0 0 448 512">
                                <path d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512H418.3c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304H178.3z"/>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- End Navbar Header -->
    </header>

    <main id="aishop-pay">
        <div id="main" class="wrapper">
            <div class="page-container container ">
                <div id="main-content" class="row">
                    <div id="primary" class="site-content">
                        <article>
                            <div class="col-md-12 w-100">
                                <div class="breadcrumb clearfix">
                                    <ul style="display: flex;">
                                        <li itemtype="http://shema.org/Breadcrumb" itemscope="" class="home">
                                            <a title="Đến trang chủ" href="/aishop" itemprop="url">
                                                <span itemprop="title" class ="title_home">Trang chủ</span>
                                            </a>
                                        </li>
                                        <li class="icon-li">
                                            <strong style="font-size: 17px; color: black; font-weight: bold;">Thanh toán</strong>
                                        </li>
                                    </ul>
                                </div>
                                <div class="cart-content ng-scope" ng-controller="orderController" ng-init="initOrderCartController()">
                                    <h1 class="title"><span>THANH TOÁN</span></h1>
                                    <div class="steps clearfix">
                                        <ul class="clearfix_check" style="display: flex;">
                                            <li class="cart active col-md-2 col-xs-12 col-sm-4 col-md-offset-3 col-sm-offset-0 col-xs-offset-0" style="padding: 0 60px;">
                                                <span>
                                                    <i class="fa fa-shopping-cart"></i>
                                                </span>
                                                <span style="color: #7aaedd; font-size: 17px; font-weight: 500;">Giỏ hàng của tôi</span>
                                                <span class="step-number"><a>1</a></span>
                                            </li>
                                            <li class="payment active col-md-2 col-xs-12 col-sm-4" style="padding: 0 60px;">
                                                <span>
                                                    <i class="fa fa-credit-card" aria-hidden="true"></i>
                                                </span>
                                                <span style="color: #7aaedd; font-size: 17px; font-weight: 500;">Thanh toán</span>
                                                <span class="step-number"><a>2</a></span>
                                            </li>
                                            <li class="finish col-md-2 col-xs-12 col-sm-4" style="padding: 0 60px;">
                                                <span>
                                                    <i class="fa fa-check"></i>
                                                </span>
                                                <span style="font-size: 17px;font-weight: 500;">Hoàn tất</span>
                                                <span class="step-number"><a>3</a></span>
                                        
                                            </li>
                                        </ul>
                                    </div>
                                    <form method="post" class="payment-block clearfix ng-pristine ng-invalid ng-invalid-required ng-valid-email d-flex justify-content-around" id="checkout-container">
                                        <div class="col-md-4 col-sm-12 col-xs-12 payment-step step2">
                                            <h4>1. Thông tin KH, địa chỉ thanh toán</h4>
                                            <div class="step-preview clearfix">
                                                <h2 class="title">Thông tin khách hàng</h2>
                                                <div class="form-block ng-scope" ng-if="CustomerId<=0">
                                                    <div class="form-group"><input class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required" style="font-size: 15px !important; font-weight: 400 !important;" placeholder="Họ &amp; Tên" type="text" name="name" value="" required=""></div>
                                                    <div class="form-group"><input class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required" style="font-size: 15px !important; font-weight: 400 !important;" placeholder="Số điện thoại" type="text" name="phone" value="" required=""></div>
                                                    <div class="form-group"><input class="form-control ng-pristine ng-untouched ng-valid-email ng-invalid ng-invalid-required" style="font-size: 15px !important; font-weight: 400 !important;" placeholder="Email" type="email" name="email" value="" required=""></div>
                                                    <h2 class="title" style="margin-top: 5px;">Địa chỉ nhận hàng</h2>
                                                    <div class="form-group">
                                                        <select class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required" name="city_address" ng-options="item.Id as item.Name for item in Provinces" ng-change="changeCustomerProvince()" required>
                                                                <option selected="selected" value="0" label="Vui lòng chọn tỉnh/thành phố">Vui lòng chọn tỉnh/thành phố</option>
                                                                <option value="Hồ Chí Minh" label="Hồ Chí Minh">Hồ Chí Minh</option>
                                                                <option value="Hà Nội" label="Hà Nội">Hà Nội</option>
                                                                <option value="Đà Nẵng" label="Đà Nẵng">Đà Nẵng</option>
                                                                <option value="Cần Thơ label" label="Cần Thơ">Cần Thơ</option>
                                                                <option value="Thừa Thiên - Huế" label=" Thừa Thiên - Huế"> Thừa Thiên - Huế</option>
                                                                <option value="An Giang" label="An Giang">An Giang</option>
                                                                <option value="Bà Rịa-Vũng Tàu" label="Bà Rịa-Vũng Tàu">Bà Rịa-Vũng Tàu</option>
                                                                <option value="Bạc Liêu" label="Bạc Liêu">Bạc Liêu</option>
                                                                <option value="Bắc Kạn" label="Bắc Kạn">Bắc Kạn</option>
                                                                <option value="Bắc Giang" label="Bắc Giang">Bắc Giang</option>
                                                                <option value="Bắc Ninh" label="Bắc Ninh">Bắc Ninh</option>
                                                                <option value="Bến Tre" label="Bến Tre">Bến Tre</option>
                                                                <option value="Bình Dương" label="Bình Dương">Bình Dương</option>
                                                                <option value="Bình Định" label="Bình Định">Bình Định</option>
                                                                <option value="Bình Phước" label="Bình Phước">Bình Phước</option>
                                                                <option value="Bình Thuận" label="Bình Thuận">Bình Thuận</option>
                                                                <option value="Cà Mau" label="Cà Mau">Cà Mau</option>
                                                                <option value="Cao Bằng" label="Cao Bằng">Cao Bằng</option>
                                                                <option value="Đắk Lắk" label="Đắk Lắk">Đắk Lắk</option>
                                                                <option value="Đắk Nông" label="Đắk Nông">Đắk Nông</option>
                                                                <option value="number:21" label="Điện Biên">Điện Biên</option>
                                                                <option value="number:22" label="Đồng Nai">Đồng Nai</option>
                                                                <option value="number:23" label="Đồng Tháp">Đồng Tháp</option>
                                                                <option value="number:24" label="Gia Lai">Gia Lai</option>
                                                                <option value="number:25" label="Hà Giang">Hà Giang</option>
                                                                <option value="number:26" label="Hà Nam">Hà Nam</option>
                                                                <option value="number:27" label="Hà Tây">Hà Tây</option><option value="number:28" label="Hà Tĩnh">Hà Tĩnh</option><option value="number:29" label="Hải Dương">Hải Dương</option><option value="number:30" label="Hải Phòng">Hải Phòng</option><option value="number:31" label="Hòa Bình">Hòa Bình</option><option value="number:32" label="Hậu Giang">Hậu Giang</option><option value="number:33" label="Hưng Yên">Hưng Yên</option><option value="number:34" label="Khánh Hòa">Khánh Hòa</option><option value="number:35" label="Kiên Giang">Kiên Giang</option><option value="number:36" label="Kon Tum">Kon Tum</option><option value="number:37" label="Lai Châu">Lai Châu</option><option value="number:38" label="Lào Cai">Lào Cai</option><option value="number:39" label="Lạng Sơn">Lạng Sơn</option><option value="number:40" label="Lâm Đồng">Lâm Đồng</option><option value="number:41" label="Long An">Long An</option><option value="number:42" label="Nam Định">Nam Định</option><option value="number:43" label="Nghệ An">Nghệ An</option><option value="number:44" label="Ninh Bình">Ninh Bình</option><option value="number:45" label="Ninh Thuận">Ninh Thuận</option><option value="number:46" label="Phú Thọ">Phú Thọ</option><option value="number:47" label="Phú Yên">Phú Yên</option><option value="number:48" label="Quảng Bình">Quảng Bình</option><option value="number:49" label="Quảng Nam">Quảng Nam</option><option value="number:50" label="Quảng Ngãi">Quảng Ngãi</option><option value="number:51" label="Quảng Ninh">Quảng Ninh</option><option value="number:52" label="Quảng Trị">Quảng Trị</option><option value="number:53" label="Sóc Trăng">Sóc Trăng</option><option value="number:54" label="Sơn La">Sơn La</option><option value="number:55" label="Tây Ninh">Tây Ninh</option><option value="number:56" label="Thái Bình">Thái Bình</option><option value="number:57" label="Thái Nguyên">Thái Nguyên</option><option value="number:58" label="Thanh Hóa">Thanh Hóa</option><option value="number:59" label="Thừa Thiên - Huế">Thừa Thiên - Huế</option><option value="number:60" label="Tiền Giang">Tiền Giang</option><option value="number:61" label="Trà Vinh">Trà Vinh</option><option value="number:62" label="Tuyên Quang">Tuyên Quang</option><option value="number:63" label="Vĩnh Long">Vĩnh Long</option><option value="Vĩnh Phúc" label="Vĩnh Phúc">Vĩnh Phúc</option><option value="Yên Bái" label="Yên Bái">Yên Bái</option></select>
                                                    
                                                    </div>
                                                    <textarea class="form-control ng-pristine ng-untouched ng-valid" style="font-size: 15px !important; font-weight: 400 !important;" rows="4" placeholder="Ghi chú đơn hàng" name="note_address"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-12 col-xs-12 payment-step step3">
                                            <h4>2. Hình thức thanh toán</h4>
                                            <div class="step-preview clearfix">
                                                <h2 class="title">Thanh toán điện tử</h2>   
                                                <div class="form-group">
                                                    <label for="bankcode">Ngân hàng</label>
                                                    <select name="bankcode" id="bankcode" class="form-control">
                                                        <option value="default">Chọn ngân hàng thanh toán</option>    
                                                        <option value="VISA">VISA</option>
                                                        <option value="MASTERCARD"> MASTERCARD</option>
                                                        <option value="JCB">JCB</option>
                                                        <option value="NCB">Ngan hang NCB</option>
                                                        <option value="EXIMBANK">Ngan hang EximBank </option>
                                                    </select>
                                                </div>
                                                <div id="card_pay_VISA" style="display: none;">
                                                    <div style="display: flex; align-items: center;">
                                                        <label for="bankcode">Thông tin thẻ</label>                                                          
                                                        <div class="input-extend input-extend-right">
                                                        <div class="input-box input-ic-clear"></div>
                                                            <div class="input-box input-extend-inner">
                                                                <div class="logo-brands-small">
                                                                    <img src="./assets/img/logos/bank/visa.png" style="width: 39px; margin-left: 15px; margin-bottom: 8px;" alt="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="card_pay" style="display: none;">
                                                    <label class="label_pay" for="bankcode"><span style="color: red;">* </span>Số thẻ: </label>   
                                                    <div class="form-group"><input class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required font_pay" style="font-size: 15px !important; font-weight: 400 !important;" placeholder="Nhập số thẻ" type="digits" name="card_number" required=""></div>  
                                                    <div style="display: flex; justify-content: space-between;">
                                                        <label class="label_pay" style="flex: 0.4;" for="bankcode"><span style="color: red;">* </span>Ngày hết hạn: </label>
                                                        <label class="label_pay" style="flex: 0.38;" for="bankcode"><span style="color: red;">* </span>CVC/CVV: </label>
                                                    </div>
                                                    <div style="display: flex;">
                                                        <div class="form-group" style="margin-right: 4px;"><input class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required font_pay" style="font-size: 15px !important; font-weight: 400 !important;" placeholder="MM/YY" type="text" name="date_HH" required=""></div>
                                                        <div class="form-group"><input class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required font_pay" style="font-size: 15px !important; font-weight: 400 !important;" placeholder="CVC/CVV" type="digits" name="cvc_cvv" required=""></div>
                                                    </div>  
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input id="resetCheckbox" type="checkbox" onclick="toggleDeliveryAddress()" name="check_pay_off" class="ng-pristine ng-untouched ng-valid"> Thanh toán khi nhận hàng
                                                    </label>
                                                </div>
                                                <span class="error_login" style="display: block; margin-bottom: 22px; margin-left: 0;"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-12 col-xs-12 payment-step step1">
                                            <h4>3. Thông tin đơn hàng</h4>
                                            <div class="step-preview">
                                                <div class="cart-info">
                                                    <div class="cart-items">
                                                    </div>
                                                    <div class="total-payment">
                                                        Thành tiền  <span class="ng-binding"></span>
                                                    </div>
                                                    <div class="total-payment">
                                                        Phí vận chuyển  <span class="ng-binding">0 ₫</span>
                                                    </div>
                                                    <div class="total-payment">
                                                        Thanh toán <span class="ng-binding"></span>
                                                    </div>
                                                    <div class="button-submit">
                                                        <button name="order-submit" class="btn button button-secondary" type="submit">Đặt hàng</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- Start Footer-->
    <footer id="aishop-footer" class="bg-dark">
        <div class="container d-flex flex-col" style="margin-bottom: 30px;">
            <div class="row" style="display: flex; justify-content: center;">
                <div class="col-md-4 pt-5 flex-fill">
                    <h2 class="pb-3 font-logo text-logo border-light border-bottom">AIShop</h2>
                    <ul class="text-light list-unstyled footer-link-list">
                        <li>
                            97 D. Man Thien, Hiep Phu, District 9, Ho Chi Minh City 70000, Vietnam
                        </li>
                        <li>
	                        <svg class="mx-2" height="1em" viewBox="0 0 512 512">
		                        <path class="fill-light" d="M164.9 24.6c-7.7-18.6-28-28.5-47.4-23.2l-88 24C12.1 30.2 0 46 0 64C0 311.4 200.6 512 448 512c18 0 33.8-12.1 38.6-29.5l24-88c5.3-19.4-4.6-39.7-23.2-47.4l-96-40c-16.3-6.8-35.2-2.1-46.3 11.6L304.7 368C234.3 334.7 177.3 277.7 144 207.3L193.3 167c13.7-11.2 18.4-30 11.6-46.3l-40-96z"/>
		                    </svg>
                            012-020-0340
                        </li>
                        <li>
		                    <svg class="mx-2" height="1em" viewBox="0 0 512 512">
		                        <path class="fill-light" d="M48 64C21.5 64 0 85.5 0 112c0 15.1 7.1 29.3 19.2 38.4L236.8 313.6c11.4 8.5 27 8.5 38.4 0L492.8 150.4c12.1-9.1 19.2-23.3 19.2-38.4c0-26.5-21.5-48-48-48H48zM0 176V384c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V176L294.4 339.2c-22.8 17.1-54 17.1-76.8 0L0 176z"/>
		                    </svg>
                            AIFurtureShop@gmail.com
                        </li>
                    </ul>
                </div>
                <div class="col-md-4 pt-5">
                    <h2 class="pb-3 font-logo border-light border-bottom text-light">Products</h2>
                    <ul class="text-light list-unstyled footer-link-list">
                        <li>
                            Cleanser
                        </li>
                        <li>
                            Lipstick
                        </li>
                        <li>
                            Sunscreen
                        </li>
                        <li>
                            some other brands
                        </li>
                    </ul>
                </div>
                <div class="col-md-4 pt-5">
                    <h2 class="pb-3 font-logo border-light border-bottom text-light">Infomations</h2>
                    <ul class="text-light list-unstyled footer-link-list">
                        <li>
                            <a href="/aishop">Home</a>
                        </li>
                        <li>
                        	<a href="/aishop/about.htm">About</a>
                        </li>
                        <li>
                        	<a href="/aishop/contact.htm">Location</a>
                        </li>
                        <li>
                        	<a href="/aishop/contact.htm">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="pt-2" style="background-color: #1e1b1b;">
            <div class="container col-12">
                <p class="text-left text-light footer-bottom">
                    Demo © 2023 AIShop Web 
                    | Designed by 
                    <a rel="sponsored" href="/aishop/contact.htm">Group 07</a>
                </p>
            </div>
        </div>
    </footer>

    <!-- End Footer-->
    <script src="/aishop/resources/assets/js/style.js"></script>
</body>
</html>
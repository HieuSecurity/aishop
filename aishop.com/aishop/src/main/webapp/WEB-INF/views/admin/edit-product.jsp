<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/aishop/resources/assets/css/general.css">
    <link rel="stylesheet" href="/aishop/resources/assets/css/dashboards.css">

    <link rel="shortcut icon" type="image/x-icon" href="./favicon.ico">
    <title>AIShop</title>
</head>
<body>
	
	<!-- Start Aside Admin views -->

	<aside id="aishop-top" class="navbar-border" style="display: flex;">
        <div class="navbar-option">
            <div class="navbar-top d-flex flex-col">
                <div class="d-flex align-items-center justify-content-around w-100">
                    <a class="py-5" href="/aishop">
                        <img class="style-logo" src="/aishop/resources/assets/img/aishop_default/logo-icon.png" alt="AIShop - Logo Website">
                    </a>
                    <span class="text-logo font-logo">AIShop</span>
                </div>
            </div>
            <div class="navbar-nav">
                <ul class="d-flex flex-col align-items-center p-m-none">
                    <li class="nav-item w-100 my-6-0">
                        <div id="show-option-dashboard" class="cursor-pointer nav-item--link d-flex align-items-center justify-content-around" href="#">
                            <svg width='1rem' height='1rem' viewBox="0 0 576 512">
                                <path class="icon-hover" style="fill: none; stroke: #132144; stroke-width: 40px;" d="M575.8 255.5c0 18-15 32.1-32 32.1h-32l.7 160.2c0 2.7-.2 5.4-.5 8.1V472c0 22.1-17.9 40-40 40H456c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1H416 392c-22.1 0-40-17.9-40-40V448 384c0-17.7-14.3-32-32-32H256c-17.7 0-32 14.3-32 32v64 24c0 22.1-17.9 40-40 40H160 128.1c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2H104c-22.1 0-40-17.9-40-40V360c0-.9 0-1.9 .1-2.8V287.6H32c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z"/>
                            </svg>
                            <span class="nav-font">Dashboards</span>
                            <svg id="arrow-ronate-dashboard" width='1rem' height='1rem' viewBox='0 0 24 24' fill='%2371869d'>
                                <path style="fill:#8799ac; stroke-width: 6px" d='M12.72,15.78a.75.75,0,0,1-.53.22h-.38a.77.77,0,0,1-.53-.22L6.15,10.64a.5.5,0,0,1,0-.71l.71-.71a.49.49,0,0,1,.7,0L12,13.67l4.44-4.45a.5.5,0,0,1,.71,0l.7.71a.5.5,0,0,1,0,.71Z'/>
                            </svg>
                        </div>
                        <ul id="dashboard-option" style="display: none;">
                            <li>
                                <a class="nav-item--link d-flex align-items-center justify-content-around" style="padding-right: 1.75rem; padding-left: 3.25rem;" href="/aishop/dashboard.htm">
                                    <svg height=".4rem" width=".4rem" viewBox="0 0 512 512">
                                        <path style="fill:#8799ac; stroke-width: 6px" d="M464 256A208 208 0 1 0 48 256a208 208 0 1 0 416 0zM0 256a256 256 0 1 1 512 0A256 256 0 1 1 0 256z"/>
                                    </svg>
                                    <span class="nav-font">Default</span>
                                    <svg width='1rem' height='1rem' viewBox='0 0 24 24' fill='%2371869d'>
                                        <path style="fill:#8799ac; stroke-width: 6px" d='M12.72,15.78a.75.75,0,0,1-.53.22h-.38a.77.77,0,0,1-.53-.22L6.15,10.64a.5.5,0,0,1,0-.71l.71-.71a.49.49,0,0,1,.7,0L12,13.67l4.44-4.45a.5.5,0,0,1,.71,0l.7.71a.5.5,0,0,1,0,.71Z'/>
                                    </svg>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item w-100 my-6-0">
                        <span class="nav-subtitle nav-item--link">PAGES</span>
                    </li>
                    <li class="nav-item w-100 my-6-0">
                        <div id="show-option-product" class="cursor-pointer show-option nav-item--link d-flex align-items-center justify-content-around">
                            <svg viewBox="0 0 448 512" height="1rem" width="1rem">
                                <path fill="#8799ac" style="stroke-width: 6px" d="M0 72C0 49.9 17.9 32 40 32H88c22.1 0 40 17.9 40 40v48c0 22.1-17.9 40-40 40H40c-22.1 0-40-17.9-40-40V72zM0 232c0-22.1 17.9-40 40-40H88c22.1 0 40 17.9 40 40v48c0 22.1-17.9 40-40 40H40c-22.1 0-40-17.9-40-40V232zM128 392v48c0 22.1-17.9 40-40 40H40c-22.1 0-40-17.9-40-40V392c0-22.1 17.9-40 40-40H88c22.1 0 40 17.9 40 40zM160 72c0-22.1 17.9-40 40-40h48c22.1 0 40 17.9 40 40v48c0 22.1-17.9 40-40 40H200c-22.1 0-40-17.9-40-40V72zM288 232v48c0 22.1-17.9 40-40 40H200c-22.1 0-40-17.9-40-40V232c0-22.1 17.9-40 40-40h48c22.1 0 40 17.9 40 40zM160 392c0-22.1 17.9-40 40-40h48c22.1 0 40 17.9 40 40v48c0 22.1-17.9 40-40 40H200c-22.1 0-40-17.9-40-40V392zM448 72v48c0 22.1-17.9 40-40 40H360c-22.1 0-40-17.9-40-40V72c0-22.1 17.9-40 40-40h48c22.1 0 40 17.9 40 40zM320 232c0-22.1 17.9-40 40-40h48c22.1 0 40 17.9 40 40v48c0 22.1-17.9 40-40 40H360c-22.1 0-40-17.9-40-40V232zM448 392v48c0 22.1-17.9 40-40 40H360c-22.1 0-40-17.9-40-40V392c0-22.1 17.9-40 40-40h48c22.1 0 40 17.9 40 40z"></path>
                            </svg>
                            <span class="nav-font">Products</span>
                            <svg id="arrow-ronate-product" style="transform: scaleY(-1);" width='1rem' height='1rem' viewBox='0 0 24 24' fill='%2371869d'>
                                <path style="fill:#8799ac; stroke-width: 6px" d='M12.72,15.78a.75.75,0,0,1-.53.22h-.38a.77.77,0,0,1-.53-.22L6.15,10.64a.5.5,0,0,1,0-.71l.71-.71a.49.49,0,0,1,.7,0L12,13.67l4.44-4.45a.5.5,0,0,1,.71,0l.7.71a.5.5,0,0,1,0,.71Z'/>
                            </svg>
                        </div>
                        <ul id="product-option" style="display: block;">
                            <li>
                                <a class="nav-item--link d-flex align-items-center justify-content-around" style="padding-right: 1.75rem; padding-left: 3.25rem;" href="/aishop/manager-products.htm">
                                    <svg height=".4rem" width=".4rem" viewBox="0 0 512 512">
                                        <path style="fill:#8799ac; stroke-width: 6px" d="M464 256A208 208 0 1 0 48 256a208 208 0 1 0 416 0zM0 256a256 256 0 1 1 512 0A256 256 0 1 1 0 256z"/>
                                    </svg>
                                    <span class="nav-font">Products</span>
									<svg width='1rem' height='1rem' viewBox='0 0 24 24' fill='%2371869d'>
                                        <path style="fill:#8799ac; stroke-width: 6px" d='M12.72,15.78a.75.75,0,0,1-.53.22h-.38a.77.77,0,0,1-.53-.22L6.15,10.64a.5.5,0,0,1,0-.71l.71-.71a.49.49,0,0,1,.7,0L12,13.67l4.44-4.45a.5.5,0,0,1,.71,0l.7.71a.5.5,0,0,1,0,.71Z'/>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a class="nav-item--link d-flex align-items-center justify-content-around" style="padding-right: 1.75rem; background: aliceblue; padding-left: 3.25rem;" href="/aishop/product-detail.htm">
                                    <svg height=".4rem" width=".4rem" viewBox="0 0 512 512">
                                        <path style="fill:#8799ac; stroke-width: 6px" d="M464 256A208 208 0 1 0 48 256a208 208 0 1 0 416 0zM0 256a256 256 0 1 1 512 0A256 256 0 1 1 0 256z"/>
                                    </svg>
                                    <span class="nav-font">Add Product</span>
                                    <svg viewBox="0 0 512 512" class="margin-left-sm svg-inline--fa fa-angle-right fa-lg" height="1rem" width=".7rem">
										<path fill="currentColor" d="M278.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L210.7 256 73.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z" class=""></path>
									</svg>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item w-100 my-6-0">
                        <div id="show-option-order" class="cursor-pointer show-option nav-item--link d-flex align-items-center justify-content-around">
                            <svg height="1rem" width="1rem" viewBox="0 0 576 512">
                            	<path style="stroke-width: 6px; fill: rgb(135, 153, 172);" d="M0 24C0 10.7 10.7 0 24 0H69.5c22 0 41.5 12.8 50.6 32h411c26.3 0 45.5 25 38.6 50.4l-41 152.3c-8.5 31.4-37 53.3-69.5 53.3H170.7l5.4 28.5c2.2 11.3 12.1 19.5 23.6 19.5H488c13.3 0 24 10.7 24 24s-10.7 24-24 24H199.7c-34.6 0-64.3-24.6-70.7-58.5L77.4 54.5c-.7-3.8-4-6.5-7.9-6.5H24C10.7 48 0 37.3 0 24zM128 464a48 48 0 1 1 96 0 48 48 0 1 1 -96 0zm336-48a48 48 0 1 1 0 96 48 48 0 1 1 0-96zM252 160c0 11 9 20 20 20h44v44c0 11 9 20 20 20s20-9 20-20V180h44c11 0 20-9 20-20s-9-20-20-20H356V96c0-11-9-20-20-20s-20 9-20 20v44H272c-11 0-20 9-20 20z"/>
                            </svg>
                            <span class="nav-font">Orders</span>
                            <svg id="arrow-ronate-order" width='1rem' height='1rem' viewBox='0 0 24 24' fill='%2371869d'>
                                <path style="fill:#8799ac; stroke-width: 6px" d='M12.72,15.78a.75.75,0,0,1-.53.22h-.38a.77.77,0,0,1-.53-.22L6.15,10.64a.5.5,0,0,1,0-.71l.71-.71a.49.49,0,0,1,.7,0L12,13.67l4.44-4.45a.5.5,0,0,1,.71,0l.7.71a.5.5,0,0,1,0,.71Z'/>
                            </svg>
                        </div>
                        <ul id="order-option" style="display: none;">
                            <li>
                                <a class="nav-item--link d-flex align-items-center justify-content-around" style="padding-right: 1.75rem; padding-left: 3.25rem;" href="/aishop/manager-orders.htm">
                                    <svg height=".4rem" width=".4rem" viewBox="0 0 512 512">
                                        <path style="fill:#8799ac; stroke-width: 6px" d="M464 256A208 208 0 1 0 48 256a208 208 0 1 0 416 0zM0 256a256 256 0 1 1 512 0A256 256 0 1 1 0 256z"/>
                                    </svg>
                                    <span class="nav-font">Order Detail</span>
                                    <svg width='1rem' height='1rem' viewBox='0 0 24 24' fill='%2371869d'>
                                        <path style="fill:#8799ac; stroke-width: 6px" d='M12.72,15.78a.75.75,0,0,1-.53.22h-.38a.77.77,0,0,1-.53-.22L6.15,10.64a.5.5,0,0,1,0-.71l.71-.71a.49.49,0,0,1,.7,0L12,13.67l4.44-4.45a.5.5,0,0,1,.71,0l.7.71a.5.5,0,0,1,0,.71Z'/>
                                    </svg>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item w-100 my-6-0">
                        <div id="show-option-auth" class="cursor-pointer nav-item--link d-flex align-items-center justify-content-around">
                            <svg height="1rem" width="1rem" viewBox="0 0 448 512">
                                <path style="fill:#8799ac; stroke-width: 6px" d="M144 144v48H304V144c0-44.2-35.8-80-80-80s-80 35.8-80 80zM80 192V144C80 64.5 144.5 0 224 0s144 64.5 144 144v48h16c35.3 0 64 28.7 64 64V448c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V256c0-35.3 28.7-64 64-64H80z"/>
                            </svg>
                            <span class="nav-font">Authentication</span>
                            <svg id="arrow-ronate-auth" width='1rem' height='1rem' viewBox='0 0 24 24' fill='%2371869d'>
                                <path style="fill:#8799ac; stroke-width: 6px" d='M12.72,15.78a.75.75,0,0,1-.53.22h-.38a.77.77,0,0,1-.53-.22L6.15,10.64a.5.5,0,0,1,0-.71l.71-.71a.49.49,0,0,1,.7,0L12,13.67l4.44-4.45a.5.5,0,0,1,.71,0l.7.71a.5.5,0,0,1,0,.71Z'/>
                            </svg>
                        </div>
                        <ul id="auth-option" style="display: none;">
                            <li>
                                <a class="nav-item--link d-flex align-items-center justify-content-around" style="padding-right: 1.75rem; padding-left: 3.25rem;" href="/aishop/verify-setting.htm">
                                    <svg height=".4rem" width=".4rem" viewBox="0 0 512 512">
                                        <path style="fill:#8799ac; stroke-width: 6px" d="M464 256A208 208 0 1 0 48 256a208 208 0 1 0 416 0zM0 256a256 256 0 1 1 512 0A256 256 0 1 1 0 256z"/>
                                    </svg>
                                    <span class="nav-font">Auth 2 step</span>
                                    <svg width='1rem' height='1rem' viewBox='0 0 24 24' fill='%2371869d'>
                                        <path style="fill:#8799ac; stroke-width: 6px" d='M12.72,15.78a.75.75,0,0,1-.53.22h-.38a.77.77,0,0,1-.53-.22L6.15,10.64a.5.5,0,0,1,0-.71l.71-.71a.49.49,0,0,1,.7,0L12,13.67l4.44-4.45a.5.5,0,0,1,.71,0l.7.71a.5.5,0,0,1,0,.71Z'/>
                                    </svg>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item w-100 my-6-0">
                        <a class="nav-item--link d-flex align-items-center justify-content-around" href="/aishop">
                            <svg height="1rem" width="1rem" viewBox="0 0 576 512">
                                <path style="fill:#8799ac; stroke-width: 6px" d="M288 32c-80.8 0-145.5 36.8-192.6 80.6C48.6 156 17.3 208 2.5 243.7c-3.3 7.9-3.3 16.7 0 24.6C17.3 304 48.6 356 95.4 399.4C142.5 443.2 207.2 480 288 480s145.5-36.8 192.6-80.6c46.8-43.5 78.1-95.4 93-131.1c3.3-7.9 3.3-16.7 0-24.6c-14.9-35.7-46.2-87.7-93-131.1C433.5 68.8 368.8 32 288 32zM144 256a144 144 0 1 1 288 0 144 144 0 1 1 -288 0zm144-64c0 35.3-28.7 64-64 64c-7.1 0-13.9-1.2-20.3-3.3c-5.5-1.8-11.9 1.6-11.7 7.4c.3 6.9 1.3 13.8 3.2 20.7c13.7 51.2 66.4 81.6 117.6 67.9s81.6-66.4 67.9-117.6c-11.1-41.5-47.8-69.4-88.6-71.1c-5.8-.2-9.2 6.1-7.4 11.7c2.1 6.4 3.3 13.2 3.3 20.3z"/>
                            </svg>
                            <span class="nav-font">Wellcome Page</span>
                            <svg style="opacity: 0;" width='1rem' height='1rem' viewBox='0 0 24 24' fill='%2371869d'>
                                <path style="fill:#8799ac; stroke-width: 6px" d='M12.72,15.78a.75.75,0,0,1-.53.22h-.38a.77.77,0,0,1-.53-.22L6.15,10.64a.5.5,0,0,1,0-.71l.71-.71a.49.49,0,0,1,.7,0L12,13.67l4.44-4.45a.5.5,0,0,1,.71,0l.7.71a.5.5,0,0,1,0,.71Z'/>
                            </svg>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="navbar-setting">
            <ul class="d-flex justify-content-evenly align-items-center p-m-none">
                <li>
                    <svg height="1rem" width = "1rem" style="cursor: pointer;" viewBox="0 0 576 512" title="Template">
                        <path style="fill:#8799ac; stroke-width: 6px;" d="M264.5 5.2c14.9-6.9 32.1-6.9 47 0l218.6 101c8.5 3.9 13.9 12.4 13.9 21.8s-5.4 17.9-13.9 21.8l-218.6 101c-14.9 6.9-32.1 6.9-47 0L45.9 149.8C37.4 145.8 32 137.3 32 128s5.4-17.9 13.9-21.8L264.5 5.2zM476.9 209.6l53.2 24.6c8.5 3.9 13.9 12.4 13.9 21.8s-5.4 17.9-13.9 21.8l-218.6 101c-14.9 6.9-32.1 6.9-47 0L45.9 277.8C37.4 273.8 32 265.3 32 256s5.4-17.9 13.9-21.8l53.2-24.6 152 70.2c23.4 10.8 50.4 10.8 73.8 0l152-70.2zm-152 198.2l152-70.2 53.2 24.6c8.5 3.9 13.9 12.4 13.9 21.8s-5.4 17.9-13.9 21.8l-218.6 101c-14.9 6.9-32.1 6.9-47 0L45.9 405.8C37.4 401.8 32 393.3 32 384s5.4-17.9 13.9-21.8l53.2-24.6 152 70.2c23.4 10.8 50.4 10.8 73.8 0z"/>
                    </svg>
                </li>
                <li>
                    <svg height="1rem" width = "1rem" style="cursor: pointer;" viewBox="0 0 512 512" title="Setting">
                        <path style="fill:#8799ac; stroke-width: 6px;" d="M495.9 166.6c3.2 8.7 .5 18.4-6.4 24.6l-43.3 39.4c1.1 8.3 1.7 16.8 1.7 25.4s-.6 17.1-1.7 25.4l43.3 39.4c6.9 6.2 9.6 15.9 6.4 24.6c-4.4 11.9-9.7 23.3-15.8 34.3l-4.7 8.1c-6.6 11-14 21.4-22.1 31.2c-5.9 7.2-15.7 9.6-24.5 6.8l-55.7-17.7c-13.4 10.3-28.2 18.9-44 25.4l-12.5 57.1c-2 9.1-9 16.3-18.2 17.8c-13.8 2.3-28 3.5-42.5 3.5s-28.7-1.2-42.5-3.5c-9.2-1.5-16.2-8.7-18.2-17.8l-12.5-57.1c-15.8-6.5-30.6-15.1-44-25.4L83.1 425.9c-8.8 2.8-18.6 .3-24.5-6.8c-8.1-9.8-15.5-20.2-22.1-31.2l-4.7-8.1c-6.1-11-11.4-22.4-15.8-34.3c-3.2-8.7-.5-18.4 6.4-24.6l43.3-39.4C64.6 273.1 64 264.6 64 256s.6-17.1 1.7-25.4L22.4 191.2c-6.9-6.2-9.6-15.9-6.4-24.6c4.4-11.9 9.7-23.3 15.8-34.3l4.7-8.1c6.6-11 14-21.4 22.1-31.2c5.9-7.2 15.7-9.6 24.5-6.8l55.7 17.7c13.4-10.3 28.2-18.9 44-25.4l12.5-57.1c2-9.1 9-16.3 18.2-17.8C227.3 1.2 241.5 0 256 0s28.7 1.2 42.5 3.5c9.2 1.5 16.2 8.7 18.2 17.8l12.5 57.1c15.8 6.5 30.6 15.1 44 25.4l55.7-17.7c8.8-2.8 18.6-.3 24.5 6.8c8.1 9.8 15.5 20.2 22.1 31.2l4.7 8.1c6.1 11 11.4 22.4 15.8 34.3zM256 336a80 80 0 1 0 0-160 80 80 0 1 0 0 160z"/>
                    </svg>
                </li>
            </ul>
        </div>
    </aside>
	
    <aside id="aishop-top-small" class="navbar-border" style="display: none;">
        <div class="navbar-option">
            <div class="navbar-top d-flex flex-col" style="padding-right: 0; padding-left: 1.75rem; padding-top: .7rem;">
                <div class="d-flex align-items-center justify-content-around w-100">
                    <a class="py-5" href="/aishop/dashboard.htm">
                        <img style="width: 50%;" class="style-logo" src="/aishop/resources/assets/img/aishop_default/logo-icon.png" alt="AIShop - Logo Website">
                    </a>
                </div>
            </div>
            <div class="navbar-nav">
                <ul class="d-flex flex-col align-items-center p-m-none">
                    <li class="nav-item w-100 my-6-0">
                        <a class="nav-item--link d-flex align-items-center justify-content-around" href="/aishop/dashboard.htm">
                            <svg width='1rem' height='1rem' viewBox="0 0 576 512">
                                <path class="icon-hover" style="fill: none; stroke: #132144; stroke-width: 40px;" d="M575.8 255.5c0 18-15 32.1-32 32.1h-32l.7 160.2c0 2.7-.2 5.4-.5 8.1V472c0 22.1-17.9 40-40 40H456c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1H416 392c-22.1 0-40-17.9-40-40V448 384c0-17.7-14.3-32-32-32H256c-17.7 0-32 14.3-32 32v64 24c0 22.1-17.9 40-40 40H160 128.1c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2H104c-22.1 0-40-17.9-40-40V360c0-.9 0-1.9 .1-2.8V287.6H32c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z"/>
                            </svg>
                        </a>
                    </li>
                    <li class="nav-item w-100 my-6-0">
                        <span style="padding-left: 16px;" class="nav-subtitle nav-item--link">PAGES</span>
                    </li>
                    <li class="nav-item w-100 my-6-0">
                        <a class="nav-item--link d-flex align-items-center justify-content-around" href="/aishop/manager-products.htm">
                            <svg viewBox="0 0 448 512" height="1rem" width="1rem">
                                <path fill="#8799ac" style="stroke-width: 6px" d="M0 72C0 49.9 17.9 32 40 32H88c22.1 0 40 17.9 40 40v48c0 22.1-17.9 40-40 40H40c-22.1 0-40-17.9-40-40V72zM0 232c0-22.1 17.9-40 40-40H88c22.1 0 40 17.9 40 40v48c0 22.1-17.9 40-40 40H40c-22.1 0-40-17.9-40-40V232zM128 392v48c0 22.1-17.9 40-40 40H40c-22.1 0-40-17.9-40-40V392c0-22.1 17.9-40 40-40H88c22.1 0 40 17.9 40 40zM160 72c0-22.1 17.9-40 40-40h48c22.1 0 40 17.9 40 40v48c0 22.1-17.9 40-40 40H200c-22.1 0-40-17.9-40-40V72zM288 232v48c0 22.1-17.9 40-40 40H200c-22.1 0-40-17.9-40-40V232c0-22.1 17.9-40 40-40h48c22.1 0 40 17.9 40 40zM160 392c0-22.1 17.9-40 40-40h48c22.1 0 40 17.9 40 40v48c0 22.1-17.9 40-40 40H200c-22.1 0-40-17.9-40-40V392zM448 72v48c0 22.1-17.9 40-40 40H360c-22.1 0-40-17.9-40-40V72c0-22.1 17.9-40 40-40h48c22.1 0 40 17.9 40 40zM320 232c0-22.1 17.9-40 40-40h48c22.1 0 40 17.9 40 40v48c0 22.1-17.9 40-40 40H360c-22.1 0-40-17.9-40-40V232zM448 392v48c0 22.1-17.9 40-40 40H360c-22.1 0-40-17.9-40-40V392c0-22.1 17.9-40 40-40h48c22.1 0 40 17.9 40 40z"></path>
                            </svg>
                        </a>
                    </li>
                    <li class="nav-item w-100 my-6-0">
                        <a class="nav-item--link d-flex align-items-center justify-content-around" href="/aishop/verify-setting.htm">
                            <svg height="1rem" width="1rem" viewBox="0 0 448 512">
                                <path style="fill:#8799ac; stroke-width: 6px" d="M144 144v48H304V144c0-44.2-35.8-80-80-80s-80 35.8-80 80zM80 192V144C80 64.5 144.5 0 224 0s144 64.5 144 144v48h16c35.3 0 64 28.7 64 64V448c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V256c0-35.3 28.7-64 64-64H80z"/>
                            </svg>
                        </a>
                    </li>
                    <li class="nav-item w-100 my-6-0">
                        <a class="nav-item--link d-flex align-items-center justify-content-around" href="/aishop">
                            <svg height="1rem" width="1rem" viewBox="0 0 576 512">
                                <path style="fill:#8799ac; stroke-width: 6px" d="M288 32c-80.8 0-145.5 36.8-192.6 80.6C48.6 156 17.3 208 2.5 243.7c-3.3 7.9-3.3 16.7 0 24.6C17.3 304 48.6 356 95.4 399.4C142.5 443.2 207.2 480 288 480s145.5-36.8 192.6-80.6c46.8-43.5 78.1-95.4 93-131.1c3.3-7.9 3.3-16.7 0-24.6c-14.9-35.7-46.2-87.7-93-131.1C433.5 68.8 368.8 32 288 32zM144 256a144 144 0 1 1 288 0 144 144 0 1 1 -288 0zm144-64c0 35.3-28.7 64-64 64c-7.1 0-13.9-1.2-20.3-3.3c-5.5-1.8-11.9 1.6-11.7 7.4c.3 6.9 1.3 13.8 3.2 20.7c13.7 51.2 66.4 81.6 117.6 67.9s81.6-66.4 67.9-117.6c-11.1-41.5-47.8-69.4-88.6-71.1c-5.8-.2-9.2 6.1-7.4 11.7c2.1 6.4 3.3 13.2 3.3 20.3z"/>
                            </svg>
                        </a>
                    </li>
                </ul>
                <div class="navbar-setting">
                    <ul class="d-flex flex-col justify-content-evenly align-items-center p-m-none">
                        <li class="my-6-0">
                            <svg height="1rem" width = "1rem" style="cursor: pointer;" viewBox="0 0 576 512" title="Template">
                                <path style="fill:#8799ac; stroke-width: 6px;" d="M264.5 5.2c14.9-6.9 32.1-6.9 47 0l218.6 101c8.5 3.9 13.9 12.4 13.9 21.8s-5.4 17.9-13.9 21.8l-218.6 101c-14.9 6.9-32.1 6.9-47 0L45.9 149.8C37.4 145.8 32 137.3 32 128s5.4-17.9 13.9-21.8L264.5 5.2zM476.9 209.6l53.2 24.6c8.5 3.9 13.9 12.4 13.9 21.8s-5.4 17.9-13.9 21.8l-218.6 101c-14.9 6.9-32.1 6.9-47 0L45.9 277.8C37.4 273.8 32 265.3 32 256s5.4-17.9 13.9-21.8l53.2-24.6 152 70.2c23.4 10.8 50.4 10.8 73.8 0l152-70.2zm-152 198.2l152-70.2 53.2 24.6c8.5 3.9 13.9 12.4 13.9 21.8s-5.4 17.9-13.9 21.8l-218.6 101c-14.9 6.9-32.1 6.9-47 0L45.9 405.8C37.4 401.8 32 393.3 32 384s5.4-17.9 13.9-21.8l53.2-24.6 152 70.2c23.4 10.8 50.4 10.8 73.8 0z"/>
                            </svg>
                        </li>
                        <li class="my-6-0">
                            <svg height="1rem" width = "1rem" style="cursor: pointer;" viewBox="0 0 512 512" title="Setting">
                                <path style="fill:#8799ac; stroke-width: 6px;" d="M495.9 166.6c3.2 8.7 .5 18.4-6.4 24.6l-43.3 39.4c1.1 8.3 1.7 16.8 1.7 25.4s-.6 17.1-1.7 25.4l43.3 39.4c6.9 6.2 9.6 15.9 6.4 24.6c-4.4 11.9-9.7 23.3-15.8 34.3l-4.7 8.1c-6.6 11-14 21.4-22.1 31.2c-5.9 7.2-15.7 9.6-24.5 6.8l-55.7-17.7c-13.4 10.3-28.2 18.9-44 25.4l-12.5 57.1c-2 9.1-9 16.3-18.2 17.8c-13.8 2.3-28 3.5-42.5 3.5s-28.7-1.2-42.5-3.5c-9.2-1.5-16.2-8.7-18.2-17.8l-12.5-57.1c-15.8-6.5-30.6-15.1-44-25.4L83.1 425.9c-8.8 2.8-18.6 .3-24.5-6.8c-8.1-9.8-15.5-20.2-22.1-31.2l-4.7-8.1c-6.1-11-11.4-22.4-15.8-34.3c-3.2-8.7-.5-18.4 6.4-24.6l43.3-39.4C64.6 273.1 64 264.6 64 256s.6-17.1 1.7-25.4L22.4 191.2c-6.9-6.2-9.6-15.9-6.4-24.6c4.4-11.9 9.7-23.3 15.8-34.3l4.7-8.1c6.6-11 14-21.4 22.1-31.2c5.9-7.2 15.7-9.6 24.5-6.8l55.7 17.7c13.4-10.3 28.2-18.9 44-25.4l12.5-57.1c2-9.1 9-16.3 18.2-17.8C227.3 1.2 241.5 0 256 0s28.7 1.2 42.5 3.5c9.2 1.5 16.2 8.7 18.2 17.8l12.5 57.1c15.8 6.5 30.6 15.1 44 25.4l55.7-17.7c8.8-2.8 18.6-.3 24.5 6.8c8.1 9.8 15.5 20.2 22.1 31.2l4.7 8.1c6.1 11 11.4 22.4 15.8 34.3zM256 336a80 80 0 1 0 0-160 80 80 0 1 0 0 160z"/>
                            </svg>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </aside>
	
	<!-- End Aside Admin views -->
	
	
	<!-- Start Header Admin views -->
	
    <header id="aishop-header" class="header-border">
        <div class="container d-flex align-items-center">
            <div class="d-flex align-items-center" style="flex: 1;">
                <button id="aside-event" class="bg-none border-none" style="cursor: pointer;">
                    <svg style="margin: 3px 0px 0 0; display: block;" height="1rem" width="1rem" viewBox="0 0 320 512">
                        <path style="fill:#8799ac; stroke-width: 6px;" d="M267.5 440.6c9.5 7.9 22.8 9.7 34.1 4.4s18.4-16.6 18.4-29V96c0-12.4-7.2-23.7-18.4-29s-24.5-3.6-34.1 4.4l-192 160L64 241V96c0-17.7-14.3-32-32-32S0 78.3 0 96V416c0 17.7 14.3 32 32 32s32-14.3 32-32V271l11.5 9.6 192 160z"/>
                    </svg>
                </button>
                <div class="form-search d-flex align-items-center">
                    <button class="bg-none border-none" style="cursor: pointer; position: absolute; padding: 4px 0 0 15px; z-index: 100;">
                        <svg height=".8rem" width=".8rem" viewBox="0 0 512 512">
                            <path style="fill:#8799ac; stroke-width: 6px;" d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"/>
                        </svg>
                    </button>
                    <input class="form-control bg-none border-none" placeholder="Search in front" type="text">
                </div>
            </div>
            <div>
                <ul class="d-flex align-items-center">
                    <li class="item-header">
                        <button class="bg-none border-none" style="cursor: pointer;">
                            <svg height="1rem" width="1rem" viewBox="0 0 448 512">
                                <path style="fill:#8799ac; stroke-width: 6px;" d="M224 0c-17.7 0-32 14.3-32 32V49.9C119.5 61.4 64 124.2 64 200v33.4c0 45.4-15.5 89.5-43.8 124.9L5.3 377c-5.8 7.2-6.9 17.1-2.9 25.4S14.8 416 24 416H424c9.2 0 17.6-5.3 21.6-13.6s2.9-18.2-2.9-25.4l-14.9-18.6C399.5 322.9 384 278.8 384 233.4V200c0-75.8-55.5-138.6-128-150.1V32c0-17.7-14.3-32-32-32zm0 96h8c57.4 0 104 46.6 104 104v33.4c0 47.9 13.9 94.6 39.7 134.6H72.3C98.1 328 112 281.3 112 233.4V200c0-57.4 46.6-104 104-104h8zm64 352H224 160c0 17 6.7 33.3 18.7 45.3s28.3 18.7 45.3 18.7s33.3-6.7 45.3-18.7s18.7-28.3 18.7-45.3z"/>
                            </svg>
                        </button>
                    </li>
                    <li class="item-header ">
                        <div class="item-block p-relative">
                            <a id="showOption" class="item-link item-hover" href="#">
                                <div class="avatar">
                                    <img class="w-100 h-100 border-radius-100" src="/aishop/resources/assets/img/aishop_default/account__logo-default.png" alt="">
                                </div>
                            </a>
                            <div id="account" class="account-block dropped-down-block p-absolute">
                                <ul class="d-flex flex-col p-m-none">
                                    <li style="padding-top: 0 !important; margin-left: 12px !important;" class="account-option d-flex header-border py-5 pl-16 mx-2">
                                        <div class="avatar">
                                            <img class="w-100 h-100 border-radius-100" src="/aishop/resources/assets/img/aishop_default/account__logo-default.png" alt="">
                                        </div>
                                        <div style="margin-left: 7px;" class="d-flex flex-col flex-fill">
                                            <span class="account-name">Cao Văn Đông</span>
                                            <span class="account-email text_limit">caochungnam2002@gmail.com</span>
                                        </div>
                                    </li>
                                    <li class="account-option option-link">
                                        <a class="py-5 option-hover text-dark" style="padding-left: 16px !important;padding-right: 134px !important;" href="#">
                                            Profile & account
                                        </a>
                                    </li>
                                    <li class="account-option option-link">
                                        <a class="py-5 option-hover text-dark" style="padding-left: 16px !important;padding-right: 189px !important;" href="#">
                                            Settings
                                        </a>
                                    </li>
                                    <li class="account-option option-link">
                                        <a class="py-5 option-hover text-dark" style="padding-left: 16px !important;padding-right: 211px !important;" href="#">
                                            Help
                                        </a>
                                    </li>
                                    <li class="account-option option-link navbar-setting" style="padding: 12px 0 0 0 !important; margin: 0;">
                                        <a class="py-5 option-hover text-dark" style="padding-left: 16px !important;padding-right: 188px !important;" href="#">
                                            Sign out
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </header>
	
	<!-- End Header Admin views -->
	
	<!-- Start Main Content Admin Views -->
	<main id="aishop-content">
    <div id="add-prod__content" class="text-dark">
        <div class="content__header">
            <div class="header__breadcrumb">
                <p class="breadcrumb__root">Products /</p>
                <p class="breadcrumb__leaf">Edit product</p>
            </div>
            <h1 class="header__heading">Edit product</h1>
        </div>
        <!-- Form để chỉnh sửa sản phẩm -->
        <form action="edit-product.htm?id=${product.id}" method="POST">
            <div class="content__main">
                <div class="main__prod-info col-lg-7">
                    <div class="card">
                        <div class="card-body border_table">
                            <h3 class="prod-info__heading">Product information</h3>
                            <div class="border-divider"></div>
                            <!-- Product ID (thêm trường ID) -->
                            <div class="prod-info__name">
                                <p>ID Product</p>
                                <input class="prod-info__input" type="text" name="id" value="${product.id}" readonly required>
                            </div>
                            <!-- Product Name -->
                            <div class="prod-info__name">
                                <p>Name</p>
                                <input class="prod-info__input" placeholder="Shirt, T-shirt, etc." type="text" name="name" value="${product.name}" required>
                            </div>
                            <!-- Product Brand -->
                            <div class="prod-info__tp-wrapper">
                                <div class="tp-wrapper__trademark">
                                    <p>Brand</p>
                                    <input class="prod-info__input" placeholder="Brand Name" type="text" name="brand" value="${product.brand}" required>
                                </div>
                                <!-- Product Price -->
                                <div class="tp-wrapper__price">
                                    <p>Price</p>
                                    <div class="price__wrapper">
                                        <input class="prod-info__input" placeholder="0.00" type="text" name="price" value="${product.price}" required>
                                        <select id="currency" name="currency">
                                            <option value="vnd" selected>VND</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <!-- Product Description -->
                            <div class="prod-info__description">
                                <p>Description <span style="color:#919aa3; font-size: 13px;">(Optional)</span></p>
                                <textarea class="prod-info__input" placeholder="Type your input" cols="30" rows="10" name="description">${product.description}</textarea>
                            </div>
                            <button type="submit" class="btn btn-success">Update</button>
                        </div>
                    </div>
                </div>

                <div class="main__prod-media col-lg-5">
                    <div class="card">
                        <div class="card-body border_table">
                            <h3 class="prod-media__heading">Media</h3>
                            <div class="border-divider"></div>
                            <div class="pro-media__upload-wrapper">
                                <!-- Hiển thị ảnh hiện tại nếu có -->
                                <p>Current image: <span>${product.image != null ? product.image : 'No image uploaded'}</span></p>
                                <p>Choose file to upload</p>
                                <!-- Chọn ảnh mới nếu cần -->
                                <input class="input-upfile btn-upfile" type="file" id="input-upfile" name="image" accept="image/*">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</main>



    <!-- End Main Content Admin Views -->
	
	<!-- Start Footer Admin views -->
	
    <footer id="aishop-footer" style="height: auto;">
        <div class="d-flex navbar-setting align-items-center">
            <span style="font-size: .8125rem; margin-left: 19px;" class="text-dark flex-fill">© AIShop. 2023 at the furture.</span>
            <div>
                <ul class="d-flex" style="padding-left: 0; margin: 0;">
                    <li style="margin: 0 24px;" class="footer-contact">
                        <a href="" style="color: #677788; font-size: 14px;">
                            Website
                        </a>
                    </li>
                    <li style="margin: 0 24px;" class="footer-contact">
                        <a href="" style="color: #677788; font-size: 14px;">
                            Help
                        </a>
                    </li>
                    <li style="margin: 0 24px">
                        <a href="">
                            <svg style="margin-top: 3px" height="1rem" width="1rem" viewBox="0 0 448 512">
                                <path style="fill:#677788; stroke-width: 6px;" d="M0 80C0 53.5 21.5 32 48 32h96c26.5 0 48 21.5 48 48v96c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V80zM64 96v64h64V96H64zM0 336c0-26.5 21.5-48 48-48h96c26.5 0 48 21.5 48 48v96c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V336zm64 16v64h64V352H64zM304 32h96c26.5 0 48 21.5 48 48v96c0 26.5-21.5 48-48 48H304c-26.5 0-48-21.5-48-48V80c0-26.5 21.5-48 48-48zm80 64H320v64h64V96zM256 304c0-8.8 7.2-16 16-16h64c8.8 0 16 7.2 16 16s7.2 16 16 16h32c8.8 0 16-7.2 16-16s7.2-16 16-16s16 7.2 16 16v96c0 8.8-7.2 16-16 16H368c-8.8 0-16-7.2-16-16s-7.2-16-16-16s-16 7.2-16 16v64c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V304zM368 480a16 16 0 1 1 0-32 16 16 0 1 1 0 32zm64 0a16 16 0 1 1 0-32 16 16 0 1 1 0 32z"/>
                            </svg>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </footer>
    
    <!-- End Footer Admin views -->
    
    <script src="/aishop/resources/assets/js/general.js"></script>
    <script src="/aishop/resources/assets/js/event-click.js"></script>
</body>
</html>
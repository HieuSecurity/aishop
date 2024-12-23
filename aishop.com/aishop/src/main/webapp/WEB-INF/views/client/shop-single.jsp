<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- link css: External style -->
    <link rel="stylesheet" href="/aishop/resources/assets/css/homepage.css">
    <link rel="stylesheet" href="/aishop/resources/assets/css/general.css">

    <link rel="shortcut icon" type="image/x-icon" href="./favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <title>AIShop</title>
</head>
<body>
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
    <nav id="aishop-header" class="navbar navbar-expand">
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
                   
                </div>
            </div>
        </div>
    </nav>
    <!-- End Navbar Header -->

	<!-- Start Main Content -->
    <section class="bg-light">
        <div id="aishop-single-prod" class="container pb-5">
             <div class="row d-flex justify-content-between">
                <div class="prod__section-img col-lg-5 mt-5">
	                <div class="card mb-3">
	                    <img class="card-img img-fluid main-img-js" src="/aishop/resources/assets/img/pro-img/${product.image }" alt="Card image cap" id="product-detail">
	                </div>
	                <div class="row">
	                    <!--Start Controls-->
	                    <div class="col-1 align-self-center">
	                        <a role="button" class="slider-prev" onclick="plusSlider(-1)">
	                            <i class="text-dark fas fa-chevron-left"></i>
	                            <span class="sr-only">Previous</span>
	                        </a>
	                    </div>
	                    <!--End Controls-->
	                    <!--Start Carousel Wrapper-->
	                    <div id="multi-item-example" class="col-10 carousel slide carousel-multi-item" data-bs-ride="carousel">
	                        <!--Start Slides-->
	                        <div class="carousel-inner product-links-wap" role="listbox">
	
	                            <!--First slide-->
	                            <div class="carousel-item">
	                                <div class="row">
	                                    <div class="col-4">
	                                        <img class="card-img img-fluid" src="/aishop/resources/assets/img/pro-img/Picture1.png" alt="Product Image 1">
	                                    </div>
	                                    <div class="col-4">
	                                        <img class="card-img img-fluid" src="/aishop/resources/assets/img/pro-img/Picture1.png" alt="Product Image 2">

	                                    </div>
	                                    <div class="col-4">
	                                        <img class="card-img img-fluid" src="/aishop/resources/assets/img/pro-img/Picture1.png" alt="Product Image 3">
	                                    </div>
	                                </div>
	                            </div>
	                            <!--/.First slide-->
	
	                            <!--Second slide-->
                                <div class="carousel-item">
	                                <div class="row">
	                                    <div class="col-4">
	                                        <img class="card-img img-fluid" src="/aishop/resources/assets/img/pro-img/Picture1.png" alt="Product Image 1">
	                                    </div>
	                                    <div class="col-4">
	                                        <img class="card-img img-fluid" src="/aishop/resources/assets/img/pro-img/Picture2.png" alt="Product Image 2">

	                                    </div>
	                                    <div class="col-4">
	                                        <img class="card-img img-fluid" src="/aishop/resources/assets/img/pro-img/Picture2.png" alt="Product Image 3">

	                                    </div>
	                                </div>
	                            </div>
	                            <!--/.Second slide-->
	
	                            <!--Third slide-->
                                <div class="carousel-item">
	                                <div class="row">
	                                    <div class="col-4">
	                                        <img class="card-img img-fluid" src="/aishop/resources/assets/img/pro-img/Picture10.png" alt="Product Image 1">
	                                    </div>
	                                    <div class="col-4">
	                                        <img class="card-img img-fluid" src="/aishop/resources/assets/img/pro-img/Picture1.png" alt="Product Image 2">
	                                    </div>
	                                </div>
	                            </div>
	                            <!--/.Third slide-->
	                        </div>
	                        <!--End Slides-->
	                    </div>
	                    <!--End Carousel Wrapper-->
	                    <!--Start Controls-->
	                    <div class="col-1 align-self-center">
	                        <a role="button" class="slider-next" onclick="plusSlider(1)">
	                            <i class="text-dark fas fa-chevron-right"></i>
	                            <span class="sr-only">Next</span>
	                        </a>
	                    </div>
	                    <!--End Controls-->
	                </div>
	            </div>
                <div class="prod__section-text col-lg-7 mt-5">
	                <div class="card">
    <div class="card-body text-dark">
        <h1 style="margin-top: 0; margin-bottom: 20px;">${product.name}</h1>
        <p  style="color: #ff6600 !important; font-size: 22px !important;font-weight:700 !important">${product.price}<span>&#8363;</span></p>
        <p class="py-2">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
        </p>
        <ul class="list-inline">
            <li class="list-inline-item">
                <h6>Brand:</h6>
            </li>
            <li class="list-inline-item">
                <p class="text-muted"><strong>${product.brand}</strong></p>
            </li>
        </ul>
        <h6>Description:</h6>
        <p>${product.description}</p>

        <!-- Form để thêm vào giỏ hàng -->
        <form action="addToCart.htm" method="POST">
    <input type="hidden" name="productId" value="${product.id}" />
    <div class="row">
        <div class="col-auto">
            <ul class="list-inline pb-3">
                <li class="list-inline-item text-right">
                    Quantity
                    <input type="number" name="quantity" id="product-quantity" value="1" min="1">
                </li>
                <li class="list-inline-item">
                    <span class="btn btn-success" id="btn-minus">-</span>
                </li>
                <li class="list-inline-item">
                    <span class="badge bg-secondary" id="var-value">1</span>
                </li>
                <li class="list-inline-item">
                    <span class="btn btn-success" id="btn-plus">+</span>
                </li>
            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col d-grid">
            <button type="submit" class="btn btn-success btn-lg" name="submit" value="buy">Buy</button>
        </div>
        <div class="col d-grid">
            <button type="submit" class="btn btn-success btn-lg" name="submit" value="addtocart">Add To Cart</button>
        </div>
    </div>
</form>

<script>
    // JavaScript để thay đổi giá trị quantity khi nhấn nút + hoặc -
    document.getElementById("btn-plus").addEventListener("click", function() {
        var quantityInput = document.getElementById("product-quantity");
        var currentValue = parseInt(quantityInput.value);
        quantityInput.value = currentValue + 1;
    });

    document.getElementById("btn-minus").addEventListener("click", function() {
        var quantityInput = document.getElementById("product-quantity");
        var currentValue = parseInt(quantityInput.value);
        if (currentValue > 1) {
            quantityInput.value = currentValue - 1;
        }
    });
</script>

    </div>
</div>

            </div>
        </div>
    </section>
    <!-- End Main Content -->
	

    <!-- Start Footer-->
    <footer id="aishop-footer" class="bg-dark">
        <div class="container d-flex flex-col">
            <div class="row">
                <div class="col-md-4 pt-5">
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
    <script src="/aishop/resources/assets/js/style.js"></script>
    <script src="/aishop/resources/assets/js/shop-single.js"></script>
</body>
</html>
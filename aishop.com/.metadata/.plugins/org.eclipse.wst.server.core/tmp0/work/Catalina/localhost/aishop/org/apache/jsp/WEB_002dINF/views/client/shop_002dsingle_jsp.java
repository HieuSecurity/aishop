/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.82
 * Generated at: 2023-12-09 08:03:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.client;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class shop_002dsingle_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("	<meta charset=\"UTF-8\">\r\n");
      out.write("	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("	\r\n");
      out.write("	<!-- link css: External style -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/aishop/resources/assets/css/homepage.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/aishop/resources/assets/css/general.css\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"./favicon.ico\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css\">\r\n");
      out.write("    <title>AIShop</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<!-- Start Navbar Top -->\r\n");
      out.write("    <nav id=\"aishop-top\" class=\"navbar text_line bg-dark\">\r\n");
      out.write("        <div class=\"container d-block\">\r\n");
      out.write("            <div class=\"w-100 d-flex justify-content-between\">\r\n");
      out.write("                <div class=\"d-flex align-items-center\">\r\n");
      out.write("                    <svg class=\"mx-2\" height=\"1em\" viewBox=\"0 0 512 512\">\r\n");
      out.write("                        <path class=\"fill-light\" d=\"M48 64C21.5 64 0 85.5 0 112c0 15.1 7.1 29.3 19.2 38.4L236.8 313.6c11.4 8.5 27 8.5 38.4 0L492.8 150.4c12.1-9.1 19.2-23.3 19.2-38.4c0-26.5-21.5-48-48-48H48zM0 176V384c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V176L294.4 339.2c-22.8 17.1-54 17.1-76.8 0L0 176z\"/>\r\n");
      out.write("                    </svg>\r\n");
      out.write("                    <a class=\"text-light text-decoration-none\">AIFurtureShop@gmail.com</a>\r\n");
      out.write("                    <svg class=\"mx-2\" height=\"1em\" viewBox=\"0 0 512 512\">\r\n");
      out.write("                        <path class=\"fill-light\" d=\"M164.9 24.6c-7.7-18.6-28-28.5-47.4-23.2l-88 24C12.1 30.2 0 46 0 64C0 311.4 200.6 512 448 512c18 0 33.8-12.1 38.6-29.5l24-88c5.3-19.4-4.6-39.7-23.2-47.4l-96-40c-16.3-6.8-35.2-2.1-46.3 11.6L304.7 368C234.3 334.7 177.3 277.7 144 207.3L193.3 167c13.7-11.2 18.4-30 11.6-46.3l-40-96z\"/>\r\n");
      out.write("                    </svg>\r\n");
      out.write("                    <a class=\"text-light text-decoration-none\">010-020-0340</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"my-account-auth\">\r\n");
      out.write("                    <div class=\"p-relative\">\r\n");
      out.write("                        <a href=\"/aishop/sign-in.htm\" class=\"text-light\" style=\"font-size: 14px !important;\">Sign in </a>\r\n");
      out.write("                        /\r\n");
      out.write("                        <a href=\"/aishop/sign-up.htm\" class=\"text-light\" style=\"font-size: 14px !important;\"> Sign up</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"d-flex align-items-center\">\r\n");
      out.write("                    <a class=\"text-light mx-2\" href=\"https://www.facebook.com/groups/4916586575062018\" rel=\"sponsored\">\r\n");
      out.write("                        <svg height=\"1em\" viewBox=\"0 0 320 512\">\r\n");
      out.write("                            <path style=\"fill: var(--aishop-color-light);\" d=\"M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z\"/>\r\n");
      out.write("                        </svg>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a class=\"text-light mx-2\" href=\"https://www.instagram.com/\">\r\n");
      out.write("                        <svg height=\"1em\" viewBox=\"0 0 448 512\">\r\n");
      out.write("                            <path style=\"fill: var(--aishop-color-light);\" d=\"M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z\"/>\r\n");
      out.write("                        </svg>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a class=\"text-light mx-2\" href=\"https://twitter.com/\">\r\n");
      out.write("                        <svg height=\"1em\" viewBox=\"0 0 512 512\">\r\n");
      out.write("                            <path style=\"fill: var(--aishop-color-light);\" d=\"M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z\"/>\r\n");
      out.write("                        </svg>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a class=\"text-light mx-2\" href=\"https://www.linkedin.com/\">\r\n");
      out.write("                        <svg height=\"1em\" viewBox=\"0 0 448 512\">\r\n");
      out.write("                            <path style=\"fill: var(--aishop-color-light);\" d=\"M100.28 448H7.4V148.9h92.88zM53.79 108.1C24.09 108.1 0 83.5 0 53.8a53.79 53.79 0 0 1 107.58 0c0 29.7-24.1 54.3-53.79 54.3zM447.9 448h-92.68V302.4c0-34.7-.7-79.2-48.29-79.2-48.29 0-55.69 37.7-55.69 76.7V448h-92.78V148.9h89.08v40.8h1.3c12.4-23.5 42.69-48.3 87.88-48.3 94 0 111.28 61.9 111.28 142.3V448z\"/>\r\n");
      out.write("                        </svg>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("    <!-- End Navbar Top -->\r\n");
      out.write("\r\n");
      out.write("    <!-- Start Navbar Header -->\r\n");
      out.write("    <nav id=\"aishop-header\" class=\"navbar navbar-expand\">\r\n");
      out.write("        <div class=\"container d-flex justify-content-between align-items-center\">\r\n");
      out.write("            <a href=\"/aishop\" class=\"font-logo text-logo\">\r\n");
      out.write("                AIShop\r\n");
      out.write("            </a>\r\n");
      out.write("            <div class=\"nav-responsive p-relative\">\r\n");
      out.write("                <button id=\"show-navbar\" type=\"button\">\r\n");
      out.write("                    <svg height=\"1.5em\" width=\"1.4em\" viewBox=\"0 0 448 512\">\r\n");
      out.write("                        <path d=\"M0 96C0 78.3 14.3 64 32 64H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32C14.3 128 0 113.7 0 96zM0 256c0-17.7 14.3-32 32-32H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32c-17.7 0-32-14.3-32-32zM448 416c0 17.7-14.3 32-32 32H32c-17.7 0-32-14.3-32-32s14.3-32 32-32H416c17.7 0 32 14.3 32 32z\"/>\r\n");
      out.write("                    </svg>\r\n");
      out.write("                </button>\r\n");
      out.write("                <div id=\"nav-box\" class=\"d-flex justify-content-between p-absolute\" style=\"display: none;\">\r\n");
      out.write("                    <ul class=\"d-flex flex-col nav-list\">\r\n");
      out.write("                        <li class=\"nav-item my-2\">\r\n");
      out.write("                            <a class=\"my-2\" href=\"/aishop\" class=\"nav-link\">Home</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item my-2\">\r\n");
      out.write("                            <a class=\"my-2\" href=\"/aishop/about.htm\" class=\"nav-link\">About</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item my-2\">\r\n");
      out.write("                            <a class=\"my-2\" href=\"/aishop/shop.htm\" class=\"nav-link\">Shop</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item my-2\">\r\n");
      out.write("                            <a class=\"my-2\" href=\"/aishop/contact.htm\" class=\"nav-link\">Contact</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div id=\"navbar-main\" class=\"d-flex justify-content-between flex-fill\">\r\n");
      out.write("                <div class=\"nav-option flex-fill\">\r\n");
      out.write("                    <ul class=\"d-flex justify-content-between navbar-expand-row mx-2-auto\">\r\n");
      out.write("                        <li class=\"nav-item\">\r\n");
      out.write("                            <a href=\"/aishop\" class=\"nav-link\">Home</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item\">\r\n");
      out.write("                            <a href=\"/aishop/about.htm\" class=\"nav-link\">About</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item\">\r\n");
      out.write("                            <a href=\"/aishop/shop.htm\" class=\"nav-link\">Shop</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item\">\r\n");
      out.write("                            <a href=\"/aishop/contact.htm\" class=\"nav-link\">Contact</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"navbar  align-self-center d-flex\">\r\n");
      out.write("                    <a href=\"#\" class=\"nav-icon\">\r\n");
      out.write("                        <svg height=\"1em\" viewBox=\"0 0 512 512\">\r\n");
      out.write("                            <path d=\"M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z\"/>\r\n");
      out.write("                        </svg>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"/aishop/cart.htm\" class=\"nav-icon\">\r\n");
      out.write("                        <svg height=\"1em\" viewBox=\"0 0 576 512\">\r\n");
      out.write("                            <path d=\"M0 24C0 10.7 10.7 0 24 0H69.5c22 0 41.5 12.8 50.6 32h411c26.3 0 45.5 25 38.6 50.4l-41 152.3c-8.5 31.4-37 53.3-69.5 53.3H170.7l5.4 28.5c2.2 11.3 12.1 19.5 23.6 19.5H488c13.3 0 24 10.7 24 24s-10.7 24-24 24H199.7c-34.6 0-64.3-24.6-70.7-58.5L77.4 54.5c-.7-3.8-4-6.5-7.9-6.5H24C10.7 48 0 37.3 0 24zM128 464a48 48 0 1 1 96 0 48 48 0 1 1 -96 0zm336-48a48 48 0 1 1 0 96 48 48 0 1 1 0-96z\"/>\r\n");
      out.write("                        </svg>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <a href=\"/aishop/profile-user.htm\" class=\"nav-icon\">\r\n");
      out.write("                        <svg height=\"1em\" viewBox=\"0 0 448 512\">\r\n");
      out.write("                            <path d=\"M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-45.7 48C79.8 304 0 383.8 0 482.3C0 498.7 13.3 512 29.7 512H418.3c16.4 0 29.7-13.3 29.7-29.7C448 383.8 368.2 304 269.7 304H178.3z\"/>\r\n");
      out.write("                        </svg>\r\n");
      out.write("                    </a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("    <!-- End Navbar Header -->\r\n");
      out.write("\r\n");
      out.write("	<!-- Start Main Content -->\r\n");
      out.write("    <section class=\"bg-light\">\r\n");
      out.write("        <div id=\"aishop-single-prod\" class=\"container pb-5\">\r\n");
      out.write("             <div class=\"row d-flex justify-content-between\">\r\n");
      out.write("                <div class=\"prod__section-img col-lg-5 mt-5\">\r\n");
      out.write("	                <div class=\"card mb-3\">\r\n");
      out.write("	                    <img class=\"card-img img-fluid main-img-js\" src=\"/aishop/resources/assets/img/pro-img/Picture1.png\" alt=\"Card image cap\" id=\"product-detail\">\r\n");
      out.write("	                </div>\r\n");
      out.write("	                <div class=\"row\">\r\n");
      out.write("	                    <!--Start Controls-->\r\n");
      out.write("	                    <div class=\"col-1 align-self-center\">\r\n");
      out.write("	                        <a role=\"button\" class=\"slider-prev\" onclick=\"plusSlider(-1)\">\r\n");
      out.write("	                            <i class=\"text-dark fas fa-chevron-left\"></i>\r\n");
      out.write("	                            <span class=\"sr-only\">Previous</span>\r\n");
      out.write("	                        </a>\r\n");
      out.write("	                    </div>\r\n");
      out.write("	                    <!--End Controls-->\r\n");
      out.write("	                    <!--Start Carousel Wrapper-->\r\n");
      out.write("	                    <div id=\"multi-item-example\" class=\"col-10 carousel slide carousel-multi-item\" data-bs-ride=\"carousel\">\r\n");
      out.write("	                        <!--Start Slides-->\r\n");
      out.write("	                        <div class=\"carousel-inner product-links-wap\" role=\"listbox\">\r\n");
      out.write("	\r\n");
      out.write("	                            <!--First slide-->\r\n");
      out.write("	                            <div class=\"carousel-item\">\r\n");
      out.write("	                                <div class=\"row\">\r\n");
      out.write("	                                    <div class=\"col-4\">\r\n");
      out.write("	                                        <img class=\"card-img img-fluid\" src=\"/aishop/resources/assets/img/pro-img/Picture1.png\" alt=\"Product Image 1\">\r\n");
      out.write("	                                    </div>\r\n");
      out.write("	                                    <div class=\"col-4\">\r\n");
      out.write("	                                        <img class=\"card-img img-fluid\" src=\"/aishop/resources/assets/img/pro-img/Picture1.png\" alt=\"Product Image 2\">\r\n");
      out.write("\r\n");
      out.write("	                                    </div>\r\n");
      out.write("	                                    <div class=\"col-4\">\r\n");
      out.write("	                                        <img class=\"card-img img-fluid\" src=\"/aishop/resources/assets/img/pro-img/Picture1.png\" alt=\"Product Image 3\">\r\n");
      out.write("	                                    </div>\r\n");
      out.write("	                                </div>\r\n");
      out.write("	                            </div>\r\n");
      out.write("	                            <!--/.First slide-->\r\n");
      out.write("	\r\n");
      out.write("	                            <!--Second slide-->\r\n");
      out.write("                                <div class=\"carousel-item\">\r\n");
      out.write("	                                <div class=\"row\">\r\n");
      out.write("	                                    <div class=\"col-4\">\r\n");
      out.write("	                                        <img class=\"card-img img-fluid\" src=\"/aishop/resources/assets/img/pro-img/Picture1.png\" alt=\"Product Image 1\">\r\n");
      out.write("	                                    </div>\r\n");
      out.write("	                                    <div class=\"col-4\">\r\n");
      out.write("	                                        <img class=\"card-img img-fluid\" src=\"/aishop/resources/assets/img/pro-img/Picture2.png\" alt=\"Product Image 2\">\r\n");
      out.write("\r\n");
      out.write("	                                    </div>\r\n");
      out.write("	                                    <div class=\"col-4\">\r\n");
      out.write("	                                        <img class=\"card-img img-fluid\" src=\"/aishop/resources/assets/img/pro-img/Picture2.png\" alt=\"Product Image 3\">\r\n");
      out.write("\r\n");
      out.write("	                                    </div>\r\n");
      out.write("	                                </div>\r\n");
      out.write("	                            </div>\r\n");
      out.write("	                            <!--/.Second slide-->\r\n");
      out.write("	\r\n");
      out.write("	                            <!--Third slide-->\r\n");
      out.write("                                <div class=\"carousel-item\">\r\n");
      out.write("	                                <div class=\"row\">\r\n");
      out.write("	                                    <div class=\"col-4\">\r\n");
      out.write("	                                        <img class=\"card-img img-fluid\" src=\"/aishop/resources/assets/img/pro-img/Picture10.png\" alt=\"Product Image 1\">\r\n");
      out.write("	                                    </div>\r\n");
      out.write("	                                    <div class=\"col-4\">\r\n");
      out.write("	                                        <img class=\"card-img img-fluid\" src=\"/aishop/resources/assets/img/pro-img/Picture1.png\" alt=\"Product Image 2\">\r\n");
      out.write("	                                    </div>\r\n");
      out.write("	                                </div>\r\n");
      out.write("	                            </div>\r\n");
      out.write("	                            <!--/.Third slide-->\r\n");
      out.write("	                        </div>\r\n");
      out.write("	                        <!--End Slides-->\r\n");
      out.write("	                    </div>\r\n");
      out.write("	                    <!--End Carousel Wrapper-->\r\n");
      out.write("	                    <!--Start Controls-->\r\n");
      out.write("	                    <div class=\"col-1 align-self-center\">\r\n");
      out.write("	                        <a role=\"button\" class=\"slider-next\" onclick=\"plusSlider(1)\">\r\n");
      out.write("	                            <i class=\"text-dark fas fa-chevron-right\"></i>\r\n");
      out.write("	                            <span class=\"sr-only\">Next</span>\r\n");
      out.write("	                        </a>\r\n");
      out.write("	                    </div>\r\n");
      out.write("	                    <!--End Controls-->\r\n");
      out.write("	                </div>\r\n");
      out.write("	            </div>\r\n");
      out.write("                <div class=\"prod__section-text col-lg-7 mt-5\">\r\n");
      out.write("	                <div class=\"card\">\r\n");
      out.write("                        <div class=\"card-body text-dark\">\r\n");
      out.write("                            <h1 style=\"margin-top: 0; margin-bottom: 20px;\">Kem Lót Maybelline Fit Me Matte + Poreless Kiềm Dầu Spf20 30Ml</h1>\r\n");
      out.write("                            <p style=\"font-size: 22px;\">218,000<span>&#8363;</span></p>\r\n");
      out.write("                            <p class=\"py-2\">\r\n");
      out.write("                                <i class=\"fa-solid fa-star\"></i>\r\n");
      out.write("                                <i class=\"fa-solid fa-star\"></i>\r\n");
      out.write("                                <i class=\"fa-solid fa-star\"></i>\r\n");
      out.write("                                <i class=\"fa-solid fa-star\"></i>\r\n");
      out.write("                                <i class=\"fa-regular fa-star-half-stroke\"></i>\r\n");
      out.write("                                <span class=\"list-inline-item text-dark\">Rating 4.8 | 36 Comments</span>\r\n");
      out.write("                            </p>\r\n");
      out.write("                            <ul class=\"list-inline\">\r\n");
      out.write("	                            <li class=\"list-inline-item\">\r\n");
      out.write("	                                <h6>Brand:</h6>\r\n");
      out.write("	                            </li>\r\n");
      out.write("	                            <li class=\"list-inline-item\">\r\n");
      out.write("	                                <p class=\"text-muted\"><strong>Easy Wear</strong></p>\r\n");
      out.write("	                            </li>\r\n");
      out.write("	                        </ul>\r\n");
      out.write("                            <h6>Description:</h6>\r\n");
      out.write("                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.</p>\r\n");
      out.write("                            <ul class=\"list-inline\">\r\n");
      out.write("	                            <li class=\"list-inline-item\">\r\n");
      out.write("	                                <h6>Avaliable Color :</h6>\r\n");
      out.write("	                            </li>\r\n");
      out.write("	                            <li class=\"list-inline-item\">\r\n");
      out.write("	                                <p class=\"text-muted\"><strong>White / Black</strong></p>\r\n");
      out.write("	                            </li>\r\n");
      out.write("	                        </ul>\r\n");
      out.write("                            <h6>Specification:</h6>\r\n");
      out.write("                            <ul class=\"list-unstyled pb-3\">\r\n");
      out.write("	                            <li>Lorem ipsum dolor sit</li>\r\n");
      out.write("	                            <li>Amet, consectetur</li>\r\n");
      out.write("	                            <li>Adipiscing elit,set</li>\r\n");
      out.write("	                            <li>Duis aute irure</li>\r\n");
      out.write("	                            <li>Ut enim ad minim</li>\r\n");
      out.write("	                            <li>Dolore magna aliqua</li>\r\n");
      out.write("	                            <li>Excepteur sint</li>\r\n");
      out.write("	                        </ul>\r\n");
      out.write("                            <form action=\"\" method=\"GET\">\r\n");
      out.write("	                            <input type=\"hidden\" name=\"product-title\" value=\"Activewear\">\r\n");
      out.write("	                            <div class=\"row\">\r\n");
      out.write("	                                <!-- <div class=\"col-auto\">\r\n");
      out.write("	                                    <ul class=\"list-inline pb-3 size-btns-js\">\r\n");
      out.write("	                                        <li class=\"list-inline-item\">Size :\r\n");
      out.write("	                                            <input type=\"hidden\" name=\"product-size\" id=\"product-size\" value=\"S\">\r\n");
      out.write("	                                        </li>\r\n");
      out.write("	                                        <li class=\"list-inline-item\"><span class=\"btn btn-success btn-size\">S</span></li>\r\n");
      out.write("	                                        <li class=\"list-inline-item\"><span class=\"btn btn-success btn-size\">M</span></li>\r\n");
      out.write("	                                        <li class=\"list-inline-item\"><span class=\"btn btn-success btn-size\">L</span></li>\r\n");
      out.write("	                                        <li class=\"list-inline-item\"><span class=\"btn btn-success btn-size\">XL</span></li>\r\n");
      out.write("	                                    </ul>\r\n");
      out.write("	                                </div> -->\r\n");
      out.write("	                                <div class=\"col-auto\">\r\n");
      out.write("	                                    <ul class=\"list-inline pb-3\">\r\n");
      out.write("	                                        <li class=\"list-inline-item text-right\">\r\n");
      out.write("	                                            Quantity\r\n");
      out.write("	                                            <input type=\"hidden\" name=\"product-quanity\" id=\"product-quanity\" value=\"1\">\r\n");
      out.write("	                                        </li>\r\n");
      out.write("	                                        <li class=\"list-inline-item\"><span class=\"btn btn-success\" id=\"btn-minus\">-</span></li>\r\n");
      out.write("	                                        <li class=\"list-inline-item\"><span class=\"badge bg-secondary\" id=\"var-value\">1</span></li>\r\n");
      out.write("	                                        <li class=\"list-inline-item\"><span class=\"btn btn-success\" id=\"btn-plus\">+</span></li>\r\n");
      out.write("	                                    </ul>\r\n");
      out.write("	                                </div>\r\n");
      out.write("	                            </div>\r\n");
      out.write("	                            <div class=\"row\">\r\n");
      out.write("	                                <div class=\"col d-grid\">\r\n");
      out.write("	                                    <button type=\"submit\" class=\"btn btn-success btn-lg\" name=\"submit\" value=\"buy\">Buy</button>\r\n");
      out.write("	                                </div>\r\n");
      out.write("	                                <div class=\"col d-grid\">\r\n");
      out.write("	                                    <button type=\"submit\" class=\"btn btn-success btn-lg\" name=\"submit\" value=\"addtocard\">Add To Cart</button>\r\n");
      out.write("	                                </div>\r\n");
      out.write("	                            </div>\r\n");
      out.write("	                        </form>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("	            </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("    <!-- End Main Content -->\r\n");
      out.write("	\r\n");
      out.write("\r\n");
      out.write("    <!-- Start Footer-->\r\n");
      out.write("    <footer id=\"aishop-footer\" class=\"bg-dark\">\r\n");
      out.write("        <div class=\"container d-flex flex-col\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-md-4 pt-5\">\r\n");
      out.write("                    <h2 class=\"pb-3 font-logo text-logo border-light border-bottom\">AIShop</h2>\r\n");
      out.write("                    <ul class=\"text-light list-unstyled footer-link-list\">\r\n");
      out.write("                        <li>\r\n");
      out.write("                            97 D. Man Thien, Hiep Phu, District 9, Ho Chi Minh City 70000, Vietnam\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("	                        <svg class=\"mx-2\" height=\"1em\" viewBox=\"0 0 512 512\">\r\n");
      out.write("		                        <path class=\"fill-light\" d=\"M164.9 24.6c-7.7-18.6-28-28.5-47.4-23.2l-88 24C12.1 30.2 0 46 0 64C0 311.4 200.6 512 448 512c18 0 33.8-12.1 38.6-29.5l24-88c5.3-19.4-4.6-39.7-23.2-47.4l-96-40c-16.3-6.8-35.2-2.1-46.3 11.6L304.7 368C234.3 334.7 177.3 277.7 144 207.3L193.3 167c13.7-11.2 18.4-30 11.6-46.3l-40-96z\"/>\r\n");
      out.write("		                    </svg>\r\n");
      out.write("                            012-020-0340\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("		                    <svg class=\"mx-2\" height=\"1em\" viewBox=\"0 0 512 512\">\r\n");
      out.write("		                        <path class=\"fill-light\" d=\"M48 64C21.5 64 0 85.5 0 112c0 15.1 7.1 29.3 19.2 38.4L236.8 313.6c11.4 8.5 27 8.5 38.4 0L492.8 150.4c12.1-9.1 19.2-23.3 19.2-38.4c0-26.5-21.5-48-48-48H48zM0 176V384c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V176L294.4 339.2c-22.8 17.1-54 17.1-76.8 0L0 176z\"/>\r\n");
      out.write("		                    </svg>\r\n");
      out.write("                            AIFurtureShop@gmail.com\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-4 pt-5\">\r\n");
      out.write("                    <h2 class=\"pb-3 font-logo border-light border-bottom text-light\">Products</h2>\r\n");
      out.write("                    <ul class=\"text-light list-unstyled footer-link-list\">\r\n");
      out.write("                        <li>\r\n");
      out.write("                            Cleanser\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            Lipstick\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            Sunscreen\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            some other brands\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-4 pt-5\">\r\n");
      out.write("                    <h2 class=\"pb-3 font-logo border-light border-bottom text-light\">Infomations</h2>\r\n");
      out.write("                    <ul class=\"text-light list-unstyled footer-link-list\">\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"/aishop\">Home</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                        	<a href=\"/aishop/about.htm\">About</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                        	<a href=\"/aishop/contact.htm\">Location</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                        	<a href=\"/aishop/contact.htm\">Contact</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"pt-2\" style=\"background-color: #1e1b1b;\">\r\n");
      out.write("            <div class=\"container col-12\">\r\n");
      out.write("                <p class=\"text-left text-light footer-bottom\">\r\n");
      out.write("                    Demo © 2023 AIShop Web \r\n");
      out.write("                    | Designed by \r\n");
      out.write("                    <a rel=\"sponsored\" href=\"/aishop/contact.htm\">Group 07</a>\r\n");
      out.write("                </p>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </footer>\r\n");
      out.write("    <script src=\"/aishop/resources/assets/js/style.js\"></script>\r\n");
      out.write("    <script src=\"/aishop/resources/assets/js/shop-single.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

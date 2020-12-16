<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url value="/login" var="loginUrl"/>
<c:url value="/logout" var="logoutUrl"/>
<%--<link href="<c:url value="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"/>" rel="stylesheet"--%>
<%--      id="bootstrap-css">--%>
<%--<script src="<c:url value="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"/>"></script>--%>
<script src="<c:url value="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>"></script>
<!------ Include the above in your HEAD tag ---------->

<%--<link href="<c:url value="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>" rel="stylesheet"--%>
<%--      id="bootstrap-css">--%>
<%--<script src="<c:url value="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"/>"></script>--%>
<script src="<c:url value="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>"></script>
<!------ Include the above in your HEAD tag ---------->
<head>
    <title>User Info</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>">
    <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"/>"></script>
    <script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"/>"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/home/styles/bootstrap4/bootstrap.min.css"/>">
    <link href="<c:url value="/resources/home/plugins/font-awesome-4.7.0/css/font-awesome.min.css"/>" rel="stylesheet"
          type="text/css">
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/resources/home/plugins/OwlCarousel2-2.2.1/owl.carousel.css"/>">
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/resources/home/plugins/OwlCarousel2-2.2.1/owl.theme.default.css"/>">
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/resources/home/plugins/OwlCarousel2-2.2.1/animate.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/home/styles/main_styles.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/home/styles/responsive.css"/>">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        .profile-img .file {
            position: relative;
            overflow: hidden;
            margin-top: 3%;
            width: 70%;
            border: none;
            border-radius: 0;
            font-size: 15px;
            background: #212529b8;
        }

        .profile-img .file .in {
            position: absolute;
            opacity: 0;
            right: 0;
            top: 0;
        }

        #bookTour {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #bookTour td,
        #bookTour th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #bookTour tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #bookTour tr:hover {
            background-color: #ddd;
        }

        #bookTour th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #fa9e1b;
            color: white;
        }

        #bookTour1 {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #bookTour1 td,
        #bookTour1 th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #bookTour1 tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #bookTour1 tr:hover {
            background-color: #ddd;
        }

        #bookTour1 th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #fa9e1b;
            color: white;
        }
    </style>

</head>
<body>
<div class="super_container">

    <!-- Header -->

    <header class="header">

        <!-- Top Bar -->

        <div class="top_bar">
            <div class="container">
                <div class="row">
                    <div class="col d-flex flex-row">
                        <div class="phone">+45 345 3324 56789</div>
                        <div class="social">
                            <ul class="social_list">
                                <li class="social_list_item"><a href="#"><i class="fa fa-pinterest"
                                                                            aria-hidden="true"></i></a></li>
                                <li class="social_list_item"><a href="#"><i class="fa fa-facebook"
                                                                            aria-hidden="true"></i></a></li>
                                <li class="social_list_item"><a href="#"><i class="fa fa-twitter"
                                                                            aria-hidden="true"></i></a></li>
                                <li class="social_list_item"><a href="#"><i class="fa fa-dribbble"
                                                                            aria-hidden="true"></i></a></li>
                                <li class="social_list_item"><a href="#"><i class="fa fa-behance"
                                                                            aria-hidden="true"></i></a></li>
                                <li class="social_list_item"><a href="#"><i class="fa fa-linkedin"
                                                                            aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                        <c:choose>
                            <c:when test="${empty dto}">
                                <div class="user_box ml-auto">
                                    <div class="user_box_login user_box_link"><a href="${loginUrl}">login</a></div>
                                    <div class="user_box_register user_box_link"><a href="#">register</a></div>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="user_box ml-auto">
                                    <div class="user_box_login user_box_link"><a
                                            href="/home/user_info">Welcome, ${dto.user_Name}</a></div>
                                    <div class="user_box_register user_box_link"><a href="${logoutUrl}">logout</a></div>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main Navigation -->

        <nav class="main_nav">
            <div class="container">
                <div class="row">
                    <div class="col main_nav_col d-flex flex-row align-items-center justify-content-start">
                        <div class="logo_container">
                            <div class="logo"><a href="#"><img src="<c:url value="/resources/home/images/logo.png"/>"
                                                               alt="">travelix</a></div>
                        </div>
                        <div class="main_nav_container ml-auto">
                            <ul class="main_nav_list">
                                <li class="main_nav_item"><a href="#">home</a></li>
                                <li class="main_nav_item"><a href="#">about us</a></li>
                                <li class="main_nav_item"><a href="#">offers</a></li>
                                <li class="main_nav_item"><a href="#">news</a></li>
                                <li class="main_nav_item"><a href="#">contact</a></li>
                            </ul>
                        </div>
                        <div class="content_search ml-lg-0 ml-auto">
                            <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
                                 xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                 width="17px" height="17px" viewBox="0 0 512 512" enable-background="new 0 0 512 512"
                                 xml:space="preserve">
								<g>
                                    <g>
                                        <g>
                                            <path class="mag_glass" fill="#FFFFFF" d="M78.438,216.78c0,57.906,22.55,112.343,63.493,153.287c40.945,40.944,95.383,63.494,153.287,63.494
											s112.344-22.55,153.287-63.494C489.451,329.123,512,274.686,512,216.78c0-57.904-22.549-112.342-63.494-153.286
											C407.563,22.549,353.124,0,295.219,0c-57.904,0-112.342,22.549-153.287,63.494C100.988,104.438,78.439,158.876,78.438,216.78z
											M119.804,216.78c0-96.725,78.69-175.416,175.415-175.416s175.418,78.691,175.418,175.416
											c0,96.725-78.691,175.416-175.416,175.416C198.495,392.195,119.804,313.505,119.804,216.78z"/>
                                        </g>
                                    </g>
                                    <g>
                                        <g>
                                            <path class="mag_glass" fill="#FFFFFF" d="M6.057,505.942c4.038,4.039,9.332,6.058,14.625,6.058s10.587-2.019,14.625-6.058L171.268,369.98
											c8.076-8.076,8.076-21.172,0-29.248c-8.076-8.078-21.172-8.078-29.249,0L6.057,476.693
											C-2.019,484.77-2.019,497.865,6.057,505.942z"/>
                                        </g>
                                    </g>
                                </g>
							</svg>
                        </div>

                        <form id="search_form" class="search_form bez_1">
                            <input type="search" class="search_content_input bez_1">
                        </form>

                        <div class="hamburger">
                            <i class="fa fa-bars trans_200"></i>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

    </header>

    <div class="menu trans_500">
        <div class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
            <div class="menu_close_container">
                <div class="menu_close"></div>
            </div>
            <div class="logo menu_logo"><a href="#"><img src="<c:url value="/resources/home/images/logo.png"/>" alt=""></a>
            </div>
            <ul>
                <li class="menu_item"><a href="#">home</a></li>
                <li class="menu_item"><a href="#">about us</a></li>
                <li class="menu_item"><a href="#">offers</a></li>
                <li class="menu_item"><a href="#">news</a></li>
                <li class="menu_item"><a href="#">contact</a></li>
            </ul>
        </div>
    </div>

    <!-- Home -->

    <div class="home">

        <!-- Home Slider -->

        <div class="home_slider_container">

            <div class="owl-carousel owl-theme home_slider">

                <!-- Slider Item -->
                <div class="owl-item home_slider_item">
                    <!-- Image by https://unsplash.com/@anikindimitry -->
                    <div class="home_slider_background"
                         style="background-image:url(<c:url value="/resources/home/images/home_slider.jpg"/>)"></div>

                    <div class="home_slider_content text-center">
                        <div class="home_slider_content_inner" data-animation-in="flipInX"
                             data-animation-out="animate-out fadeOut">
                            <h1>discover</h1>
                            <h1>the world</h1>
                            <div class="button home_slider_button">
                                <div class="button_bcg"></div>
                                <a href="#">explore now<span></span><span></span><span></span></a></div>
                        </div>
                    </div>
                </div>

                <!-- Slider Item -->
                <div class="owl-item home_slider_item">
                    <div class="home_slider_background"
                         style="background-image:url(<c:url value="/resources/home/images/home_slider.jpg"/>)"></div>

                    <div class="home_slider_content text-center">
                        <div class="home_slider_content_inner" data-animation-in="flipInX"
                             data-animation-out="animate-out fadeOut">
                            <h1>discover</h1>
                            <h1>the world</h1>
                            <div class="button home_slider_button">
                                <div class="button_bcg"></div>
                                <a href="#">explore now<span></span><span></span><span></span></a></div>
                        </div>
                    </div>
                </div>

                <!-- Slider Item -->
                <div class="owl-item home_slider_item">
                    <div class="home_slider_background"
                         style="background-image:url(<c:url value="/resources/home/images/home_slider.jpg"/>)"></div>

                    <div class="home_slider_content text-center">
                        <div class="home_slider_content_inner" data-animation-in="flipInX"
                             data-animation-out="animate-out fadeOut">
                            <h1>discover</h1>
                            <h1>the world</h1>
                            <div class="button home_slider_button">
                                <div class="button_bcg"></div>
                                <a href="#">explore now<span></span><span></span><span></span></a></div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- Home Slider Nav - Prev -->
            <div class="home_slider_nav home_slider_prev">
                <svg version="1.1" id="Layer_2" xmlns="http://www.w3.org/2000/svg"
                     xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                     width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33"
                     xml:space="preserve">
					<defs>
                        <linearGradient id='home_grad_prev'>
                            <stop offset='0%' stop-color='#fa9e1b'/>
                            <stop offset='100%' stop-color='#8d4fff'/>
                        </linearGradient>
                    </defs>
                    <path class="nav_path" fill="#F3F6F9" d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
					M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
					C22.545,2,26,5.541,26,9.909V23.091z"/>
                    <polygon class="nav_arrow" fill="#F3F6F9" points="15.044,22.222 16.377,20.888 12.374,16.885 16.377,12.882 15.044,11.55 9.708,16.885 11.04,18.219
					11.042,18.219 "/>
				</svg>
            </div>

            <!-- Home Slider Nav - Next -->
            <div class="home_slider_nav home_slider_next">
                <svg version="1.1" id="Layer_3" xmlns="http://www.w3.org/2000/svg"
                     xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                     width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33"
                     xml:space="preserve">
					<defs>
                        <linearGradient id='home_grad_next'>
                            <stop offset='0%' stop-color='#fa9e1b'/>
                            <stop offset='100%' stop-color='#8d4fff'/>
                        </linearGradient>
                    </defs>
                    <path class="nav_path" fill="#F3F6F9" d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
				M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
				C22.545,2,26,5.541,26,9.909V23.091z"/>
                    <polygon class="nav_arrow" fill="#F3F6F9" points="13.044,11.551 11.71,12.885 15.714,16.888 11.71,20.891 13.044,22.224 18.379,16.888 17.048,15.554
				17.046,15.554 "/>
				</svg>
            </div>

            <!-- Home Slider Dots -->

            <div class="home_slider_dots">
                <ul id="home_slider_custom_dots" class="home_slider_custom_dots">
                    <li class="home_slider_custom_dot active">
                        <div></div>
                        01.
                    </li>
                    <li class="home_slider_custom_dot">
                        <div></div>
                        02.
                    </li>
                    <li class="home_slider_custom_dot">
                        <div></div>
                        03.
                    </li>
                </ul>
            </div>

        </div>

    </div>

    <!-- Search -->

    <div class="search">


        <!-- Search Contents -->

        <div class="container fill_height">
            <div class="row fill_height">
                <div class="col fill_height">

                    <!-- Search Tabs -->

                    <div class="search_tabs_container">
                        <div class="search_tabs d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
                            <div class="search_tab active d-flex flex-row align-items-center justify-content-lg-center justify-content-start">
                                <img src="<c:url value="/resources/home/images/suitcase.png"/>"
                                     alt=""><span>hotels</span></div>
                            <div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start">
                                <img src="<c:url value="/resources/home/images/bus.png"/>" alt="">car rentals
                            </div>
                            <div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start">
                                <img src="<c:url value="/resources/home/images/departure.png"/>" alt="">flights
                            </div>
                            <div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start">
                                <img src="<c:url value="/resources/home/images/island.png"/>" alt="">trips
                            </div>
                            <div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start">
                                <img src="<c:url value="/resources/home/images/cruise.png"/>" alt="">cruises
                            </div>
                            <div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start">
                                <img src="<c:url value="/resources/home/images/diving.png"/>" alt="">activities
                            </div>
                        </div>
                    </div>

                    <!-- Search Panel -->

                    <div class="search_panel active">
                        <form action="#" id="search_form_1"
                              class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
                            <div class="search_item">
                                <div>destination</div>
                                <input type="text" class="destination search_input" required="required">
                            </div>
                            <div class="search_item">
                                <div>check in</div>
                                <input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>check out</div>
                                <input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>adults</div>
                                <select name="adults" id="adults_1" class="dropdown_item_select search_input">
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <div class="search_item">
                                <div>children</div>
                                <select name="children" id="children_1" class="dropdown_item_select search_input">
                                    <option>0</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <button class="button search_button">search<span></span><span></span><span></span></button>
                        </form>
                    </div>

                    <!-- Search Panel -->

                    <div class="search_panel">
                        <form action="#" id="search_form_2"
                              class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
                            <div class="search_item">
                                <div>destination</div>
                                <input type="text" class="destination search_input" required="required">
                            </div>
                            <div class="search_item">
                                <div>check in</div>
                                <input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>check out</div>
                                <input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>adults</div>
                                <select name="adults" id="adults_2" class="dropdown_item_select search_input">
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <div class="search_item">
                                <div>children</div>
                                <select name="children" id="children_2" class="dropdown_item_select search_input">
                                    <option>0</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <button class="button search_button">search<span></span><span></span><span></span></button>
                        </form>
                    </div>

                    <!-- Search Panel -->

                    <div class="search_panel">
                        <form action="#" id="search_form_3"
                              class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
                            <div class="search_item">
                                <div>destination</div>
                                <input type="text" class="destination search_input" required="required">
                            </div>
                            <div class="search_item">
                                <div>check in</div>
                                <input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>check out</div>
                                <input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>adults</div>
                                <select name="adults" id="adults_3" class="dropdown_item_select search_input">
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <div class="search_item">
                                <div>children</div>
                                <select name="children" id="children_3" class="dropdown_item_select search_input">
                                    <option>0</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <button class="button search_button">search<span></span><span></span><span></span></button>
                        </form>
                    </div>

                    <!-- Search Panel -->

                    <div class="search_panel">
                        <form action="#" id="search_form_4"
                              class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
                            <div class="search_item">
                                <div>destination</div>
                                <input type="text" class="destination search_input" required="required">
                            </div>
                            <div class="search_item">
                                <div>check in</div>
                                <input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>check out</div>
                                <input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>adults</div>
                                <select name="adults" id="adults_4" class="dropdown_item_select search_input">
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <div class="search_item">
                                <div>children</div>
                                <select name="children" id="children_4" class="dropdown_item_select search_input">
                                    <option>0</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <button class="button search_button">search<span></span><span></span><span></span></button>
                        </form>
                    </div>

                    <!-- Search Panel -->

                    <div class="search_panel">
                        <form action="#" id="search_form_5"
                              class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
                            <div class="search_item">
                                <div>destination</div>
                                <input type="text" class="destination search_input" required="required">
                            </div>
                            <div class="search_item">
                                <div>check in</div>
                                <input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>check out</div>
                                <input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>adults</div>
                                <select name="adults" id="adults_5" class="dropdown_item_select search_input">
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <div class="search_item">
                                <div>children</div>
                                <select name="children" id="children_5" class="dropdown_item_select search_input">
                                    <option>0</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <button class="button search_button">search<span></span><span></span><span></span></button>
                        </form>
                    </div>

                    <!-- Search Panel -->

                    <div class="search_panel">
                        <form action="#" id="search_form_6"
                              class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
                            <div class="search_item">
                                <div>destination</div>
                                <input type="text" class="destination search_input" required="required">
                            </div>
                            <div class="search_item">
                                <div>check in</div>
                                <input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>check out</div>
                                <input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>adults</div>
                                <select name="adults" id="adults_6" class="dropdown_item_select search_input">
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <div class="search_item">
                                <div>children</div>
                                <select name="children" id="children_6" class="dropdown_item_select search_input">
                                    <option>0</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <button class="button search_button">search<span></span><span></span><span></span></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Main-->
    <br/><br/>
    <h2 style="padding-left: 10%;">HỒ SƠ TÀI KHOẢN</h2>
    <hr>
    <div class="container bootstrap snippet">
        <div class="row">
            <div class="col-sm-3">
                <!--left col-->

                <div class="text-center">
                    <div class="profile-img">
                        <img src="data:image;base64,${dto.base64Image}" class="avatar img-circle img-thumbnail"
                             alt="avatar">
                        <h3>${dto.user_Fullname}</h3>
                    </div>
                </div>
                <br>

            </div>
            <!--/col-3-->
            <div class="col-sm-9">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#home">Thông tin</a></li>
                    <li><a data-toggle="tab" href="#list">Danh sách các tour đã đăng ký</a></li>
                    <li><a data-toggle="tab" href="#listwait">Danh sách các tour đang chờ</a></li>
                </ul>


                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <form class="form" action="##" method="post" id="registrationForm">
                            <div class="form-group">

                                <div class="col-xs-12">
                                    <label>
                                        <h4>Họ và tên: ${dto.user_Fullname}</h4>
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">

                                <div class="col-xs-12">
                                    <label>
                                        <input type="hidden" id="gender" value="${dto.user_Gender}">
                                        <h4 id="gender_value" onload="load()"></h4>
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">

                                <div class="col-xs-12">
                                    <label>
                                        <h4>Số điện thoại: ${dto.user_Phone}</h4>
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-12">
                                    <label>
                                        <h4>Email: ${dto.user_Email}</h4>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <br>
                                    <table border="0">
                                        <tr>
                                            <td>
                                                <a class="btn btn-lg" style="background-color: #fa9e1b; color: white;"
                                                   href="/home/user_info/update"><i
                                                        class="glyphicon glyphicon-user"></i> Chỉnh sửa thông tin cá
                                                    nhân</a>
                                            </td>
                                            <td>
                                                <a class="btn btn-lg" style="background-color: #fa9e1b; color: white;"
                                                   href="/home/user_info/update"><i
                                                        class="glyphicon glyphicon-pencil"></i> Chỉnh sửa thông tin tài
                                                    khoản</a>
                                            </td>
                                        </tr>
                                    </table>
                                    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                                </div>
                            </div>
                        </form>
                    </div>

                    <!--settings-->
                    <div class="tab-pane" id="list">
                        <form class="form">
                            <br/><br/>
                            <table id="bookTour">
                                <thead>
                                <tr>
                                    <th>Giá</th>
                                    <th>Ngày đăng ký</th>
                                    <th>Số lượng trẻ em</th>
                                    <th>Số lượng người lớn</th>
                                    <th>Trạng thái thanh toán</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="list" items="${listBookTour}">
                                    <tr>
                                        <td>${list.price}</td>
                                        <td>${list.createDate}</td>
                                        <td>${list.numChild}</td>
                                        <td>${list.numAdult}</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${list.payStatus == 1}">
                                                    <p>Đã thanh toán</p>
                                                </c:when>
                                                <c:when test="${list.payStatus == 0}">
                                                    <p>Chưa thanh toán</p>
                                                    <%-- Làm gì đó ở đây khi điều kiện 2 đúng  --%>
                                                </c:when>
                                                <c:otherwise>
                                                    <p>Chưa thanh toán</p>
                                                    <%-- Câu lệnh sẽ được thực thi khi tất cả các điều kiện tại <c:when> ở trên sai.  --%>
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                        </form>
                    </div>
                    <div class="tab-pane" id="listwait">
                            <br/><br/>
                            <table id="bookTour1">
                                <thead>
                                <tr>
                                    <th>Giá</th>
                                    <th>Ngày đăng ký</th>
                                    <th>Số lượng trẻ em</th>
                                    <th>Số lượng người lớn</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="list" items="${listBookTourWait}">
                                    <tr>
                                        <td>${list.price}</td>
                                        <td>${list.createDate}</td>
                                        <td>${list.numChild}</td>
                                        <td>${list.numAdult}</td>
                                        <td>
                                            <button class="btn btn-lg btn-danger" onclick="handleDelete(${list.registration_Id})">
                                                <i class="glyphicon glyphicon-remove"></i>Hủy đặt
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->

    <footer class="footer">
        <div class="container">
            <div class="row">

                <!-- Footer Column -->
                <div class="col-lg-3 footer_column">
                    <div class="footer_col">
                        <div class="footer_content footer_about">
                            <div class="logo_container footer_logo">
                                <div class="logo"><a href="#"><img
                                        src="<c:url value="/resources/home/images/logo.png"/>" alt="">travelix</a></div>
                            </div>
                            <p class="footer_about_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Vivamus quis vu lputate eros, iaculis consequat nisl. Nunc et suscipit urna. Integer
                                eleme ntum orci eu vehicula pretium.</p>
                            <ul class="footer_social_list">
                                <li class="footer_social_item"><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li class="footer_social_item"><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                <li class="footer_social_item"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li class="footer_social_item"><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li class="footer_social_item"><a href="#"><i class="fa fa-behance"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Footer Column -->
                <div class="col-lg-3 footer_column">
                    <div class="footer_col">
                        <div class="footer_title">blog posts</div>
                        <div class="footer_content footer_blog">

                            <!-- Footer blog item -->
                            <div class="footer_blog_item clearfix">
                                <div class="footer_blog_image"><img
                                        src="<c:url value="/resources/home/images/footer_blog_1.jpg"/>"
                                        alt="https://unsplash.com/@avidenov"></div>
                                <div class="footer_blog_content">
                                    <div class="footer_blog_title"><a href="blog.html">Travel with us this year</a>
                                    </div>
                                    <div class="footer_blog_date">Nov 29, 2017</div>
                                </div>
                            </div>

                            <!-- Footer blog item -->
                            <div class="footer_blog_item clearfix">
                                <div class="footer_blog_image"><img
                                        src="<c:url value="/resources/home/images/footer_blog_2.jpg"/>"
                                        alt="https://unsplash.com/@deannaritchie"></div>
                                <div class="footer_blog_content">
                                    <div class="footer_blog_title"><a href="blog.html">New destinations for you</a>
                                    </div>
                                    <div class="footer_blog_date">Nov 29, 2017</div>
                                </div>
                            </div>

                            <!-- Footer blog item -->
                            <div class="footer_blog_item clearfix">
                                <div class="footer_blog_image"><img
                                        src="<c:url value="/resources/home/images/footer_blog_3.jpg"/>"
                                        alt="https://unsplash.com/@bergeryap87"></div>
                                <div class="footer_blog_content">
                                    <div class="footer_blog_title"><a href="blog.html">Travel with us this year</a>
                                    </div>
                                    <div class="footer_blog_date">Nov 29, 2017</div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- Footer Column -->
                <div class="col-lg-3 footer_column">
                    <div class="footer_col">
                        <div class="footer_title">tags</div>
                        <div class="footer_content footer_tags">
                            <ul class="tags_list clearfix">
                                <li class="tag_item"><a href="#">design</a></li>
                                <li class="tag_item"><a href="#">fashion</a></li>
                                <li class="tag_item"><a href="#">music</a></li>
                                <li class="tag_item"><a href="#">video</a></li>
                                <li class="tag_item"><a href="#">party</a></li>
                                <li class="tag_item"><a href="#">photography</a></li>
                                <li class="tag_item"><a href="#">adventure</a></li>
                                <li class="tag_item"><a href="#">travel</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Footer Column -->
                <div class="col-lg-3 footer_column">
                    <div class="footer_col">
                        <div class="footer_title">contact info</div>
                        <div class="footer_content footer_contact">
                            <ul class="contact_info_list">
                                <li class="contact_info_item d-flex flex-row">
                                    <div>
                                        <div class="contact_info_icon"><img
                                                src="<c:url value="/resources/home/images/placeholder.svg"/>" alt="">
                                        </div>
                                    </div>
                                    <div class="contact_info_text">4127 Raoul Wallenber 45b-c Gibraltar</div>
                                </li>
                                <li class="contact_info_item d-flex flex-row">
                                    <div>
                                        <div class="contact_info_icon"><img
                                                src="<c:url value="/resources/home/images/phone-call.svg"/>" alt="">
                                        </div>
                                    </div>
                                    <div class="contact_info_text">2556-808-8613</div>
                                </li>
                                <li class="contact_info_item d-flex flex-row">
                                    <div>
                                        <div class="contact_info_icon"><img
                                                src="<c:url value="/resources/home/images/message.svg"/>" alt=""></div>
                                    </div>
                                    <div class="contact_info_text"><a href="mailto:contactme@gmail.com?Subject=Hello"
                                                                      target="_top">contactme@gmail.com</a></div>
                                </li>
                                <li class="contact_info_item d-flex flex-row">
                                    <div>
                                        <div class="contact_info_icon"><img
                                                src="<c:url value="/resources/home/images/planet-earth.svg"/>" alt="">
                                        </div>
                                    </div>
                                    <div class="contact_info_text"><a href="https://colorlib.com">www.colorlib.com</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </footer>

    <!-- Copyright -->

    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 order-lg-1 order-2  ">
                    <div class="copyright_content d-flex flex-row align-items-center">
                        <div><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                            All rights reserved | This template is made with <i class="fa fa-heart-o"
                                                                                aria-hidden="true"></i> by <a
                                    href="https://colorlib.com" target="_blank">Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
                    </div>
                </div>
                <div class="col-lg-9 order-lg-2 order-1">
                    <div class="footer_nav_container d-flex flex-row align-items-center justify-content-lg-end">
                        <div class="footer_nav">
                            <ul class="footer_nav_list">
                                <li class="footer_nav_item"><a href="#">home</a></li>
                                <li class="footer_nav_item"><a href="about.html">about us</a></li>
                                <li class="footer_nav_item"><a href="offers.html">offers</a></li>
                                <li class="footer_nav_item"><a href="blog.html">news</a></li>
                                <li class="footer_nav_item"><a href="contact.html">contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<c:url value="/resources/home/js/jquery-3.2.1.min.js"/>"></script>
<script src="<c:url value="/resources/home/styles/bootstrap4/popper.js"/>"></script>
<script src="<c:url value="/resources/home/styles/bootstrap4/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/home/plugins/OwlCarousel2-2.2.1/owl.carousel.js"/>"></script>
<script src="<c:url value="/resources/home/plugins/easing/easing.js"/>"></script>
<script src="<c:url value="/resources/home/js/custom.js"/>"></script>
<%--<script src="<c:url value="https://unpkg.com/sweetalert/dist/sweetalert.min.js"/>"></script>--%>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>




</body>


<script>
    $(document).ready(function () {


        var readURL = function (input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('.avatar').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }


        $(".file-upload").on('change', function () {
            readURL(this);
        });
    });

    window.onload = function () {
        var gender = document.getElementById("gender").value;
        var gender_value = document.getElementById("gender_value");

        if (gender == 1) {
            gender_value.innerHTML = "Giới tính: Nam";
        }
        if (gender == 2) {
            gender_value.innerHTML = "Giới tính: Nữ";
        }
        if (gender == 3) {
            gender_value.innerHTML = "Giới tính: Khác";
        }
    }

    function handleDelete(id) {
        const swalWithBootstrapButtons = Swal.mixin({
            customClass: {
                confirmButton: 'btn btn-success',
                cancelButton: 'btn btn-danger'
            },
            buttonsStyling: "button-style"
        });

        swalWithBootstrapButtons.fire({
            title: 'Bạn muốn hủy đặt tour?',
            text: "Bạn có chắc chắn không",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Có, tôi muốn!',
            cancelButtonText: 'Không, tôi không muốn!',
        }).then((result) => {
            if (result.value) {
                window.location.href = "/home/delete?action=delete&id=" + id;
            } else if (result.dismiss === Swal.DismissReason.cancel) {
                swalWithBootstrapButtons.fire(
                    'Không hủy đặt tour',
                    'Tour bạn đặt vẫn còn :)',
                    'error'
                )
            }
        });
    }
</script>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url value="/login" var="loginUrl"/>
<c:url value="/logout" var="logoutUrl" />
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Travelix</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Travelix Project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="http://localhost:8080/resources/home/images/logo.png" type="image/x-icon" />

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
</head>

<body>

<div class="super_container">

    <!-- Header -->

    <jsp:include page="/WEB-INF/views/jsp/home_header.jsp"/>


    <jsp:include page="/WEB-INF/views/jsp/home_menu.jsp"/>

    <!-- Home -->


    <jsp:include page="/WEB-INF/views/jsp/home_slide.jsp"/>
    <!-- Search -->


    <jsp:include page="/WEB-INF/views/jsp/home_search.jsp"/>
    <!-- Intro -->

    <div class="intro">
        <div class="container">
            <div class="row">
                <div class="col">
                    <h2 class="intro_title text-center">Tour mới nhất</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="intro_text text-center">
                        <p>Nguyễn Đình Nam </p>
                    </div>
                </div>
            </div>
            <div class="row intro_items">



                <!-- Intro Item -->

                <tbody>
                <c:forEach var="tour" items="${tours}">
                    <div class="col-lg-3 intro_col">


                        <div class="intro_item">

                            <div class="intro_item_overlay"></div>
                            <!-- Image by https://unsplash.com/@dnevozhai -->
                            <div class="intro_item_background"
                                 style="background-image:url(<c:url value="/resources/home/images/intro_1.jpg"/>)"></div>



                            <div class="intro_item_content d-flex flex-column align-items-center justify-content-center">
                                 <div class="intro_date">May 25th - June 01st</div>
                                <div class="button intro_button">
                                    <div class="button_bcg"></div>
                                    <a href="#" onclick="showDetailTour(${tour.tour_Id})">Chi tiết<span></span><span></span><span></span></a></div>
                                <div class="intro_center text-center">
                                    <h3 style="color: white;font-weight: bold">${tour.tour_Name}</h3>
                                    <div class="intro_price">
                                        <f:formatNumber value="${tour.tour_Price}" pattern="#,###" /></div>
                                    <div class="rating rating_4">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                </tbody>


            </div>
        </div>
    </div>

    <!-- CTA -->

    <div class="cta">
        <!-- Image by https://unsplash.com/@thanni -->
        <div class="cta_background" style="background-image:url(<c:url value="/resources/home/images/cta.jpg"/>)"></div>

        <div class="container">
            <div class="row">
                <div class="col">

                    <!-- CTA Slider -->

                    <div class="cta_slider_container">
                        <div class="owl-carousel owl-theme cta_slider">

                            <!-- CTA Slider Item -->
                            <div class="owl-item cta_item text-center">
                                <div class="cta_title">maldives deluxe package</div>
                                <div class="rating_r rating_r_4">
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                </div>
                                <p class="cta_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eu
                                    convallis tortor. Suspendisse potenti. In faucibus massa arcu, vitae cursus mi
                                    hendrerit nec. Proin bibendum, augue faucibus tincidunt ultrices, tortor augue
                                    gravida lectus, et efficitur enim justo vel ligula.</p>
                                <div class="button cta_button">
                                    <div class="button_bcg"></div>
                                    <a href="#">book now<span></span><span></span><span></span></a></div>
                            </div>

                            <!-- CTA Slider Item -->
                            <div class="owl-item cta_item text-center">
                                <div class="cta_title">maldives deluxe package</div>
                                <div class="rating_r rating_r_4">
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                </div>
                                <p class="cta_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eu
                                    convallis tortor. Suspendisse potenti. In faucibus massa arcu, vitae cursus mi
                                    hendrerit nec. Proin bibendum, augue faucibus tincidunt ultrices, tortor augue
                                    gravida lectus, et efficitur enim justo vel ligula.</p>
                                <div class="button cta_button">
                                    <div class="button_bcg"></div>
                                    <a href="#">book now<span></span><span></span><span></span></a></div>
                            </div>

                            <!-- CTA Slider Item -->
                            <div class="owl-item cta_item text-center">
                                <div class="cta_title">maldives deluxe package</div>
                                <div class="rating_r rating_r_4">
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                    <i></i>
                                </div>
                                <p class="cta_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eu
                                    convallis tortor. Suspendisse potenti. In faucibus massa arcu, vitae cursus mi
                                    hendrerit nec. Proin bibendum, augue faucibus tincidunt ultrices, tortor augue
                                    gravida lectus, et efficitur enim justo vel ligula.</p>
                                <div class="button cta_button">
                                    <div class="button_bcg"></div>
                                    <a href="#">book now<span></span><span></span><span></span></a></div>
                            </div>

                        </div>

                        <!-- CTA Slider Nav - Prev -->
                        <div class="cta_slider_nav cta_slider_prev">
                            <svg version="1.1" id="Layer_4" xmlns="http://www.w3.org/2000/svg"
                                 xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                 width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33"
                                 xml:space="preserve">
								<defs>
                                    <linearGradient id='cta_grad_prev'>
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

                        <!-- CTA Slider Nav - Next -->
                        <div class="cta_slider_nav cta_slider_next">
                            <svg version="1.1" id="Layer_5" xmlns="http://www.w3.org/2000/svg"
                                 xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                 width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33"
                                 xml:space="preserve">
								<defs>
                                    <linearGradient id='cta_grad_next'>
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

                    </div>

                </div>
            </div>
        </div>

    </div>

    <!-- Offers -->

    <div class="offers">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <h2 class="section_title">Nhà hàng nổi bật</h2>
                </div>
            </div>
            <div class="row offers_items">

                <!-- Offers Item -->
                <tbody>
                <c:forEach var="tour" items="${tours}">
                    <div class="col-lg-6 offers_col">
                        <div class="offers_item">

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="offers_image_container">
                                        <!-- Image by https://unsplash.com/@kensuarez -->
                                        <div class="offers_image_background"
                                             style="background-image:url(<c:url
                                                     value="/resources/home/images/offer_1.jpg"/>)"></div>
                                        <div class="offer_name"><a href="#">${tour.tour_Name}</a></div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="offers_content">
                                        <div class="offers_price">250,000đ<span>/người</span></div>
                                        <div class="rating_r rating_r_4 offers_rating">
                                            <i></i>
                                            <i></i>
                                            <i></i>
                                            <i></i>
                                            <i></i>
                                        </div>
                                        <p class="offers_text">Suspendisse potenti. In faucibus massa. Lorem ipsum dolor sit
                                            amet, consectetur adipiscing elit. Nullam eu convallis tortor.</p>
                                        <div class="offers_icons">
                                            <ul class="offers_icons_list">
                                                <li class="offers_icons_item"><img
                                                        src="<c:url value="/resources/home/images/post.png"/>" alt=""></li>
                                                <li class="offers_icons_item"><img
                                                        src="<c:url value="/resources/home/images/compass.png"/>" alt="">
                                                </li>
                                                <li class="offers_icons_item"><img
                                                        src="<c:url value="/resources/home/images/bicycle.png"/>" alt="">
                                                </li>
                                                <li class="offers_icons_item"><img
                                                        src="<c:url value="/resources/home/images/sailboat.png"/>" alt="">
                                                </li>
                                            </ul>
                                        </div>
                                            <%--
                                                                                          <div class="offers_link"><button onclick="showDetailTour(${tour.tourId})" >read more</button></div>
                                            --%>
                                        <div class="button book_button"><a onclick="showDetailTour(${tour.tour_Id})">Đặt tour<span></span><span></span><span></span></a></div>

                                            <%-- <button type="button" class="btn btn-circle" style="margin-right: 10px"
                                                     onclick="showDetailTour(${tour.tourId})">
                                                 <i class="fa fa-edit"></i>
                                             </button>--%>

                                            <%--
                                                                                <div class="offers_link"><a  href="offers.html">read more</a></div>
                                            --%>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </c:forEach>
                </tbody>



                <!-- Testimonials -->

                <div class="testimonials">
                    <div class="test_border"></div>
                    <div class="container">
                        <div class="row">
                            <div class="col text-center">
                                <h2 class="section_title">Nhận xét về chúng tôi</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">

                                <!-- Testimonials Slider -->

                                <div class="test_slider_container">
                                    <div class="owl-carousel owl-theme test_slider">

                                        <!-- Testimonial Item -->
                                        <div class="owl-item">
                                            <div class="test_item">
                                                <div class="test_image"><img
                                                        src="<c:url value="/resources/home/images/test_1.jpg"/>"
                                                        alt="https://unsplash.com/@anniegray"></div>
                                                <div class="test_icon"><img
                                                        src="<c:url value="/resources/home/images/backpack.png"/>" alt=""></div>
                                                <div class="test_content_container">
                                                    <div class="test_content">
                                                        <div class="test_item_info">
                                                            <div class="test_name">Mrs Nguyễn Thùy Dương</div>
                                                            <div class="test_date">09/11/2020</div>
                                                        </div>
                                                        <div class="test_quote_title">" 1 chuyến du lịch rất thú vị "</div>
                                                        <p class="test_quote_text">MCREDIT - TEAMBUILDING ĐÀ NẴNG THÁNG 7/2020</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Testimonial Item -->
                                        <div class="owl-item">
                                            <div class="test_item">
                                                <div class="test_image"><img
                                                        src="<c:url value="/resources/home/images/test_2.jpg"/>"
                                                        alt="https://unsplash.com/@tschax"></div>
                                                <div class="test_icon"><img
                                                        src="<c:url value="/resources/home/images/island_t.png"/>" alt=""></div>
                                                <div class="test_content_container">
                                                    <div class="test_content">
                                                        <div class="test_item_info">
                                                            <div class="test_name">Nguyễn Danh Nam</div>
                                                            <div class="test_date">01/08/2020</div>
                                                        </div>
                                                        <div class="test_quote_title">" Chuyến du lịch thành công ngoài mong đợi "</div>
                                                        <p class="test_quote_text">MSB - VINPEARL THANH HÓA THÁNG 7/2020</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Testimonial Item -->
                                        <div class="owl-item">
                                            <div class="test_item">
                                                <div class="test_image"><img
                                                        src="<c:url value="/resources/home/images/test_3.jpg"/>"
                                                        alt="https://unsplash.com/@seefromthesky"></div>
                                                <div class="test_icon"><img src="<c:url value="/resources/home/images/kayak.png"/>"
                                                                            alt=""></div>
                                                <div class="test_content_container">
                                                    <div class="test_content">
                                                        <div class="test_item_info">
                                                            <div class="test_name">Vũ Thế Ngọc</div>
                                                            <div class="test_date">15/08/2020</div>
                                                        </div>
                                                        <div class="test_quote_title">" Nhân viên tận tình, chu đáo, thân thiện"</div>
                                                        <p class="test_quote_text">MSB - Đà Nẵng THÁNG 7/2020</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>





                                    </div>

                                    <!-- Testimonials Slider Nav - Prev -->
                                    <div class="test_slider_nav test_slider_prev">
                                        <svg version="1.1" id="Layer_6" xmlns="http://www.w3.org/2000/svg"
                                             xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                             width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33"
                                             xml:space="preserve">
								<defs>
                                    <linearGradient id='test_grad_prev'>
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

                                    <!-- Testimonials Slider Nav - Next -->
                                    <div class="test_slider_nav test_slider_next">
                                        <svg version="1.1" id="Layer_7" xmlns="http://www.w3.org/2000/svg"
                                             xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                             width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33"
                                             xml:space="preserve">
								<defs>
                                    <linearGradient id='test_grad_next'>
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

                                </div>

                            </div>
                        </div>

                    </div>
                </div>

                <div class="trending">
                    <div class="container">
                        <div class="row">
                            <div class="col text-center">
                                <h2 class="section_title">Khách sạn nổi bận</h2>
                            </div>
                        </div>
                        <div class="row trending_container">
                            <!-- Trending Item -->
                            <div class="col-lg-3 col-sm-6">
                                <div class="trending_item clearfix">
                                    <div class="trending_image"><img src="<c:url value="/resources/home/images/trend_1.png"/>"
                                                                     alt="https://unsplash.com/@fransaraco"></div>
                                    <div class="trending_content">
                                        <div class="trending_title"><a href="#">grand hotel</a></div>
                                        <div class="trending_price">từ 200,000đ/ng</div>
                                        <div class="trending_location">Hà Nội</div>
                                    </div>
                                </div>
                            </div>

                            <!-- Trending Item -->
                            <div class="col-lg-3 col-sm-6">
                                <div class="trending_item clearfix">
                                    <div class="trending_image"><img src="<c:url value="/resources/home/images/trend_1.png"/>"
                                                                     alt="https://unsplash.com/@fransaraco"></div>
                                    <div class="trending_content">
                                        <div class="trending_title"><a href="#">grand hotel</a></div>
                                        <div class="trending_price">từ 200,000đ/ng</div>
                                        <div class="trending_location">Hà Nội</div>
                                    </div>
                                </div>
                            </div>

                            <!-- Trending Item -->
                            <div class="col-lg-3 col-sm-6">
                                <div class="trending_item clearfix">
                                    <div class="trending_image"><img src="<c:url value="/resources/home/images/trend_1.png"/>"
                                                                     alt="https://unsplash.com/@fransaraco"></div>
                                    <div class="trending_content">
                                        <div class="trending_title"><a href="#">grand hotel</a></div>
                                        <div class="trending_price">từ 200,000đ/ng</div>
                                        <div class="trending_location">Hà Nội</div>
                                    </div>
                                </div>
                            </div>

                            <!-- Trending Item -->
                            <div class="col-lg-3 col-sm-6">
                                <div class="trending_item clearfix">
                                    <div class="trending_image"><img src="<c:url value="/resources/home/images/trend_1.png"/>"
                                                                     alt="https://unsplash.com/@fransaraco"></div>
                                    <div class="trending_content">
                                        <div class="trending_title"><a href="#">grand hotel</a></div>
                                        <div class="trending_price">từ 200,000đ/ng</div>
                                        <div class="trending_location">Hà Nội</div>
                                    </div>
                                </div>
                            </div>

                            <!-- Trending Item -->
                            <div class="col-lg-3 col-sm-6">
                                <div class="trending_item clearfix">
                                    <div class="trending_image"><img src="<c:url value="/resources/home/images/trend_1.png"/>"
                                                                     alt="https://unsplash.com/@fransaraco"></div>
                                    <div class="trending_content">
                                        <div class="trending_title"><a href="#">grand hotel</a></div>
                                        <div class="trending_price">từ 200,000đ/ng</div>
                                        <div class="trending_location">Hà Nội</div>
                                    </div>
                                </div>
                            </div>

                            <!-- Trending Item -->
                            <div class="col-lg-3 col-sm-6">
                                <div class="trending_item clearfix">
                                    <div class="trending_image"><img src="<c:url value="/resources/home/images/trend_1.png"/>"
                                                                     alt="https://unsplash.com/@fransaraco"></div>
                                    <div class="trending_content">
                                        <div class="trending_title"><a href="#">grand hotel</a></div>
                                        <div class="trending_price">từ 200,000đ/ng</div>
                                        <div class="trending_location">Hà Nội</div>
                                    </div>
                                </div>
                            </div>

                            <!-- Trending Item -->
                            <div class="col-lg-3 col-sm-6">
                                <div class="trending_item clearfix">
                                    <div class="trending_image"><img src="<c:url value="/resources/home/images/trend_1.png"/>"
                                                                     alt="https://unsplash.com/@fransaraco"></div>
                                    <div class="trending_content">
                                        <div class="trending_title"><a href="#">grand hotel</a></div>
                                        <div class="trending_price">từ 200,000đ/ng</div>
                                        <div class="trending_location">Hà Nội</div>
                                    </div>
                                </div>
                            </div>

                            <!-- Trending Item -->
                            <div class="col-lg-3 col-sm-6">
                                <div class="trending_item clearfix">
                                    <div class="trending_image"><img src="<c:url value="/resources/home/images/trend_1.png"/>"
                                                                     alt="https://unsplash.com/@fransaraco"></div>
                                    <div class="trending_content">
                                        <div class="trending_title"><a href="#">grand hotel</a></div>
                                        <div class="trending_price">từ 200,000đ/ng</div>
                                        <div class="trending_location">Hà Nội</div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="contact">
                    <div class="contact_background"
                         style="background-image:url(<c:url value="/resources/home/images/contact.png"/>)"></div>

                    <div class="container">
                        <div class="row">
                            <div class="col-lg-5">
                                <div class="contact_image">

                                </div>
                            </div>
                            <div class="col-lg-7">
                                <div class="contact_form_container">
                                    <div class="contact_title">get in touch</div>
                                    <form action="#" id="contact_form" class="contact_form">
                                        <input type="text" id="contact_form_name" class="contact_form_name input_field"
                                               placeholder="Name" required="required" data-error="Name is required.">
                                        <input type="text" id="contact_form_email" class="contact_form_email input_field"
                                               placeholder="E-mail" required="required" data-error="Email is required.">
                                        <input type="text" id="contact_form_subject" class="contact_form_subject input_field"
                                               placeholder="Subject" required="required" data-error="Subject is required.">
                                        <textarea id="contact_form_message" class="text_field contact_form_message" name="message"
                                                  rows="4" placeholder="Message" required="required"
                                                  data-error="Please, write us a message."></textarea>
                                        <button type="submit" id="form_submit_button" class="form_submit_button button">send message<span></span><span></span><span></span>
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Footer -->
                <jsp:include page="/WEB-INF/views/jsp/home_footer.jsp"/>

            </div>

            <script src="<c:url value="/resources/home/js/jquery-3.2.1.min.js"/>"></script>
            <script src="<c:url value="/resources/home/styles/bootstrap4/popper.js"/>"></script>
            <script src="<c:url value="/resources/home/styles/bootstrap4/bootstrap.min.js"/>"></script>
            <script src="<c:url value="/resources/home/plugins/OwlCarousel2-2.2.1/owl.carousel.js"/>"></script>
            <script src="<c:url value="/resources/home/plugins/easing/easing.js"/>"></script>
            <script src="<c:url value="/resources/home/js/custom.js"/>"></script>
            <script>


                function showDetailTour(id) {
                    window.location.href = "/tour/tourDetail/" + id;
                }
            </script>
        </div>
    </div>
</div>
</body>

</html>

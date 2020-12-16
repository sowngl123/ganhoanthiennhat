<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>About Us</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Travelix Project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/home/styles/bootstrap4/bootstrap.min.css"/>">
    <link href="<c:url value="/resources/home/plugins/font-awesome-4.7.0/css/font-awesome.min.css"/>" rel="stylesheet"
          type="text/css">
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/resources/home/plugins/OwlCarousel2-2.2.1/owl.carousel.css"/>">
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/resources/home/plugins/OwlCarousel2-2.2.1/owl.theme.default.css"/>">
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/resources/home/plugins/OwlCarousel2-2.2.1/animate.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/home/styles/about_styles.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/home/styles/about_responsive.css"/>">

    <!-- Google fonts-->

    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<c:url value="/resources/home/styles/about2.css"/>" rel="stylesheet" />
</head>

<body>

<div class="super_container">

    <!-- Header -->

    <jsp:include page="/WEB-INF/views/jsp/home_header.jsp"/>

 <%--   <div class="menu trans_500">
        <div class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
            <div class="menu_close_container"><div class="menu_close"></div></div>
            <div class="logo menu_logo"><a href="#"><img src="<c:url value="/resources/home/images/logo.png"/>" alt=""></a></div>
            <ul>
                <li class="menu_item"><a href="index.html">home</a></li>
                <li class="menu_item"><a href="#">about us</a></li>
                <li class="menu_item"><a href="offers.html">offers</a></li>
                <li class="menu_item"><a href="blog.html">news</a></li>
                <li class="menu_item"><a href="contact.html">contact</a></li>
            </ul>
        </div>
    </div>--%>

    <!-- Home -->

    <div class="home">
        <img class="home_background parallax-window" data-parallax="scroll" src="<c:url value="/resources/home/images/about_background.jpg"/>"/>
        <div class="home_content">
            <div class="home_title">about us</div>
        </div>
    </div>

    <!-- Intro -->

    <div class="intro">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="intro_image"><img src="<c:url value="/resources/home/images/intro.png"/>" alt=""></div>
                </div>
                <div class="col-lg-5">
                    <div class="intro_content">
                        <div class="intro_title">VỀ POLYTRAVEL</div>
                        <p class="intro_text">Được thành lập và vận hành bởi những người trẻ, năng động, luôn tìm tòi những xu hướng du lịch mới và không ngừng nâng cao chất lượng dịch vụ nhằm mang lại cho khách hàng sự hài lòng và những trải nghiệm lý thú trong mỗi chuyến đi. "Tiên Phong" là kim chỉ nam cho mọi hoạt động của PYS Travel. Đó cũng là lý do vì sao POLY TRAVEL chọn hình cánh buồn làm logo để biểu trưng cho tính cách của mình. Chúng tôi luôn tìm tòi những địa điểm du lịch hoàn toàn mới mẻ; cũng như xây dựng các dịch vụ giá trị gia tăng độc đáo, hấp dẫn</p>
                        <div class="button intro_button"><div class="button_bcg"></div><a href="#">explore now<span></span><span></span><span></span></a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Stats -->

    <div class="stats">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="section_title">years statistics</div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-10 offset-lg-1 text-center">
                    <p class="stats_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis vulputate eros, iaculis consequat nisl. Nunc et suscipit urna. Integer elementum orci eu vehicula pretium. Donec bibendum tristique condimentum. Aenean in lacus ligula. </p>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="stats_years">
                        <div class="stats_years_last">2016</div>
                        <div class="stats_years_new float-right">2017</div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="stats_contents">

                        <!-- Stats Item -->
                        <div class="stats_item d-flex flex-md-row flex-column clearfix">
                            <div class="stats_last order-md-1 order-3">
                                <div class="stats_last_icon d-flex flex-column align-items-center justify-content-end">
                                    <img src="<c:url value="/resources/home/images/stats_1.png"/>" alt="">
                                </div>
                                <div class="stats_last_content">
                                    <div class="stats_number">1642</div>
                                    <div class="stats_type">Clients</div>
                                </div>
                            </div>
                            <div class="stats_bar order-md-2 order-2" data-x="1642" data-y="3527" data-color="#31124b">
                                <div class="stats_bar_perc">
                                    <div>
                                        <div class="stats_bar_value"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="stats_new order-md-3 order-1 text-right">
                                <div class="stats_new_icon d-flex flex-column align-items-center justify-content-end">
                                    <img src="/resources/home/images/stats_1.png" alt="">
                                </div>
                                <div class="stats_new_content">
                                    <div class="stats_number">3527</div>
                                    <div class="stats_type">Clients</div>
                                </div>
                            </div>
                        </div>

                        <!-- Stats Item -->
                        <div class="stats_item d-flex flex-md-row flex-column clearfix">
                            <div class="stats_last order-md-1 order-3">
                                <div class="stats_last_icon d-flex flex-column align-items-center justify-content-end">
                                    <img src="/resources/home/images/stats_2.png" alt="">
                                </div>
                                <div class="stats_last_content">
                                    <div class="stats_number">768</div>
                                    <div class="stats_type">Returning Clients</div>
                                </div>
                            </div>
                            <div class="stats_bar order-md-2 order-2" data-x="768" data-y="145" data-color="#a95ce4">
                                <div class="stats_bar_perc">
                                    <div>
                                        <div class="stats_bar_value"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="stats_new order-md-3 order-1 text-right">
                                <div class="stats_new_icon d-flex flex-column align-items-center justify-content-end">
                                    <img src="/resources/home/images/stats_2.png" alt="">
                                </div>
                                <div class="stats_new_content">
                                    <div class="stats_number">145</div>
                                    <div class="stats_type">Returning Clients</div>
                                </div>
                            </div>
                        </div>

                        <!-- Stats Item -->
                        <div class="stats_item d-flex flex-md-row flex-column clearfix">
                            <div class="stats_last order-md-1 order-3">
                                <div class="stats_last_icon d-flex flex-column align-items-center justify-content-end">
                                    <img src="/resources/home/images/stats_3.png" alt="">
                                </div>
                                <div class="stats_last_content">
                                    <div class="stats_number">11546</div>
                                    <div class="stats_type">Reach</div>
                                </div>
                            </div>
                            <div class="stats_bar order-md-2 order-2" data-x="11546" data-y="9321" data-color="#fa6f1b">
                                <div class="stats_bar_perc">
                                    <div>
                                        <div class="stats_bar_value"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="stats_new order-md-3 order-1 text-right">
                                <div class="stats_new_icon d-flex flex-column align-items-center justify-content-end">
                                    <img src="/resources/home/images/stats_3.png" alt="">
                                </div>
                                <div class="stats_new_content">
                                    <div class="stats_number">9321</div>
                                    <div class="stats_type">Reach</div>
                                </div>
                            </div>
                        </div>

                        <!-- Stats Item -->
                        <div class="stats_item d-flex flex-md-row flex-column clearfix">
                            <div class="stats_last order-md-1 order-3">
                                <div class="stats_last_icon d-flex flex-column align-items-center justify-content-end">
                                    <img src="/resources/home/images/stats_4.png" alt="">
                                </div>
                                <div class="stats_last_content">
                                    <div class="stats_number">3729</div>
                                    <div class="stats_type">Items</div>
                                </div>
                            </div>
                            <div class="stats_bar order-md-2 order-2" data-x="3729" data-y="17429" data-color="#fa9e1b">
                                <div class="stats_bar_perc">
                                    <div>
                                        <div class="stats_bar_value"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="stats_new order-md-3 order-1 text-right">
                                <div class="stats_new_icon d-flex flex-column align-items-center justify-content-end">
                                    <img src="/resources/home/images/stats_4.png" alt="">
                                </div>
                                <div class="stats_new_content">
                                    <div class="stats_number">17429</div>
                                    <div class="stats_type">More Items</div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add -->

    <div class="add">
        <div class="container">
            <div class="text-center">
                <h2 class="section-heading text-uppercase">Team chúng tôi</h2>
                <h3 class="section-subheading text-muted">Đưa các bạn tới những nơi thật đẹp</h3>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="team-member">
                        <img class="mx-auto rounded-circle" src="<c:url value="/resources/home/images/nam.jpg"/>" />
                        <h4>Lãnh Hồng Sơn</h4>
                        <p class="text-muted">Giám đốc</p>
                   <%--     <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fa fa-twitter"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fa fa-facebook-f"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fa fa-linkedin-in"></i></a>--%>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="team-member">
                        <img class="mx-auto rounded-circle" src="<c:url value="/resources/home/images/son.jpg"/>"/>
                        <h4>Nguyễn Trung Hiếu</h4>
                        <p class="text-muted">Phó giám đốc</p>
                      <%--  <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fa fa-twitter"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fa fa-facebook-f"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fa fa-linkedin-in"></i></a>--%>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="team-member">
                        <img class="mx-auto rounded-circle" src="<c:url value="/resources/home/images/hieu.jpg"/>" />
                        <h4>Nguyễn Đình Nam</h4>
                        <p class="text-muted">Trưởng phòng kĩ thuật</p>
                     <%--   <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fa fa-twitter"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fa fa-facebook-f"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fa fa-linkedin-in"></i></a>--%>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="team-member">
                        <img class="mx-auto rounded-circle" src="<c:url value="/resources/home/images/nam.jpg"/>" />
                        <h4>Vũ Hoài Phương</h4>
                        <p class="text-muted">Trưởng phòng Marketing</p>
                        <%--     <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fa fa-twitter"></i></a>
                             <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fa fa-facebook-f"></i></a>
                             <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fa fa-linkedin-in"></i></a>--%>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="team-member">
                        <img class="mx-auto rounded-circle" src="<c:url value="/resources/home/images/son.jpg"/>"/>
                        <h4>Nguyên Thị Hoa</h4>
                        <p class="text-muted">Trưởng phòng nhân sự</p>
                        <%--  <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fa fa-twitter"></i></a>
                          <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fa fa-facebook-f"></i></a>
                          <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fa fa-linkedin-in"></i></a>--%>
                    </div>
                </div>
            </div>



        </div>
    </div>

    <!-- Milestones -->

    <jsp:include page="/WEB-INF/views/jsp/home_footer.jsp"/>

    <!-- Footer -->



</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/about_custom.js"></script>

</body>

</html>
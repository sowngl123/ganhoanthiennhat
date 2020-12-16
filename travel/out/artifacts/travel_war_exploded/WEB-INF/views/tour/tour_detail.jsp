<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url value="/login" var="loginUrl"/>
<c:url value="/logout" var="logoutUrl" />
<!DOCTYPE html>
<html lang="en">
<jsp:include page="/WEB-INF/views/jsp/detailTour_head.jsp"/>

<body>



    <!-- Header -->

    <jsp:include page="/WEB-INF/views/jsp/home_header.jsp"/>
    <jsp:include page="/WEB-INF/views/jsp/home_menu.jsp"/>


    <!-- Home -->

    <div class="home">

        <!-- Home Slider -->

        <jsp:include page="/WEB-INF/views/jsp/home_slide.jsp"/>

    </div>

    <!-- Search -->

    <jsp:include page="/WEB-INF/views/jsp/home_search.jsp"/>

    <!-- Intro -->

    <div id="wrapper">

        <div id="body-detail-tour">
            <!--slide-mobile -->
            <div class="slide-mobile-detail dp-n-mobi">
                <!--đường dẫn-->
                <div class="row">
                    <div class="col-md-12">
                        <div class="path">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="https://pystravel.vn">Trang chủ</a></li>

                                <li class="breadcrumb-item"><a href="https://pystravel.vn/danh-muc-tour/2-tour.html">Tour trong nước</a></li>

                                <li class="breadcrumb-item"><a href="https://pystravel.vn/danh-muc-tour/201-tour-mien-bac.html">Tour miền Bắc</a></li>

                                <li class="breadcrumb-item"><a href="https://pystravel.vn/danh-muc-tour/60-hoa-binh.html">Hòa Bình</a></li>

                                <li class="breadcrumb-item"><a href="https://pystravel.vn/danh-muc-tour/229-an-lac-resort.html">An Lạc Resort</a></li>

                                <li class="breadcrumb-item active">Tour Hà Nội - An</li>
                            </ol>
                        </div>
                    </div>
                </div>

            </div>
            <!--end slide mobile -->
            <div class="container padding-0-tablet">
                <!--đường dẫn-->
                <div class="row breadcrumb-pc">
                    <div class="col-md-12">
                        <div class="path">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="/home">Trang chủ</a></li>

                                <li class="breadcrumb-item"><a href="https://pystravel.vn/danh-muc-tour/2-tour.html">Tour trong nước</a></li>

                                <li class="breadcrumb-item"><a href="https://pystravel.vn/danh-muc-tour/201-tour-mien-bac.html">Tour miền Bắc</a></li>

                                <li class="breadcrumb-item"><a href="https://pystravel.vn/danh-muc-tour/60-hoa-binh.html">Hòa Bình</a></li>

                                <li class="breadcrumb-item"><a href="https://pystravel.vn/danh-muc-tour/229-an-lac-resort.html">An Lạc Resort</a></li>

                                <li class="breadcrumb-item active">Tour Hà Nội - An</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!--tiêu đề-->
                <div class="row dp-n">
                    <div class="col-md-12">
                        <div class="title-detail-tour">
                            <h1>Tour Hà Nội - An Lạc Resort 2 ngày 1 đêm</h1>
                        </div>
                    </div>
                </div>
                <!--slide-->
                <!--slide + gói tour-->
                <input type="hidden" value="318" class="id-tour" />
                <div class="row">
                    <div class="col-md-8 col-lg-9">
                        <div class="slide-image dp-n">
                            <div class="row">
                                <div class="col-md-4 col-sm-3">
                                    <div class="scroll-images">
                                        <div class="images">
                                            <div class="row">
                                                <div class="col-md-12 pr-0">
                                                    <a href="javascript:void(0)" title="an-lac-resort-pys-travel-1" onclick="showSlideImage(this)" onmouseover="showSlideImage(this)" data-id="2743">
                                                        <img class="image-child" alt="an-lac-resort-pys-travel-1" src="https://clickladi.vn/wp-content/uploads/2019/06/hinh-anh-dep-bien-bai-chay-ha-long_051905163.jpg" />
                                                    </a>
                                                    <a href="javascript:void(0)" title="du-lich-teambuilding-pys-travel001" onclick="showSlideImage(this)" onmouseover="showSlideImage(this)" data-id="2744">
                                                        <img class="image-child" alt="du-lich-teambuilding-pys-travel001" src="https://pystravel.vn/wp-content/uploads/2017/11/du-lich-teambuilding-pys-travel001.jpg" />
                                                    </a>
                                                    <a href="javascript:void(0)" title="du-lich-teambuilding-pys-travel002" onclick="showSlideImage(this)" onmouseover="showSlideImage(this)" data-id="2745">
                                                        <img class="image-child" alt="du-lich-teambuilding-pys-travel002" src="https://pystravel.vn/wp-content/uploads/2017/11/du-lich-teambuilding-pys-travel002.jpg" />
                                                    </a>
                                                    <a href="javascript:void(0)" title="du-lich-teambuilding-pys-travel004" onclick="showSlideImage(this)" onmouseover="showSlideImage(this)" data-id="2746">
                                                        <img class="image-child" alt="du-lich-teambuilding-pys-travel004" src="https://pystravel.vn/wp-content/uploads/2017/11/du-lich-teambuilding-pys-travel004.jpg" />
                                                    </a>
                                                    <a href="javascript:void(0)" title="du-lich-teambuilding-pys-travel003" onclick="showSlideImage(this)" onmouseover="showSlideImage(this)" data-id="2747">
                                                        <img class="image-child" alt="du-lich-teambuilding-pys-travel003" src="https://pystravel.vn/wp-content/uploads/2017/11/du-lich-teambuilding-pys-travel003.jpg" />
                                                    </a>
                                                    <a href="javascript:void(0)" title="an-lac-pys-travel-1.jpg" onclick="showSlideImage(this)" onmouseover="showSlideImage(this)" data-id="29621">
                                                        <img class="image-child" alt="an-lac-pys-travel-1.jpg" src="https://pystravel.vn/uploads/posts/albums/318/4366903b0d86cc2d6db94fb67340ad08.jpg" />
                                                    </a>
                                                    <a href="javascript:void(0)" title="an-lac-pys-travel-2.jpg" onclick="showSlideImage(this)" onmouseover="showSlideImage(this)" data-id="29622">
                                                        <img class="image-child" alt="an-lac-pys-travel-2.jpg" src="https://pystravel.vn/uploads/posts/albums/318/4fecf62390c54f10c7c58cc03dcc48d7.jpg" />
                                                    </a>
                                                    <a href="javascript:void(0)" title="an-lac-pys-travel-3.jpg" onclick="showSlideImage(this)" onmouseover="showSlideImage(this)" data-id="29623">
                                                        <img class="image-child" alt="an-lac-pys-travel-3.jpg" src="https://pystravel.vn/uploads/posts/albums/318/e36a081288c1cc54d232c146f2d0c87d.jpg" />
                                                    </a>
                                                    <a href="javascript:void(0)" title="an-lac-pys-travel-4.jpg" onclick="showSlideImage(this)" onmouseover="showSlideImage(this)" data-id="29624">
                                                        <img class="image-child" alt="an-lac-pys-travel-4.jpg" src="https://pystravel.vn/uploads/posts/albums/318/2cedc3c3630c1b72570742f8bd826d5c.jpg" />
                                                    </a>
                                                    <a href="javascript:void(0)" title="an-lac-pys-travel-5.jpg" onclick="showSlideImage(this)" onmouseover="showSlideImage(this)" data-id="29625">
                                                        <img class="image-child" alt="an-lac-pys-travel-5.jpg" src="https://pystravel.vn/uploads/posts/albums/318/0ef315c8cc6eaf4a117be650f09206b6.jpg" />
                                                    </a>
                                                    <a href="javascript:void(0)" title="an-lac-pys-travel-6.jpg" onclick="showSlideImage(this)" onmouseover="showSlideImage(this)" data-id="29626">
                                                        <img class="image-child" alt="an-lac-pys-travel-6.jpg" src="https://pystravel.vn/uploads/posts/albums/318/ec67d2cac69f6d3ad7a045c2a5fcf2fd.jpg" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 col-sm-9 pl-0">
                                    <div class="slide fix-height-slide">
                                        <div id="carouselExampleControls" class="carousel slide h-100" data-ride="carousel">
                                            <div class="carousel-inner h-100">
                                                <div class="carousel-item h-100 show-slide-image-2743">
                                                    <img class="d-block h-100 w-100" src="https://clickladi.vn/wp-content/uploads/2019/06/hinh-anh-dep-bien-bai-chay-ha-long_051905163.jpg" alt="" />
                                                </div>
                                                <div class="carousel-item h-100 show-slide-image-2744 active">
                                                    <img class="d-block h-100 w-100" src="https://pystravel.vn/wp-content/uploads/2017/11/du-lich-teambuilding-pys-travel001.jpg" alt="" />
                                                </div>
                                                <div class="carousel-item h-100 show-slide-image-2745">
                                                    <img class="d-block h-100 w-100" src="https://pystravel.vn/wp-content/uploads/2017/11/du-lich-teambuilding-pys-travel002.jpg" alt="" />
                                                </div>
                                                <div class="carousel-item h-100 show-slide-image-2746">
                                                    <img class="d-block h-100 w-100" src="https://pystravel.vn/wp-content/uploads/2017/11/du-lich-teambuilding-pys-travel004.jpg" alt="" />
                                                </div>
                                                <div class="carousel-item h-100 show-slide-image-2747">
                                                    <img class="d-block h-100 w-100" src="https://pystravel.vn/wp-content/uploads/2017/11/du-lich-teambuilding-pys-travel003.jpg" alt="" />
                                                </div>
                                                <div class="carousel-item h-100 show-slide-image-29621">
                                                    <img class="d-block h-100 w-100" src="https://pystravel.vn/uploads/posts/albums/318/4366903b0d86cc2d6db94fb67340ad08.jpg" alt="" />
                                                </div>
                                                <div class="carousel-item h-100 show-slide-image-29622">
                                                    <img class="d-block h-100 w-100" src="https://pystravel.vn/uploads/posts/albums/318/4fecf62390c54f10c7c58cc03dcc48d7.jpg" alt="" />
                                                </div>
                                                <div class="carousel-item h-100 show-slide-image-29623">
                                                    <img class="d-block h-100 w-100" src="https://pystravel.vn/uploads/posts/albums/318/e36a081288c1cc54d232c146f2d0c87d.jpg" alt="" />
                                                </div>
                                                <div class="carousel-item h-100 show-slide-image-29624">
                                                    <img class="d-block h-100 w-100" src="https://pystravel.vn/uploads/posts/albums/318/2cedc3c3630c1b72570742f8bd826d5c.jpg" alt="" />
                                                </div>
                                                <div class="carousel-item h-100 show-slide-image-29625">
                                                    <img class="d-block h-100 w-100" src="https://pystravel.vn/uploads/posts/albums/318/0ef315c8cc6eaf4a117be650f09206b6.jpg" alt="" />
                                                </div>
                                                <div class="carousel-item h-100 show-slide-image-29626">
                                                    <img class="d-block h-100 w-100" src="https://pystravel.vn/uploads/posts/albums/318/ec67d2cac69f6d3ad7a045c2a5fcf2fd.jpg" alt="" />
                                                </div>
                                            </div>
                                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-3">
                        <!--begin mobile-->
                        <div class="row bg-gray"></div>
                        <!--end mobile-->
                        <!--Gói tour-->
                        <div class="package-full package-full-mobile">
                            <div class="title-detail-tour-mobile dp-n-mobi">
                                <h2>Tour Hà Nội - An Lạc Resort 2 ngày 1 đêm</h2>
                            </div>
                            <p class="price dp-n dp-n-tablet-small">Giá tour trọn gói</p>
                            <div class="price-general text-center-table-small">
                                <p class="price-new"><f:formatNumber value="${tour.tour_Price}" pattern="#,###đ" /></p>
                            </div>
                            <div class="star star-mobile" data-id = "${tour.tour_Id}">
                               <button class="btn btn-sm btn-danger btn-star"><i class="fa fa-heart"></i></button>
                               <button class="btn btn-sm btn-danger btn-open-dialog" data-toggle="modal" data-target="#myModal"><i class="fa fa-envelope"></i></button>

                            </div>
                        </div>
                        <!--Gói tour-->
                        <div class="info-tour info-tour-mobile">
                            <div class="item-info-tour-left-mobile">
                                <div class="item-info-tour">
                                    <span class="item-info"> <i class="fa fa-home page_speed_1914459670"></i>Khởi hành từ: </span>
                                    <span>Hà Nội</span>
                                </div>
                                <div class="item-info-tour">
                                    <span class="item-info"> <i class="fa fa-map-marked-alt page_speed_1914459670"></i>Điểm đến: </span>
                                    <span>An Lạc Resort</span>
                                </div>
                            </div>
                            <div class="item-info-tour-right-mobile">
                                <div class="item-info-tour">
                                    <span class="item-info"> <i class="fa fa-clock page_speed_759010426"></i>Lịch trình: </span>
                                    <span>2 ngày 1 đêm</span>
                                </div>
                            </div>
                        </div>

                        <!--thông tin tour-->
                        <!--dịch vụ-->

                        <div class="dp-n-mobi">
                            <form action="/home/book/${tour.tour_Id}" method="get" enctype="multipart/form-data">
                                <button type="submit" class="btn btn-submit-booking-tour">
                                    <span class="main-text"><a href="/home/book/${tour.tour_Id}">Đặt tour ngay</a></span>
                                    <span class="tiny-text">Giữ chỗ, chưa cần thanh toán</span>
                                </button>
                            </form>

                            <form action="/home/book/${tour.tour_Id}" method="get" enctype="multipart/form-data"></form>
                        </div>

                        <div class="dp-n-mobi item-form-phone">
                            <p class="text-bold text-center">
                                Để lại Số điện thoại, Travelix sẽ liên hệ tư vấn
                            </p>
                            <form id="form-phone" action="https://pystravel.vn/tour/store" onsubmit="return false" method="POST" enctype="multipart/form-data" class="item-form-tour-mobile">
                                <input type="hidden" value="7xu5Jp2RGX3yeKHsIo5p1zOTyGANvEBMXMvvBQo4" name="_token" />
                                <input type="hidden" value="4" name="tourType" id="tourType" />
                                <input type="hidden" value="Tour Hà Nội - An Lạc Resort 2 ngày 1 đêm" name="tourName" id="tourName" />
                                <input type="hidden" name="checkIn" id="checkIns" class="form-control date_single" value="25/11/2020" />
                                <input type="hidden" name="cityStart" id="cityStarts" value="1" />
                                <input type="hidden" name="priceUnit" id="priceUnit" value="1200000" />
                                <div class="item-input-phone">
                                    <div class="col-md-12 page_speed_1487654988">
                                        <input name="customerPhone" value="" id="customerPhone" type="text" class="form-control" placeholder="Số điện thoại của tôi..." />
                                        <div class="btn-send-phone" role="group" aria-label="Basic example">
                                            <button onclick="checkMobile()" type="button" class="btn btn-secondary search-button">Gửi</button>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <span class="text-danger" id="errorPhone"></span>
                                        <span class="text-success" id="successPhone"></span>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!--dịch vụ-->
                        <div class="row bg-gray"></div>
                        <!--Đặt tour ngay-->
                        <form action="/home/book/${tour.tour_Id}" method="get" enctype="multipart/form-data">
                            <div class="book-tour dp-n mt-15">
                                <button type="submit" class="btn btn-primary btn-lg btn-block button-booking-tour">
                                    <span class="main-text text-uppercase">Đặt tour ngay <i class="fa fa-angle-right icon-arrow-right"></i></span>
                                    <span class="tiny-text">Giữ chỗ, chưa cần thanh toán</span>
                                </button>
                            </div>
                        </form>
                        <form action="/home/book/${tour.tour_Id}" method="get" enctype="multipart/form-data"></form>
                        <!--đặt tour ngay-->
                    </div>
                </div>
                <!-- slide + gói tour-->
                <div class="row">
                    <!-- chi tiết tour  (content-detail-tour) dòng 908-->
                    <div class="col-md-12 col-lg-9">
                        <div class="menu-body-tour menu-body-tour-mobile">
                            <div class="">
                                <div class="menu-body-tour menu-body-tour-mobile" id="">
                                    <div class="row">
                                        <div class="col-md-12 pl-pr">
                                           <%-- <div class="item-scroll-news-pys scroll-mobile fixed-nav-tour" id="scroll_tour">
                                                <div class="item-news-pys scroll-fix-tour item-news-pys-detail-tour-mobile">
                                                    <ul class="nav nav-tour nav-tour-mobile" role="tablist">
                                                        <li class="nav-item nav-item-tour">
                                                            <a id="introduce" href="#gioithieu" class="nav-link nav-link-tour active-link-new" data-toggle="tab">Giới thiệu</a>
                                                        </li>
                                                        <li class="nav-item nav-item-tour">
                                                            <a id="schedule" href="#lichtrinh" class="nav-link nav-link-tour active-link-new" data-toggle="tab">Lịch trình</a>
                                                        </li>
                                                        <li class="nav-item nav-item-tour">
                                                            <a id="clause" href="#dieukhoan" class="nav-link nav-link-tour active-link-new active" data-toggle="tab">Bao gồm và Điều khoản</a>
                                                        </li>
                                                        <li class="nav-item nav-item-tour">
                                                            <a id="evaluate" href="#danhgia" class="nav-link nav-link-tour active-link-new" data-toggle="tab">Đánh giá Tour</a>
                                                        </li>
                                                        <li class="nav-item nav-item-tour">
                                                            <a id="comment" href="#binhluan" class="nav-link nav-link-tour active-link-new" data-toggle="tab">Bình luận</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>--%>
                                            <div class="row">
                                             <%--  <div class="col-md-1 dp-n fb-mess">
                                                    <div
                                                            class="fb-like fb_iframe_widget"
                                                            data-href="https://pystravel.vn/tour/46465-tour-ha-noi-an-lac-resort-2n1d.html"
                                                            data-layout="box_count"
                                                            data-action="like"
                                                            data-size="small"
                                                            data-show-faces="true"
                                                            data-share="true"
                                                            fb-xfbml-state="rendered"
                                                            fb-iframe-plugin-query="action=like&amp;app_id=&amp;container_width=41&amp;href=https%3A%2F%2Fpystravel.vn%2Ftour%2F46465-tour-ha-noi-an-lac-resort-2n1d.html&amp;layout=box_count&amp;locale=vi_VN&amp;sdk=joey&amp;share=true&amp;show_faces=true&amp;size=small"
                                                    >
                                                        <span style="vertical-align: top; width: 0px; height: 0px; overflow: hidden;">
                                                            <iframe
                                                                    name="f2acfd416a2696"
                                                                    width="1000px"
                                                                    height="1000px"
                                                                    data-testid="fb:like Facebook Social Plugin"
                                                                    title="fb:like Facebook Social Plugin"
                                                                    frameborder="0"
                                                                    allowtransparency="true"
                                                                    allowfullscreen="true"
                                                                    scrolling="no"
                                                                    allow="encrypted-media"
                                                                    src="https://www.facebook.com/v3.1/plugins/like.php?action=like&amp;app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Dfaa8842b1f9e%26domain%3Dpystravel.vn%26origin%3Dhttps%253A%252F%252Fpystravel.vn%252Ff341130f25d338%26relation%3Dparent.parent&amp;container_width=41&amp;href=https%3A%2F%2Fpystravel.vn%2Ftour%2F46465-tour-ha-noi-an-lac-resort-2n1d.html&amp;layout=box_count&amp;locale=vi_VN&amp;sdk=joey&amp;share=true&amp;show_faces=true&amp;size=small"
                                                                    style="border: none; visibility: visible; width: 0px; height: 0px;"
                                                                    __idm_frm__="175"
                                                            ></iframe>
                                                        </span>
                                                    </div>
                                                </div>--%>


                                                   <div id="mytinymce" name="tour_description" required
                                                        aria-required="true">${tour.tour_Describe}</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="maybe-care-customers">
                                            <p class="title-maybe-care fix-line-height">Có thể bạn quan tâm</p>
                                            <div class="maybe-care-content item-scroll-news-pys">
                                                <div class="row item-news-pys width-scroll-pys">
                                                    <div class="col-md-4 maybe-care-item-mobile">
                                                        <div class="maybe-care-item">
                                                            <div class="maybe-care-top">
                                                                <a href="https://pystravel.vn/tour/59107-tour-ha-noi-an-lac-resort-1-ngay.html">
                                                                    <img
                                                                            class="lazy"
                                                                            alt="Tour Hà Nội - An Lạc Resort 1 ngày"
                                                                            src="https://pystravel.vn/caches/medium/wp-content/uploads/2018/08/tour-ha-noi-an-lac-resort-pys-travel-21.jpg"
                                                                            style=""
                                                                    />
                                                                </a>
                                                            </div>
                                                            <div class="maybe-care-bot">
                                                                <a class="title-maybe-care-bot" href="https://pystravel.vn/tour/59107-tour-ha-noi-an-lac-resort-1-ngay.html">Tour Hà Nội - An Lạc Resort 1 ngày</a>
                                                                <span>750,000đ</span>
                                                                <div class="watch-now">
                                                                    <a href="https://pystravel.vn/tour/59107-tour-ha-noi-an-lac-resort-1-ngay.html">Xem ngay</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 maybe-care-item-mobile">
                                                        <div class="maybe-care-item">
                                                            <div class="maybe-care-top">
                                                                <a href="https://pystravel.vn/tour/46465-tour-ha-noi-an-lac-resort-2n1d.html">
                                                                    <img
                                                                            class="lazy"
                                                                            alt="Tour Hà Nội - An Lạc Resort 2 ngày 1 đêm"
                                                                            src="https://pystravel.vn/caches/medium/wp-content/uploads/2017/11/du-lich-teambuilding-pys-travel004.jpg"
                                                                            style=""
                                                                    />
                                                                </a>
                                                            </div>
                                                            <div class="maybe-care-bot">
                                                                <a class="title-maybe-care-bot" href="https://pystravel.vn/tour/46465-tour-ha-noi-an-lac-resort-2n1d.html">Tour Hà Nội - An Lạc Resort 2 ngày 1 đêm</a>
                                                                <span>1,200,000đ</span>
                                                                <div class="watch-now">
                                                                    <a href="https://pystravel.vn/tour/46465-tour-ha-noi-an-lac-resort-2n1d.html">Xem ngay</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <p class="title-maybe-care fix-line-height">Tour bạn đã quan tâm</p>


                                            <div class="maybe-care-content item-scroll-news-pys">
                                                <div class="row item-news-pys width-scroll-pys">
                                                    <tbody>
                                                    <c:forEach var="list" items="${favo}">
                                                    <div class="col-md-4 maybe-care-item-mobile">
                                                        <div class="maybe-care-item">
                                                            <div class="maybe-care-top">
                                                                <a href="/tour/tourDetail/${list.tour_Id}">
                                                                    <img
                                                                            class="lazy"
                                                                            alt="Tour Hà Nội - An Lạc Resort 2 ngày 1 đêm"
                                                                            src="https://anbinhphattravel.com/wp-content/uploads/2019/10/jet-ski-tour-of-dubai.jpg"
                                                                            style=""
                                                                    />
                                                                </a>
                                                            </div>
                                                            <div class="maybe-care-bot">
                                                                <a class="title-maybe-care-bot" href="/tour/tourDetail/${list.tour_Id}">${list.tour_Name}</a>
                                                                <span>${list.tour_Price}đ</span>
                                                                <div class="watch-now">
                                                                    <a href="/tour/tourDetail/${list.tour_Id}">Xem ngay</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    </c:forEach>
                                                    </tbody>

                                                </div>
                                            </div>


                                            <p class="title-maybe-care fix-line-height">Tour bạn đã xem</p>


                                            <div class="maybe-care-content item-scroll-news-pys">
                                                <div class="row item-news-pys width-scroll-pys">
                                                    <tbody>
                                                    <c:forEach var="list" items="${viewed}">
                                                        <div class="col-md-4 maybe-care-item-mobile">
                                                            <div class="maybe-care-item">
                                                                <div class="maybe-care-top">
                                                                    <a href="/tour/tourDetail/${list.tour_Id}">
                                                                        <img
                                                                                class="lazy"
                                                                                alt="Tour Hà Nội - An Lạc Resort 2 ngày 1 đêm"
                                                                                src="https://bizweb.dktcdn.net/thumb/grande/100/068/238/products/nha-tho-duc-ba-4.jpg?v=1545291369677"
                                                                                style=""
                                                                        />
                                                                    </a>
                                                                </div>
                                                                <div class="maybe-care-bot">
                                                                    <a class="title-maybe-care-bot" href="/tour/tourDetail/${list.tour_Id}">${list.tour_Name}</a>
                                                                    <span>${list.tour_Price}đ</span>
                                                                    <div class="watch-now">
                                                                        <a href="/tour/tourDetail/${list.tour_Id}">Xem ngay</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                    </tbody>

                                                </div>
                                            </div>





                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- đặt tour bên phải-->
                    <div class="col-md-3 padding-left-0 dp-n-tablet-small page_speed_417406291">

                        <div class="position-relative">
                            <div class="animated">
                                <div class="advisory">
                                    <form action="https://pystravel.vn/tour/store" onsubmit="return false" method="POST" enctype="multipart/form-data">
                                        <input type="hidden" value="1XmCr7lUWWnVnCSGc3bjjWsM63dlPMWBAXiM8vuj" name="_token" />
                                        <input type="hidden" value="4" name="tourType" id="tourType" />
                                        <input type="hidden" value="1" name="id" />
                                        <input type="hidden" value="Tour Mộc Châu -  Amazing Race 2 ngày 1 đêm" name="tourName" id="tourName" />
                                        <input type="hidden" name="checkIn" id="checkIn" class="form-control date_single" />
                                        <input type="hidden" name="cityStart" id="cityStart" value="1" />
                                        <input type="hidden" name="priceUnit" id="priceUnit" value="3000000" />
                                        <div class="advisory-top">
                                            <h5>Gọi ngay để được tư vấn</h5>
                                        </div>
                                        <div class="advisory-bot">
                                            <div class="phone-advisory">
                                                <img class="display-none-tablet" src="https://pystravel.vn/images/icon/icon-phone-wave.png" />
                                                <div class="sdt position-unset-tablet">
                                                    <span>024.73 07 50 60 (Hà Nội)</span>
                                                    <span>028.44 50 60 70 (HCM)</span>
                                                </div>
                                            </div>
                                            <div class="contact-advisory">
                                                <span>Hoặc gửi yêu cầu tư vấn</span>
                                                <div class="form-contact page_speed_2081696858">
                                                    <div class="input-group">
                                                        <input
                                                                name="customerPhone"
                                                                value=""
                                                                id="customerPhones"
                                                                type="number"
                                                                class="customer-phone form-control"
                                                                placeholder="Số điện thoại của Tôi:"
                                                                aria-label="Recipient's username"
                                                                aria-describedby="button-addon2"
                                                        />
                                                        <div class="input-group-append">
                                                            <button class="btn btn-outline-secondary" onclick="checkPhone()" type="button" id="button-addon2">
                                                                Gửi
                                                            </button>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <span class="text-danger error-phone"></span>
                                                        <span class="text-success success-phone"></span>
                                                    </div>
                                                </div>
                                                <span>Travelix sẽ liên hệ với bạn</span>
                                            </div>
                                        </div>
                                    </form>
                                    <div>
                                        <input type="hidden" value="https://pystravel.vn/tour/store" name="checkPhoneCate" />
                                    </div>


                                    <form action="https://pystravel.vn/lich-khoi-hanh/3-tour-du-lich-ha-giang.html" method="get" enctype="multipart/form-data" class="dp-n">
                                        <div class="info-tour-right info-tour-right-mobile info-tour-scroll">
                                        <tbody>
                                        <c:forEach var="tour" items="${tours}">
                                            <div class="card card-tour-item-fix">
                                                <img class="card-img-top item-image-detail" src="https://pystravel.vn/caches/medium/posts/avatar/1596605620.png" alt="Tour khám phá Hà Giang hùng vĩ 3 ngày 2 đêm">
                                                <div class="card-body page_speed_2087725416">
                                                    <h5 class="card-title page_speed_383212967">${tour.tour_Name}</h5>
                                                    <span class="item-info">
                                                                 <i class="fa fa-clock page_speed_288031816"></i>Lịch trình:
                                                                   3 ngày 2 đêm
                                                         </span>
                                                    <div class="item-info">
                                                    <span class="item-info">
                                                         <i class="fa fa-home page_speed_2047556830"></i>Khởi hành từ:
                                                     </span>
                                                        <span>${tour.tour_Departurelocation}</span>
                                                    </div>
                                                    <p class="item-info price mb-0 page_speed_1965391781">Giá tour trọn gói</p>
                                                    <div class="price-general">
                                                        <p class="price-new m-0"><f:formatNumber value="${tour.tour_Price}" pattern="#,###" /><small>đ/khách</small></p>
                                                        <s class="price-old m-0">2,580,000<small>đ/khách</small></s>
                                                    </div>

                                                    <button type="submit" class="btn btn-primary btn-lg btn-block button-booking-tour mt-10">
                                                        <span class="main-text text-uppercase">Đặt tour ngay <i class="fa fa-angle-right icon-arrow-right"></i></span>
                                                        <span class="tiny-text">Giữ chỗ, chưa cần thanh toán</span>
                                                    </button>
                                                    <input type="hidden" name="id" value="3">
                                                    <input type="hidden" name="price_public" value="2480000">
                                                    <input type="hidden" name="location_start_id" value="1">


                                                    <form action="https://pystravel.vn/lich-khoi-hanh/3-tour-du-lich-ha-giang.html" method="get" enctype="multipart/form-data">

                                                        <input type="hidden" name="id" value="3">
                                                        <input type="hidden" name="price_public" value="2480000">
                                                        <input type="hidden" name="location_start_id" value="1">
                                                    </form>

                                                </div>
                                            </div>
                                        </c:forEach>
                                        </tbody>
                                            <div class="hide">
                                                <div class="info-tour-right-top info-tour-right-top-mobile">
                                                    <span>Thông tin tour</span>
                                                </div>
                                                <div class="info-tour-right-bot info-tour-right-bot-mobile">
                                                    <div class="form-group"> <!-- Date input -->
                                                        <label class="control-label" for="date">chọn ngày khởi hành</label>
                                                        <input class="form-control date_single" id="date" name="checkIn" placeholder="15/12/2018" type="text">
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 col-6 pd-r-mobile">
                                                            <label for="numAdult">Số người lớn</label>
                                                            <input value="2" min="1" type="number" id="numAdult" name="numAdult" class="form-control">
                                                        </div>
                                                        <div class="col-md-6 col-6 pd-l-mobile">
                                                            <label for="numChildren">Trẻ em</label>
                                                            <input value="0" min="0" type="number" id="numChildren" name="numChildren" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="unit-price">
                                                        <div class="row">
                                                            <div class="col-md-6 col-6">
                                                                <p>Đơn giá:</p>
                                                            </div>
                                                            <div class="col-md-6 col-6">
                                                                <p class="pull-right text-bold">2,480,000 đ</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group form-group-mobile"> <!-- Submit button -->
                                                        <button class="btn btn-primary" name="submit" type="submit">Đặt tour ngay</button>
                                                    </div>
                                                    <div class="note dp-n">
                                                        <span><i class="page_speed_747542418 fa fa-check"></i>  Đặt giữ chỗ không cần thanh toán trước.</span>
                                                    </div>
                                                </div>
                                            </div>


                                            <!--mobile-->
                                            <div class=" bg-gray "></div>
                                            <!--mobile-->
                                        </div></form>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <form action="" method="get" enctype="multipart/form-data" class="dp-n-mobi">
            <button type="submit" class="btn btn-booking-tour-mobile">
                <span class="main-text">Đặt tour ngay</span>
                <span class="tiny-text">Thanh toán sau</span>
            </button>
        </form>
        <div class="btn-action-call-mobile" data-toggle="modal" data-target="#myModal" onclick="checkGA()">
            <img src="https://pystravel.vn/images/icon/telephone-call.png" />
        </div>
        <%--<div class="modal" id="myModal">
            <div class="modal-dialog modal-full">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title title-hotline-tour">Danh sách tổng đài Travelix</h4>
                        <button type="button" class="close" data-dismiss="modal">×</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class="hotline-tour">
                            Hà Nội:
                            <a href="tel:02473075060" rel="nofollow">
                                024.73 07 50 60 <span><i class="fa fa-phone"></i> Gọi ngay</span>
                            </a>
                        </div>
                        <div class="hotline-tour">
                            Hồ Chí Minh:
                            <a href="tel:02844506070" rel="nofollow">
                                028.44 50 60 70 <span><i class="fa fa-phone"></i> Gọi ngay</span>
                            </a>
                        </div>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Đóng lại</button>
                    </div>
                </div>
            </div>
        </div>--%>
        <div>
            <input type="hidden" value="https://pystravel.vn/tour/store" name="checkMobile" />
        </div>


    </div>

    <jsp:include page="/WEB-INF/views/jsp/dialog.jsp"/>


    <!-- Scripts -->
    <script src="https://pystravel.vn/js/frontend.js?id=d1711aad626cd20f34b4"></script>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="slick/slick.min.js"></script>

    <!-- Criteo Product Tag -->
    <script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>
    <script type="text/javascript">
        window.criteo_q = window.criteo_q || [];
        var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d";
        window.criteo_q.push(
            { event: "setAccount", account: 33897 },
            { event: "setEmail", email: "" },
            { event: "setSiteType", type: deviceType },
            { event: "viewSearch", checkin_date: "", checkout_date: "" },
            { event: "viewItem", item: "318" }
        );
    </script>
    <!-- END Criteo Product Tag -->

    <noscript>
        <iframe title="Google map" src="https://www.googletagmanager.com/ns.html?id=GTM-5RCMT44" height="0" width="0" class="page_speed_1297344668"></iframe>
    </noscript>
    <script type="text/javascript">
        function checkGA(event) {
            ga("send", "event", "Click call", "click", "Call Switchboard");
        }

    </script>
    <script type="text/javascript" defer="defer" async="async">
        !(function (f, b, e, v, n, t, s) {
            if (f.fbq) return;
            n = f.fbq = function () {
                n.callMethod ? n.callMethod.apply(n, arguments) : n.queue.push(arguments);
            };
            if (!f._fbq) f._fbq = n;
            n.push = n;
            n.loaded = !0;
            n.version = "2.0";
            n.queue = [];
            t = b.createElement(e);
            t.async = !0;
            t.src = v;
            s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s);
        })(window, document, "script", "https://connect.facebook.net/en_US/fbevents.js");
        fbq("init", "1398586453757362");
        fbq("track", "PageView");
    </script>
    <noscript>
        <img height="1" width="1" class="page_speed_118463263" src="https://www.facebook.com/tr?id=1398586453757362&ev=PageView&noscript=1" />
    </noscript>
    <script type="text/javascript" defer="defer" async="async">
        (function (d, s, id) {
            var js,
                fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = "https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.1&appId=676081349149992s&autoLogAppEvents=1";
            fjs.parentNode.insertBefore(js, fjs);
        })(document, "script", "facebook-jssdk");
    </script>

    <!-- Facebook Pixel Code -->
    <script>
        !(function (f, b, e, v, n, t, s) {
            if (f.fbq) return;
            n = f.fbq = function () {
                n.callMethod ? n.callMethod.apply(n, arguments) : n.queue.push(arguments);
            };
            if (!f._fbq) f._fbq = n;
            n.push = n;
            n.loaded = !0;
            n.version = "2.0";
            n.queue = [];
            t = b.createElement(e);
            t.async = !0;
            t.src = v;
            s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s);
        })(window, document, "script", "https://connect.facebook.net/en_US/fbevents.js");
        fbq("init", "1794740344085876");
        fbq("track", "PageView");
    </script>
    <noscript><img height="1" width="1" class="page_speed_118463263" src="https://www.facebook.com/tr?id=843752206363671&ev=PageView&noscript=1" /></noscript>
    <!-- End Facebook Pixel Code -->
    <script>
        !(function (s, u, b, i, z) {
            var o, t, r, y;
            s[i] ||
            ((s._sbzaccid = z),
                (s[i] = function () {
                    s[i].q.push(arguments);
                }),
                (s[i].q = []),
                s[i]("setAccount", z),
                (r = [
                    "widget.subiz.net",
                    "storage.googleapis" + (t = ".com"),
                    "app.sbz.workers.dev",
                    i +
                    "a" +
                    (o = function (k, t) {
                        var n = t <= 6 ? 5 : o(k, t - 1) + o(k, t - 3);
                        return k !== t ? n : n.toString(32);
                    })(20, 20) +
                    t,
                    i + "b" + o(30, 30) + t,
                    i + "c" + o(40, 40) + t,
                ]),
                (y = function (k) {
                    var t, n;
                    s._subiz_init_2094850928430 ||
                    (r[k] && ((t = u.createElement(b)), (n = u.getElementsByTagName(b)[0]), (t.async = 1), (t.src = "https://" + r[k] + "/sbz/app.js?accid=" + z), n.parentNode.insertBefore(t, n), setTimeout(y, 2e3, k + 1)));
                })(0));
        })(window, document, "script", "subiz", "acokcepiqevsmgue56b0");
    </script>

    <div id="criteo-tags-div" style="display: none;"></div>
    <script async="" src="https://storage.googleapis.com/public-gcs.subiz-cdn.com/widget-v4/public/175f4edf52b.app.js"></script>
    <div id="subiz">
        <div class="desktop">
            <div class="widget-layout widget-layout--left">
                <div class="widget-preview widget-preview--left widget-preview--hidden widget-preview--hidden">
                    <div class="d-flex flex-row pl-3 pt-3 pr-3 pb-3">
                        <img class="widget-preview--avatar" src="http://localhost:8080/resources/home/images/logo.png" />
                        <div class="widget-preview--content">
                            <h5 class="widget-preview--title">Tư vấn viên</h5>
                            <p class="widget-preview--message"></p>
                        </div>
                        <div class="widget-preview--btn-close"></div>
                    </div>
                    <div class="widget-preview--action"><h5 class="widget-preview--action-text">Gửi tin nhắn</h5></div>
                </div>
                <div class="chat-button chat-button--left">
                    <div class="chat-button--white-bg"></div>
                    <div class="chat-button--img-container" style="background-image: url('https://file-subiz.com/fiqpfprswhcqyemakosk-ho_tro_truc_tuyen_5.png') !important; background-repeat: no-repeat !important;">
                        <img class="chat-button--img" src="https://file-subiz.com/fiqpfprswhcqyemakosk-ho_tro_truc_tuyen_5.png" />
                    </div>
                </div>
            </div>
            <div class="widget-container widget-container--left widget-container--hide">
                <div class="widget-header widget-header--collapsed">
                    <div class="widget-header--inner widget-header--inner--collapsed">
                        <div class="widget-header--wrap-button-back"><div class="widget-header--button-back" data-tooltip="Quay lại"></div></div>
                        <div class="group-avatar group-avatar--secondary">
                            <div class="d-inline-block pos-relative" data-tooltip="Travelix" data-tooltip-position="bottom">
                                <img class="avatar group-avatar--agent-left" src="http://localhost:8080/resources/home/images/logo.png" />
                            </div>
                        </div>
                        <div class="widget-header--title-container">
                            <div class="widget-header--title">Trò chuyện với Travelix</div>
                            <div class="widget-header--description">Chúng tôi sẵn sàng hỗ trợ và giải đáp mọi thắc mắc của Bạn</div>
                        </div>
                        <div class="widget-header--button widget-header--button-close" data-tooltip="Đóng" data-tooltip-position="bottom"><span class="widget-header--button-close-icon"></span></div>
                    </div>
                    <div class="widget-header--inner widget-header--inner--expanded widget-header--inner--hidden">
                        <div class="widget-header-expand-container">
                            <div class="widget-header--top-wrapper">
                                <div class="widget-header--title">Trò chuyện với Travelix</div>
                                <div class="widget-header--button widget-header--button-close" data-tooltip="Đóng" data-tooltip-position="bottom"><span class="widget-header--button-close-icon"></span></div>
                            </div>
                            <div class="widget_header__body widget_header__body__social">
                                <img class="social__account_logo" src="http://localhost:8080/resources/home/images/logo.png" />
                                <div>
                                    <div class="social__introduction">Chúng tôi sẵn sàng trợ giúp. Vui lòng hỏi chúng tôi bất cứ điều gì hoặc chia sẻ phản hồi của bạn</div>
                                    <div class="social__links"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="widget-header--inner widget-header--inner--expanded widget-header--inner--hidden">
                        <div class="widget-header-expand-container">
                            <div class="widget-header--top-wrapper">
                                <div class="widget-header--title">Trò chuyện với Travelix</div>
                                <div class="widget-header--button widget-header--button-close" data-tooltip="Đóng" data-tooltip-position="bottom"><span class="widget-header--button-close-icon"></span></div>
                            </div>
                            <div class="widget_header__body">
                                <div class="widget-header--avatar-wrapper">
                                    <div class="group-avatar group-avatar--primary">
                                        <div class="d-inline-block pos-relative" data-tooltip="Travelix" data-tooltip-position="bottom">
                                            <img class="avatar group-avatar--agent-middle" src="http://localhost:8080/resources/home/images/logo.png" />
                                        </div>
                                    </div>
                                </div>
                                <div class="widget-header--title-container"><div class="widget-header--description">Chúng tôi sẵn sàng hỗ trợ và giải đáp mọi thắc mắc của Bạn</div></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="widget-body">
                    <div class="widget-body--content">
                        <div class="widget-body--events-container">
                            <div class="widget-body--empty">
                                <div class="widget-body--empty-icon"></div>
                                <div class="widget-body--empty-text">Gửi một tin nhắn để bắt đầu hội thoại!</div>
                            </div>
                            <div class="poweredby">
                                <a href="https://subiz.com/?utm_source=id-acokcepiqevsmgue56b0&amp;utm_medium=widget&amp;utm_campaign=widget_referral" class="poweredby--text" target="_blank">
                                    <img class="poweredby--subiz-logo" src="https://storage.googleapis.com/public-gcs.subiz-cdn.com/widget-v4/public/assets/img/subiz-mono.877e9f5.svg" alt="true" /> Subiz
                                </a>
                            </div>
                        </div>
                        <div class="typing typing--hidden">Agent đang trả lời...</div>
                    </div>
                    <div class="d-none">
                        <div class="rating--overlay" style="opacity: 0 !important;"></div>
                        <div class="rating" style="color: red; height: 0px !important;">
                            <div class="rating--handle"><div class="rating--thumb"></div></div>
                            <div class="rating--content">
                                <div class="rating--heading">
                                    Cảm ơn vì đã trò chuyện
                                    <div class="rating--close-btn"></div>
                                </div>
                                <div class="rating--description">Bạn đánh giá trải nghiệm với tư vấn viên của chúng tôi thế nào?</div>
                                <textarea type="text" class="rating--comment"></textarea>
                                <div class="rating-faces-container">
                                    <div class="rating-face-container">
                                        <img src="https://storage.googleapis.com/public-gcs.subiz-cdn.com/widget-v4/public/assets/img/rating--poor.2938a25.svg" />
                                        <p class="rating-face--text">Tệ</p>
                                    </div>
                                    <div class="rating-face-container">
                                        <img src="https://storage.googleapis.com/public-gcs.subiz-cdn.com/widget-v4/public/assets/img/rating--average.1ea492c.svg" />
                                        <p class="rating-face--text">Trung bình</p>
                                    </div>
                                    <div class="rating-face-container">
                                        <img src="https://storage.googleapis.com/public-gcs.subiz-cdn.com/widget-v4/public/assets/img/rating--great.e3d712e.svg" />
                                        <p class="rating-face--text">Tuyệt vời</p>
                                    </div>
                                </div>
                                <div class="rating-no-thanks">Không, cám ơn!</div>
                            </div>
                        </div>
                    </div>
                    <div class="message-input">
                        <input class="d-none" type="file" multiple="" /><textarea class="message-input--input" maxlength="1024" placeholder="Nhập tin nhắn…" rows="1" data-emojiable="true"></textarea>
                        <div class="d-flex flex-row align-self-end">
                            <div><div class="message-input--button message-input--emoji-button"></div></div>
                            <div data-tooltip-poasition="top-left" class="message-input--button message-input--attachment-button"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="fb-root" class="fb_reset">
        <div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div>
    </div>
    <iframe height="0" width="0" title="Criteo DIS iframe" style="display: none;" __idm_frm__="179"></iframe>


    <!-- Jquery Core Js -->
    <script src="<c:url value="/resources/admin/plugins/jquery/jquery.min.js"/>"></script>

    <!-- Bootstrap Core Js -->
    <script src="<c:url value="/resources/admin/plugins/bootstrap/js/bootstrap.js"/>"></script>

    <!-- Select Plugin Js -->
    <script src="<c:url value="/resources/admin/plugins/bootstrap-select/js/bootstrap-select.js"/>"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="<c:url value="/resources/admin/plugins/jquery-slimscroll/jquery.slimscroll.js"/>"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="<c:url value="/resources/admin/plugins/node-waves/waves.js"/>"></script>
    <script src="<c:url value="/resources/admin/plugins/jquery-validation/jquery.validate.js"/>"></script>

    <!-- Jquery DataTable Plugin Js -->
    <script src="<c:url value="/resources/admin/plugins/jquery-datatable/jquery.dataTables.js"/>"></script>
    <script src="<c:url value="/resources/admin/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"/>"></script>
    <script src="<c:url value="/resources/admin/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/plugins/jquery-datatable/extensions/export/buttons.flash.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/plugins/jquery-datatable/extensions/export/jszip.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/plugins/jquery-datatable/extensions/export/pdfmake.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/plugins/jquery-datatable/extensions/export/vfs_fonts.js"/>"></script>
    <script src="<c:url value="/resources/admin/plugins/jquery-datatable/extensions/export/buttons.html5.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/plugins/jquery-datatable/extensions/export/buttons.print.min.js"/>"></script>
    <!-- Ckeditor -->
    <%--<script src="<c:url value="/resources/admin/plugins/ckeditor/ckeditor.js"/>"></script>--%>

    <!-- TinyMCE -->
    <script src="<c:url value='/resources/admin/tinymce/js/tinymce/tinymce.min.js' />"></script>
    <!-- Dropzone Plugin Js -->
    <script src="<c:url value='/resources/admin/plugins/dropzone/dropzone.js'/>"></script>

    <!-- Custom Js -->
    <script src="<c:url value="/resources/admin/js/admin.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/pages/forms/form-validation.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/pages/tables/jquery-datatable.js"/>"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

    <!-- Demo Js -->
    <script src="<c:url value="/resources/admin/js/demo.js"/>"></script>
    <script>
        tinymce.init({
            selector: 'textarea#mytinymce',
            plugins: 'print preview fullpage powerpaste casechange importcss tinydrive searchreplace autolink autosave save directionality advcode visualblocks visualchars fullscreen image link media mediaembed template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists checklist wordcount tinymcespellchecker a11ychecker imagetools textpattern noneditable help formatpainter permanentpen pageembed charmap tinycomments mentions quickbars linkchecker emoticons advtable',
            imagetools_cors_hosts: ['picsum.photos'],
            tinydrive_token_provider: function (success, failure) {
                success({token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJqb2huZG9lIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.Ks_BdfH4CWilyzLNk8S2gDARFhuxIauLa8PwhdEQhEo'});
            },
            /*tinydrive_demo_files_url: '/docs/demo/tiny-drive-demo/demo_files.json',
            tinydrive_dropbox_app_key: 'jee1s9eykoh752j',
            tinydrive_google_drive_key: 'AIzaSyAsVRuCBc-BLQ1xNKtnLHB3AeoK-xmOrTc',
            tinydrive_google_drive_client_id: '748627179519-p9vv3va1mppc66fikai92b3ru73mpukf.apps.googleusercontent.com',*/
            mobile: {
                plugins: 'print preview fullpage powerpaste casechange importcss tinydrive searchreplace autolink autosave save directionality advcode visualblocks visualchars fullscreen image link media mediaembed template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists checklist wordcount tinymcespellchecker a11ychecker textpattern noneditable help formatpainter pageembed charmap mentions quickbars linkchecker emoticons advtable'
            },
            menu: {
                tc: {
                    title: 'TinyComments',
                    items: 'addcomment showcomments deleteallconversations'
                }
            },
            /*  menubar: 'file edit view insert format tools table tc help',*/
            /*        toolbar: 'undo redo | bold italic underline strikethrough | fontselect fontsizeselect formatselect | alignleft aligncenter alignright alignjustify | outdent indent |  numlist bullist checklist | forecolor backcolor casechange permanentpen formatpainter removeformat | pagebreak | charmap emoticons | fullscreen  preview save print | insertfile image media pageembed template link anchor codesample | a11ycheck ltr rtl | showcomments addcomment',*/
            autosave_ask_before_unload: true,
            autosave_interval: "30s",
            autosave_prefix: "{path}{query}-{id}-",
            autosave_restore_when_empty: false,
            autosave_retention: "2m",
            image_advtab: true,
            content_css: [
                '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
                '//www.tiny.cloud/css/codepen.min.css'
            ],
            link_list: [
                {title: 'My page 1', value: 'http://www.tinymce.com'},
                {title: 'My page 2', value: 'http://www.moxiecode.com'}
            ],
            image_list: [
                {title: 'My page 1', value: 'http://www.tinymce.com'},
                {title: 'My page 2', value: 'http://www.moxiecode.com'}
            ],
            image_class_list: [
                {title: 'None', value: ''},
                {title: 'Some class', value: 'class-name'}
            ],
            importcss_append: true,
            height: 400,
            file_picker_callback: function (callback, value, meta) {
                /* Provide file and text for the link dialog */
                if (meta.filetype === 'file') {
                    callback('https://www.google.com/logos/google.jpg', {text: 'My text'});
                }

                /* Provide image and alt text for the image dialog */
                if (meta.filetype === 'image') {
                    callback('https://www.google.com/logos/google.jpg', {alt: 'My alt text'});
                }

                /* Provide alternative source and posted for the media dialog */
                if (meta.filetype === 'media') {
                    callback('movie.mp4', {source2: 'alt.ogg', poster: 'https://www.google.com/logos/google.jpg'});
                }
            },
            templates: [
                {
                    title: 'New Table',
                    description: 'creates a new table',
                    content: '<div class="mceTmpl"><table width="98%%"  border="0" cellspacing="0" cellpadding="0"><tr><th scope="col"> </th><th scope="col"> </th></tr><tr><td> </td><td> </td></tr></table></div>'
                },
                {title: 'Starting my story', description: 'A cure for writers block', content: 'Once upon a time...'},
                {
                    title: 'New list with dates',
                    description: 'New List with dates',
                    content: '<div class="mceTmpl"><span class="cdate">cdate</span><br /><span class="mdate">mdate</span><h2>My List</h2><ul><li></li><li></li></ul></div>'
                }
            ],
            template_cdate_format: '[Date Created (CDATE): %m/%d/%Y : %H:%M:%S]',
            template_mdate_format: '[Date Modified (MDATE): %m/%d/%Y : %H:%M:%S]',
            height: 600,
            image_caption: true,
            quickbars_selection_toolbar: 'bold italic | quicklink h2 h3 blockquote quickimage quicktable',
            noneditable_noneditable_class: "mceNonEditable",
            toolbar_drawer: 'sliding',
            spellchecker_dialog: true,
            spellchecker_whitelist: ['Ephox', 'Moxiecode'],
            tinycomments_mode: 'embedded',
            content_style: ".mymention{ color: gray; }",
            contextmenu: "link image imagetools table configurepermanentpen",
            mentions_selector: '.mymention'
        });
        //
        // $(() => {
        //     const options = {
        //         autoProcessQueue: false,
        //         url: "/file/post"
        //     };
        //     const myDropzone = new Dropzone($('#mydropzone').get(0), options);
        //
        //     $('#images').on('change',function () {
        //         myDropzone.addFile($('#images').get(0));
        //     });
        //
        //     console.log(myDropzone.files);
        //
        // });
    </script>
    <!-- Footer -->

    <jsp:include page="/WEB-INF/views/jsp/home_footer.jsp"/>



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

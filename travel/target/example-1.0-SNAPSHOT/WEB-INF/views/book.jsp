<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<%@include file="/common/taglib.jsp" %>
<c:url value="/login" var="loginUrl"/>
<c:url value="/logout" var="logoutUrl"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>POLYTRAVLER</title>
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
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/home/styles/main_styles.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/home/styles/responsive.css"/>">

<%--    <link rel="stylesheet" type="text/css"--%>
<%--          href="<c:url value="/resources/home/css/book.css"/>">--%>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
    <script>

        function loadNumber1() {
            var va = document.getElementById("nguoilon").value;
            var val = Math.round(va);
            document.getElementById("nguoilon").value = val;
        }

        function loadNumber2() {
            var va = document.getElementById("treem").value;
            var val = Math.round(va);
            document.getElementById("treem").value = val;
        }

        function requiredNumber1() {
            var va = document.getElementById("nguoilon").value;
            if (va < 0) {
                document.getElementById("nguoilon").value = 0;
                document.getElementById("nguoilon-value").value = 0;
            }
        }

        function requiredNumber2() {
            var va = document.getElementById("treem").value;
            if (va < 0 || Number.isInteger(va)) {
                document.getElementById("treem").value = 0;
                document.getElementById("treem-value").value = 0;
            }
        }

        function addNguoiLon() {
            var count = document.getElementById("nguoilon").value;
            var values = document.getElementById("nguoilon-value");
            var price = document.getElementById("tour_price").value;
            values.value = count * price;
            tinhtong();
        }

        function addTreEm() {
            var count = document.getElementById("treem").value;
            var values = document.getElementById("treem-value");
            var price = document.getElementById("tour_price").value;
            values.value = count * ((price * 50) / 100);
            tinhtong();
        }

        function tinhtong() {
            requiredNumber1();
            requiredNumber2();
            var sum = document.getElementById("tongtien");
            var nguoiLon = document.getElementById("nguoilon-value").value;
            var treEm = document.getElementById("treem-value").value;
            sum.value = Number(nguoiLon) + Number(treEm);
        }

    </script>
    <style>
        .error {
            color: red;
            font-size: 10px;
        }

        div.container {
            width: 100%;
            font-family: 'Open Sans', sans-serif;
        }

        .thongtin {
            float: left;
            width: 40%;
            margin: 0;
            padding: 1em;
        }

        .dangky {
            margin-left: 170px;
            padding: 1em;
            overflow: hidden;
        }

        .title {
            color: white;
            background: linear-gradient(to right, #fa9e1b, #8d4fff);
            border: 1px solid #ddd;
            padding: 8px;
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            border-radius: 27px;
            text-align: center;
        }

        #customers {
            border-collapse: collapse;
            width: 100%;
        }

        #customers td,
        #customers th {
            border-bottom: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:hover {
            background-color: #ddd;
        }

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
        }

        .forms {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 27px;
            box-sizing: border-box;
        }

        .forms:focus {
            background-color: #EEEEEE;
        }

        .forms::placeholder {
            color: red;
            text-align: right;
            font-size: 20px;
        }

        .danhsach {
            padding: 1em;
            clear: left;
            text-align: center;
        }

        .submits {
            width: 25%;
            /* background: linear-gradient(to right, #fa9e1b, #8d4fff); */
            background-color: #fa9e1b;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 15px;
            cursor: pointer;
            box-shadow: 0 0 1px #ccc;
            -webkit-transform-origin: 50% 50%;
            -webkit-transition-duration: 0.5s;
            -webkit-transition-timing-function: ease-out;
            -webkit-box-shadow: 1000px 0px 0 0  #8d4fff inset, -1000px 0px 0 #8d4fff inset;
        }

        .submits:hover {
            /* background: linear-gradient(to right, #8d4fff, #fa9e1b); */
            -webkit-box-shadow: 0px 0px 0 0 #8d4fff inset, 0px 0px 0  #8d4fff inset;
        }

        #add {
            width: 30%;
            float: left;
            background-color: #fa9e1b;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 15px;
            cursor: pointer;
            box-shadow: 0 0 1px #ccc;
            -webkit-transform-origin: 50% 50%;
            -webkit-transition-duration: 0.5s;
            -webkit-transition-timing-function: ease-out;
            -webkit-box-shadow: 1000px 0px 0 0  #8d4fff inset, -1000px 0px 0 #8d4fff inset;
        }

        #add:hover {
            -webkit-box-shadow: 0px 0px 0 0 #8d4fff inset, 0px 0px 0  #8d4fff inset;
        }

        .buttons {
            width: 100%;
            background-color: #FF6666;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 15px;
            cursor: pointer;
        }

        .buttons:hover {
            background-color: #CC3300;
        }

        #magiamgia {
            width: 20%;
            background-color: #8d4fff;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 15px;
            cursor: pointer;
            -webkit-transition-duration: 0.5s;
            -webkit-transition-timing-function: linear;
            box-shadow:0px 0 0 #fa9e1b inset;
        }

        #magiamgia:hover {
            box-shadow:100px 0 0 #fa9e1b inset;
        }

        .numbers {
            width: 60%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 27px;
            box-sizing: border-box;
        }

        .numbers:focus {
            background-color: #EEEEEE;
        }
    </style>
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

    <!-- Main -->
    <form:form method="POST" modelAttribute="bookTourDto">
        <div class="container">
            <h3 style="text-align: center; color: #8d4fff"; font-weight: bolder;>${tour.tour_Name}</h3>
            <div class="thongtin">
                <h3 class="title">THÔNG TIN TOUR</h3>
                <table style="width: 100%">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Thời gian:</td>
                        <td style="text-align: right"><p style="color: black"> Ngày: <f:formatDate value="${tour.tour_Departureday}" pattern="dd/MM/yyyy" /></p></td>
                    </tr>
                    <tr>
                        <td>Địa điểm khởi hành:</td>
                        <td style="text-align: right"><p style="color: black;">${tour.tour_Departurelocation}</p></td>
                    </tr>
                    <tr>
                        <td>Giá:</td>
                        <td style="text-align: right">
                            <input type="hidden" value="${tour.tour_Price}" id="tourPrice" >
                            <p id="tourPriceF" onload="load()" style="color: black"></p>
                        </td>
                    </tr>
                </table>

                <br/>

                <h3 class="title">GIÁ TOUR</h3>
                <input type="hidden" id="tour_price" value="${tour.tour_Price}">
                <table id="customers">
                    <tr>
                        <th></th>
                        <th>Số lượng</th>
                        <th>Giá</th>
                    </tr>
                    <tr>
                        <td>Người lớn (9 tuổi trở lên)</td>
                        <td><input class="numbers" id="nguoilon" type="number" name="numAdult"
                                   onchange="addNguoiLon(), requiredNumber1(), loadNumber1()" value="0"/></td>
                        <td>
                            <input type="text" id="nguoilon-value"
                                   style="border: none; width: 75%; background-color: white; text-align: right" readonly
                                   value="0">vnđ
                        </td>
                    </tr>
                    <tr>
                        <td>Trẻ em (6 đến 8 tuổi)</td>
                        <td><input class="numbers" id="treem" type="number" name="numChild"
                                   onchange="addTreEm(), requiredNumber2(), loadNumber2()" value="0"/></td>
                        <td>
                            <input type="text" id="treem-value"
                                   style="border: none; width: 75%; background-color: white; text-align: right" readonly
                                   value="0">vnđ
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <p>Tổng tiền:</p>
                        </td>
                        <td>
                            <input type="text" id="tongtien" name="price"
                                   style="border: none; width: 75%; background-color: white; text-align: right"
                                   readonly="true" value="0"/>vnđ
                        </td>
                    </tr>
                </table>
                <p style="float: right;">Đơn vị tiền tệ: VND</p>
            </div>

            <div class="dangky">

                <h3 class="title">THÔNG TIN NGƯỜI LIÊN HỆ</h3>

                <table style="width: 100%;">
                    <tr>
                        <td>
                            <label>Họ & tên: </label>
                            <form:input class="forms" path="name" type="text" placeholder="*"/><br/>
                        </td>
                        <td>
                            <label>Số điện thoại: </label>
                            <form:input class="forms" path="phone" type="text" placeholder="*"/><br/>

                        </td>
                    </tr>
                    <tr>
                        <td><form:errors path="name" cssClass="error"/></td>
                        <td><form:errors path="phone" cssClass="error"/></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>Email: </label>
                            <form:input class="forms" path="email" type="text" placeholder="*"/><br/>
                            <form:errors path="email" cssClass="error"/>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>Ghi chú:</label>
                            <form:textarea class="forms" path="note" rows="10"/>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <center>
            <button class="submits" type="submit">Đặt tour</button>
        </center>
        <br/><br/>
    </form:form>
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

</body>
<script>
    window.onload = function () {
        var val = document.getElementById("tourPrice").value;
        var valF = val.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        document.getElementById("tourPriceF").innerHTML = valF + " vnđ/người";
    }
</script>
</html>

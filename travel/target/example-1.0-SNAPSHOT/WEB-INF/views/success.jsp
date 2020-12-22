<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url value="/login" var="loginUrl"/>
<c:url value="/logout" var="logoutUrl"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Travelix</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Travelix Project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<c:url value="https://fonts.googleapis.com/icon?family=Material+Icons"/>">
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
    <style>
        .bodyy {
            text-align: center;
            padding: 40px 0;
            background: #EBF0F5;
        }

        .titlee {
            color: #8d4fff;
            font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
            font-weight: 900;
            font-size: 40px;
            margin-bottom: 10px;
        }

        .textt {
            color: #404F5E;
            font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
            font-size: 20px;
            margin: 0;
        }

        .checkmarkk {
            color: #8d4fff;
            font-size: 100px;
            line-height: 200px;
            margin-left: -15px;
        }

        .cardd {
            background: white;
            padding: 60px;
            border-radius: 4px;
            box-shadow: 0 2px 3px #C8D0D8;
            display: inline-block;
            margin: 0 auto;
        }

        .homee {
            width: 25%;
            background-color: #8d4fff;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 15px;
            cursor: pointer;
            -webkit-transition-duration: 0.3s;
            -webkit-transition-timing-function: linear;
            box-shadow: 0px 0 0 #fa9e1b inset;
        }

        .homee:hover {
            box-shadow: 200px 0 0 #fa9e1b inset;
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
    <div class="bodyy">
        <div class="cardd">
            <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
                <i class="checkmarkk">✓</i>
            </div>
            <h1 class="titlee">Đăng ký thành công</h1>
            <p class="textt">
                Chúng tôi đã nhận được thông tin và sẽ sớm liên lạc với bạn.<br/>
                Chúng tôi đã gửi thông tin tour về email của bạn.
            </p><br/>
            <a class="homee" href="<c:url value="/home"/>"><i class="fa fa-home"></i></a>
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

</body>

</html>

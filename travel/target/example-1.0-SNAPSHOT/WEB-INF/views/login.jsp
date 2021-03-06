<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="checkLoginUrl" value="/login"/>

<!DOCTYPE html>
<html>

<!-- Head -->
<head>

    <title>Đăng nhập</title>

    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords"
          content="Travel Agency Sign In Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //Meta-Tags -->

    <!-- Custom-Styleheet-Links -->
    <link href="<c:url value="/resources/home/css/style.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/resources/home/css/animate-custom.css"/>" rel="stylesheet"/>
    <!-- //Custom-Styleheet-Links -->

    <!-- Fonts -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" type="text/css"
          media="all">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700" type="text/css" media="all">
    <!-- //Fonts -->

</head>
<!-- //Head -->


<!-- Body -->
<body>

<h1 class="w3layouts agileits">POLY TRAVEL</h1>

<div class="container w3layouts agileits">

    <div class="content-left w3layouts agileits">
        <img src="/resources/home/images/lgimage/background.jpg" alt="W3layouts Agileits">

    </div>

    <div class="content-right w3layouts agileits">
        <section>
            <div id="container_demo">
                <div id="wrapper">
                    <div id="login" class="animate w3layouts agileits form" style="height: 438px;">
                        <h2 class="w3layouts agileits">Đăng nhập</h2>
                        <form id="sign_in" method="post" action="${checkLoginUrl}">
                            <c:if test="${not empty error}">
                                <span class="text-danger">
                                        ${error}
                                </span>
                            </c:if>
                            <label>Số điện thoại</label>
                            <input type="text" Name="user_Name" required="">
                            <label>Mật khẩu</label>
                            <input type="password" Name="user_Password" required="">
                            <div class="send-button w3layouts agileits">
                                <p><a href="/forgot-password1">Quên mật khẩu</a></p>
                                <form>
                                    <input type="submit" value="ĐĂNG NHẬP">
                                </form>
                                <div class="clear"></div>
                            </div>
                            <p class="change_link w3layouts agileits">
                                Bạn chưa có tài khoản? <a href="registration" class="to_register">Đăng ký!</a>
                            </p>
                            <div class="clear"></div>
                        </form>
                        <%--                        <div class="social-icons w3layouts agileits">--%>
                        <%--                            <p>OR USE YOUR SOCIAL ACCOUNTS</p>--%>
                        <%--                            <ul>--%>
                        <%--                                <li class="fb w3ls w3layouts agileits"><a href="#"><span class="icons w3layouts agileits"></span><span class="text w3layouts agileits">Facebook</span></a></li>--%>
                        <%--                                <li class="twt w3ls w3layouts agileits"><a href="#"><span class="icons w3layouts agileits"></span><span class="text w3layouts agileits">Twitter</span></a></li>--%>
                        <%--                                <div class="clear"></div>--%>
                        <%--                            </ul>--%>
                        <%--                        </div>--%>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </section>
    </div>
    <div class="clear"></div>

</div>

<div class="footer w3layouts agileits">
    <p> &copy; 2016 Travel Agency Sign In Form. All Rights Reserved | Template by <a href="http://w3layouts.com"
                                                                                     target="_blank">W3layouts</a></p>
</div>

</body>
<!-- //Body -->

</html>
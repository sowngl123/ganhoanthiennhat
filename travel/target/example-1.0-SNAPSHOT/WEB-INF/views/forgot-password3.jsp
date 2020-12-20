<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>

<!DOCTYPE html>
<html>

<!-- Head -->
<head>

    <title>Đặt lại mật khẩu</title>

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
                <a class="hiddenanchor w3layouts agileits" id="tologin"></a>
                <a class="hiddenanchor w3layouts agileits" id="toregister"></a>
                <div id="wrapper">
                    <div id="register" class="animate w3layouts agileits form" style="height: 472px;">
                        <h2>Đặt lại mật khẩu</h2>
                        <form method="POST" autocomplete="on">
                            <label>Mật khẩu:</label>
                            <input type="password" name="password" required="" id="pass" oninput="check1()">
                            <p style="color: red; display: none" id="error2">Mật khẩu này bạn đã sử dụng, hãy thử mật khẩu khác</p>
                            <label>Nhập lại mật khẩu:</label>
                            <input type="password" name="repassword" required="" id="rePass" oninput="check2()">
                            <p style="color: red; display: none" id="error1">Không đúng mật khẩu</p>
                            <input type="hidden" id="password" value="${password}">
                            <div class="send-button w3layouts agileits">
                                <input type="submit" value="Xác nhận" id="submit" disabled="true">
                            </div>
                            <div class="clear"></div>
                        </form>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </section>
    </div>
    <div class="clear"></div>

</div>

<div class="footer w3layouts agileits">
    <p> &copy; Đăng ký | POLY TRAVEL <a href="http://w3layouts.com" target="_blank">POLY TRAVEL</a></p>
</div>

</body>
<!-- //Body -->
<script>
    function check1() {
        var pass = document.getElementById("pass").value;
        var password = document.getElementById("password").value;
        if (pass == password) {
            document.getElementById("submit").disabled = false;
            document.getElementById("error2").style.display = "block";
        }
        else {
            document.getElementById("error2").style.display = "none";
        }
    }

    function check2() {
        var pass = document.getElementById("pass").value;
        var rePass = document.getElementById("rePass").value;

        if (pass == rePass) {
            document.getElementById("submit").disabled = false;
            document.getElementById("error1").style.display = "block";
        }
        else {
            document.getElementById("submit").disabled = true;
            document.getElementById("error1").style.display = "none";
        }
    }
</script>
</html>
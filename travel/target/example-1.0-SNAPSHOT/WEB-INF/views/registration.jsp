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

    <title>Đăng ký tài khoản</title>

    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="Travel Agency Sign In Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //Meta-Tags -->

    <!-- Custom-Styleheet-Links -->
    <link href="<c:url value="/resources/home/css/style.css"/>" rel="stylesheet" />
    <link href="<c:url value="/resources/home/css/animate-custom.css"/>" rel="stylesheet" />
    <!-- //Custom-Styleheet-Links -->

    <!-- Fonts -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" type="text/css" media="all">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700" 		  type="text/css" media="all">
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
                        <h2>Đăng ký</h2>
                        <form  action="#" autocomplete="on" method="post">
                            <form method="post">
                                <label>E-mail</label>
                                <input type="text" Name="user_Email" required="" id="email" oninput="validateEmail()">
                                <p style="color: red;display: none" id="errorEmailBlank">Không được để trống email</p>
                                <p style="color: red;display: none" id="errorEmailConvert">Không đúng định dạng email</p>
                                <p style="color: red;display: none" id="errorEmailUnique">Email đã được đăng ký cho tài khoản khác</p>
                                <label>Số điện thoại</label>
                                <input type="text" class="name w3layouts agileits" Name="user_Name" required="" id="phone" oninput="validatePhone()">
                                <p style="color: red;display: none" id="errorPhoneBlank">Không được để trống số điện thoại</p>
                                <p style="color: red;display: none" id="errorPhoneConvert">Không đúng định dạng số điện thoại</p>
                                <p style="color: red;display: none" id="errorPhoneUnique">Số điện thoại đã được đăng ký cho tài khoản khác</p>
                                <label>Mật khẩu</label>
                                <input type="password" Name="user_Password" required="" id="pass" oninput="validatePass()">
                                <p style="color: red;display: none" id="errorPassBlank">Không được để trống mật khẩu</p>
                                <label>Nhập lại mật khẩu</label>
                                <input type="password" Name="REuser_Password" required="" id="rePass" oninput="validateRePass()">
                                <p style="color: red;display: none" id="errorRePassBlank">Không được để trống nhập lại mật khẩu</p>
                                <p style="color: red;display: none" id="errorRePassEqual">Không đúng mật khẩu</p>
                                <input hidden type="text" Name="user_Status" value="1" >
                                <input hidden type="text" Name="user_Role" value="0" >
                                <input hidden type="text" Name="user_Gender" value="0" >
                                <div class="send-button w3layouts agileits">
                                    <form action="#" method="post">
                                        <input type="submit" value="Đăng ký" id="submit" disabled="true">
                                    </form>
                                </div>
                                <c:forEach var="list" items="${listEmail}">
                                    <input type="hidden" name="arrayE[]" value="${list}"/>
                                </c:forEach>
                                <c:forEach var="list" items="${listPhone}">
                                    <input type="hidden" name="arrayP[]" value="${list}"/>
                                </c:forEach>
                            </form>
                            <p class="change_link w3layouts agileits">
                                Bạn đã có tài khoản? <a href="login" class="to_register">Đăng nhập</a>
                            </p>
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
    function validateEmail() {
        var email = document.getElementById("email").value;
        const re = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
        var aa = document.getElementsByName("arrayE[]");
        var kt = false;

        if (email.length == 0) {
            document.getElementById("errorEmailBlank").style.display = "block";
            document.getElementById("submit").disabled = true;
        }
        else {
            document.getElementById("errorEmailBlank").style.display = "none";
            if (re.test(String(email)) == false) {
                document.getElementById("errorEmailConvert").style.display = "block";
                document.getElementById("submit").disables = true;
            }
            else {
                document.getElementById("errorEmailConvert").style.display = "none";
                for (var i = 0; i < aa.length; i++) {
                    var a = aa[i];
                    if (!(String(email)).localeCompare(String(a.value))) {
                        kt = true;
                    }
                }
                if (kt == true) {
                    document.getElementById("submit").disabled = true;
                    document.getElementById("errorEmailUnique").style.display = "block";
                }
                else {
                    document.getElementById("submit").disabled = false;
                    document.getElementById("errorEmailUnique").style.display = "none";
                }
            }
        }
    }

    function validatePhone() {
        var phone = document.getElementById("phone").value;
        const re = /((09|03|07|08|05)+([0-9]{8})\b)/g;
        var aa = document.getElementsByName("arrayP[]");
        var kt = false;

        if (phone.length == 0) {
            document.getElementById("errorPhoneBlank").style.display = "block";
            document.getElementById("submit").disabled = true;
        }
        else {
            document.getElementById("errorPhoneBlank").style.display = "none";
            if (re.test(String(phone)) == false) {
                document.getElementById("errorPhoneConvert").style.display = "block";
                document.getElementById("submit").disables = true;
            }
            else {
                document.getElementById("errorPhoneConvert").style.display = "none";
                for (var i = 0; i < aa.length; i++) {
                    var a = aa[i];
                    if (!(String(phone)).localeCompare(String(a.value))) {
                        kt = true;
                    }
                }
                if (kt == true) {
                    document.getElementById("submit").disabled = true;
                    document.getElementById("errorPhoneUnique").style.display = "block";
                }
                else {
                    document.getElementById("submit").disabled = false;
                    document.getElementById("errorPhoneUnique").style.display = "none";
                }
            }
        }
    }
    
    function validatePass() {
        var pass = document.getElementById("pass").value;
        if (pass.length == 0) {
            document.getElementById("errorPassBlank").style.display = "block";
            document.getElementById("submit").disabled = true;
        }
        else {
            document.getElementById("errorPassBlank").style.display = "none";
            document.getElementById("submit").disabled = false;
        }
    }

    function validateRePass() {
        var pass = document.getElementById("pass").value;
        var rePass = document.getElementById("rePass").value;

        if (rePass.length == 0) {
            document.getElementById("errorRePassBlank").style.display = "block";
            document.getElementById("submit").disabled = true;
        }
        else {
            document.getElementById("errorPassBlank").style.display = "none";
            if (pass != rePass) {
                document.getElementById("errorRePassEqual").style.display = "block";
                document.getElementById("submit").disabled = true;
            }
            else {
                document.getElementById("errorRePassEqual").style.display = "none";
                document.getElementById("submit").disabled = false;
            }
        }
    }
</script>
</html>
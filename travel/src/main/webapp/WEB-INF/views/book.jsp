<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url value="/login" var="loginUrl"/>
<c:url value="/logout" var="logoutUrl"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Đặt tour</title>
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
    <%--          href="<c:url value="/resources/home/css/books.css"/>">--%>
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
            var values = document.getElementById("tour_price").value;
            if (va <= 0) {
                document.getElementById("nguoilon").value = 1;
                document.getElementById("nguoilon-value").value = values;
                document.getElementById("nguoilon-valueV").innerHTML = document.getElementById("nguoilon-value").value.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            }
        }
        function requiredNumber2() {
            var va = document.getElementById("treem").value;
            if (va < 0) {
                document.getElementById("treem").value = 0;
                document.getElementById("treem-value").value = 0;
                document.getElementById("treem-valueV").innerHTML = document.getElementById("treem-value").value.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            }
        }
        function addNguoiLon() {
            var count = document.getElementById("nguoilon").value;
            var values = document.getElementById("nguoilon-value");
            var price = document.getElementById("tour_price").value;
            values.value = count * price;
            document.getElementById("nguoilon-valueV").innerHTML = values.value.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            tinhtong();
        }
        function addTreEm() {
            var count = document.getElementById("treem").value;
            var values = document.getElementById("treem-value");
            var price = document.getElementById("tour_price").value;
            values.value = count * ((price * 70) / 100);
            document.getElementById("treem-valueV").innerHTML = values.value.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            tinhtong();
        }
        function tinhtong() {
            requiredNumber1();
            requiredNumber2();
            var sum = document.getElementById("tongtien");
            var nguoiLon = document.getElementById("nguoilon-value").value;
            var treEm = document.getElementById("treem-value").value;
            sum.value = Number(nguoiLon) + Number(treEm);
            document.getElementById("tongtienV").innerHTML = sum.value.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
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
            -webkit-box-shadow: 1000px 0px 0 0 #8d4fff inset, -1000px 0px 0 #8d4fff inset;
        }
        .submits:hover {
            /* background: linear-gradient(to right, #8d4fff, #fa9e1b); */
            -webkit-box-shadow: 0px 0px 0 0 #8d4fff inset, 0px 0px 0 #8d4fff inset;
        }

        .submits[disabled], submits:disabled {
            background-color: grey;
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
            -webkit-box-shadow: 1000px 0px 0 0 #8d4fff inset, -1000px 0px 0 #8d4fff inset;
        }
        #add:hover {
            -webkit-box-shadow: 0px 0px 0 0 #8d4fff inset, 0px 0px 0 #8d4fff inset;
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
            <h3 style="text-align: center; color: #8d4fff" ; font-weight: bolder;>${tour.tour_Name}</h3>
            <div class="thongtin">
                <h3 class="title">THÔNG TIN TOUR</h3>
                <table style="width: 100%">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Thời gian:</td>
                        <td style="text-align: right"><p style="color: black">${tourDay} ngày</p></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Địa điểm khởi hành:</td>
                        <td style="text-align: right"><p style="color: black;">${tour.tour_Departurelocation}</p></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Giá (đã bao gồm VAT):</td>
                        <td style="text-align: right">
                            <input type="hidden" value="${tour.tour_Price}" id="tourPrice">
                            <p id="tourPriceF" onload="load()" style="color: black"></p>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Phương tiện:</td>
                        <td style="text-align: right">
                            <input type="hidden" value="${tour.tour_Vehicle}" id="tourVehicle">
                            <p id="tourVehicleF" style="color: black"></p>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Số chỗ còn:</td>
                        <td style="text-align: right"><p style="color: black;">${tour.tour_Max} người</p></td>
                    </tr>
                </table>

                <br/>

                <h3 class="title">GIÁ TOUR</h3>
                <input type="hidden" id="tour_price" value="${tour.tour_Price}">
                <table id="customers">
                    <tr>
                        <th></th>
                        <th>Số lượng</th>
                        <th>Số tiền</th>
                    </tr>
                    <tr>
                        <td>Người lớn (9 tuổi trở lên)</td>
                        <td><input class="numbers" id="nguoilon" type="number" name="numAdult"
                                   onchange="addNguoiLon(), requiredNumber1(), loadNumber1()" value="1"/></td>
                        <td>
                            <input type="hidden" id="nguoilon-value"
                                   style="border: none; width: 75%; background-color: white; text-align: right" readonly
                                   value="${tour.tour_Price}">
                            <p id="nguoilon-valueV" style="color: black"></p>
                        </td>
                    </tr>
                    <tr>
                        <td>Trẻ em (5 - 8 tuổi)</td>
                        <td><input class="numbers" id="treem" type="number" name="numChild"
                                   onchange="addTreEm(), requiredNumber2(), loadNumber2()" value="0"/></td>
                        <td>
                            <input type="hidden" id="treem-value"
                                   style="border: none; width: 75%; background-color: white; text-align: right" readonly
                                   value="0">
                            <p id="treem-valueV" style="color: black"></p>
                        </td>
                    </tr>
<%--                    <tr>--%>
<%--                        <td>Trẻ sơ sinh</td>--%>
<%--                        <td><input class="numbers" type="number" name="numBaby"--%>
<%--                                   value="0"/></td>--%>
<%--                        <td>--%>
<%--                            <input type="text"--%>
<%--                                   style="border: none; width: 75%; background-color: white; text-align: right" readonly--%>
<%--                                   value="0">--%>
<%--                        </td>--%>
<%--                    </tr>--%>
                    <tr>
                        <td colspan="2">
                            <p style="color: black">Tổng tiền (đã bao gồm VAT):</p>
                        </td>
                        <td>
                            <input type="hidden" id="tongtien" name="price"
                                   style="border: none; width: 75%; background-color: white; text-align: right"
                                   readonly="true" value="${tour.tour_Price}"/>
                            <p id="tongtienV" style="color: black"></p>
                        </td>
                    </tr>
                </table>
                <p style="float: right;">Đơn vị tiền tệ: VNĐ</p>
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
                            <form:textarea class="forms" path="notes" rows="10"/><br/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="radio" id="male" name="gender" value="male" onclick="clickCK()" checked>
                            <label for="male">Chuyển khoản ngân hàng</label><br>

                            <div id="payCK" style="display: block">
                                <p style="color: black; margin: 10px">THÔNG TIN THANH TOÁN CHUYỂN KHOẢN</p>

                                <p style="color: black; margin: 10px"> - Ngân hàng Đầu tư và Phát triển Việt Nam</p>

                                <p style="color: black; margin: 10px"> - Tên đơn vị hưởng: CÔNG TY CỔ PHẦN DỊCH VỤ DU
                                    LỊCH POLYTRAVEL</p>

                                <p style="color: black; margin: 10px"> - Số tài khoản: 21710000423369</p>

                                <p style="color: black; margin: 10px"> - Tại Ngân hàng BIDV - CN TP.HN</p>
                            </div>
                            <br/>
                            <input type="radio" id="female" name="gender" value="female" onclick="clickTM()">
                            <label for="female">Thanh toán tại văn phòng</label><br>
                            <div id="payTM" style="display: none">
                                <p style="color: black; margin: 10px">CÔNG TY CỔ PHẦN DỊCH VỤ DU LỊCH POLYTRAVEL</p>

                                <p style="color: black; margin: 10px">Trụ sở: Tòa nhà FPT Polytechnic, Phố Trịnh Văn Bô, Nam Từ Liêm, Hà Nội</p>

                                <p style="color: black; margin: 10px">Điện thoại: (024) 7300 1955</p>

                                <p style="color: black; margin: 10px">Tổng đài: 1900 6668</p>

                                <p style="color: black; margin: 10px">Fax: 028.3829 5060</p>

                                <p style="color: black; margin: 10px">Email: polytravel188@gmail.com</p>
                            </div>
                            <br/>
                            <form:input type="hidden" id="bookTourPayment" path="payment" value="0"/>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <br/>
        <center>
            <hr style="width: 85%; border: 1px solid #fa9e1b;"/>
            <input type="checkbox" id="myCheck" onclick="clickCheck()"> Tôi đồng ý với điều khoản của công ty
        </center>
        <br/>
        <center>
            <button class="submits" type="submit" disabled="true" id="sub">Đặt tour</button>
        </center>
        <br/><br/>
    </form:form>
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
<script>
    function clickCK() {
        document.getElementById("payCK").style.display = "block";
        document.getElementById("payTM").style.display = "none";
        document.getElementById("bookTourPayment").value = 0;
    }
    function clickTM() {
        document.getElementById("payTM").style.display = "block";
        document.getElementById("payCK").style.display = "none";
        document.getElementById("bookTourPayment").value = 1;
    }
    window.onload = function () {
        var val = document.getElementById("tourPrice").value;
        var valF = val.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        document.getElementById("tourPriceF").innerHTML = valF + " vnđ/người";
        var vehicle = document.getElementById("tourVehicle").value;
        var vehicleF = document.getElementById("tourVehicleF");
        if (vehicle == 0) {
            vehicleF.innerHTML = "Ô tô";
        }
        if (vehicle == 1) {
            vehicleF.innerHTML = "Máy bay";
        }
        if (vehicle == 2) {
            vehicleF.innerHTML = "Ô tô & Máy bay";
        }
        document.getElementById("nguoilon-valueV").innerHTML = document.getElementById("nguoilon-value").value.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        document.getElementById("treem-valueV").innerHTML = document.getElementById("treem-value").value.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        document.getElementById("tongtien").value = Number(document.getElementById("nguoilon-value").value) + Number(document.getElementById("treem-value").value);
        document.getElementById("tongtienV").innerHTML = document.getElementById("tongtien").value.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    }

    function clickCheck() {
        if (document.getElementById("myCheck").checked == true) {
            document.getElementById("sub").disabled = false;
        }
        else {
            document.getElementById("sub").disabled = true;
        }
    }
</script>
</html>
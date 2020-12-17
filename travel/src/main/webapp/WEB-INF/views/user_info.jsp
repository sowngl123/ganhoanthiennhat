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
    <title>Thông tin tài khoản</title>
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

    <jsp:include page="/WEB-INF/views/jsp/home_header.jsp"/>


    <jsp:include page="/WEB-INF/views/jsp/home_menu.jsp"/>

    <!-- Home -->

    <jsp:include page="/WEB-INF/views/jsp/home_slide.jsp"/>
    <!-- Search -->

    <jsp:include page="/WEB-INF/views/jsp/home_search.jsp"/>
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
                                                    nhân</a>&nbsp&nbsp
                                            </td>
                                            <td>
                                                <a class="btn btn-lg" style="background-color: #fa9e1b; color: white;"
                                                   href="/home/user_info/change_password"><i
                                                        class="glyphicon glyphicon-pencil"></i> Đổi mật khẩu</a>
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
                                    <th>Tên tour</th>
                                    <th>Ngày đăng ký</th>
                                    <th>Trạng thái</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="list" items="${listBookTour}">
                                    <tr>
                                        <td><p style="color: black">${list.tourName}</p></td>
                                        <td><p style="color: black">${list.createDateFormat}</p></td>
                                        <td>
                                            <p id="payStatusF" style="color: black"></p>
                                            <input type="hidden" value="${list.payStatus}" id="payStatus">
                                        </td>
                                        <td>
                                            <button class="btn btn-lg btn-success" type="button"
                                                    data-target="#exampleModalCenter" data-toggle="modal"
                                                    onclick="showBookTour(${list.registration_Id})">
                                                <i class="glyphicon glyphicon-info-sign"></i> Chi tiết
                                            </button>
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
                                <th>Tên tour</th>
                                <th>Ngày đăng ký</th>
                                <th></th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="listW" items="${listBookTourWait}">
                                <tr>
                                    <td><p style="color: black">${listW.tourName}</p></td>
                                    <td><p style="color: black">${listW.createDateFormat}</p></td>
                                    <td>
                                        <button class="btn btn-lg btn-success" type="button"
                                                data-target="#exampleModalCenter" data-toggle="modal"
                                                onclick="showBookTour(${listW.registration_Id})">
                                            <i class="glyphicon glyphicon-info-sign"></i> Chi tiết
                                        </button>
                                    </td>
                                    <td>
                                        <button class="btn btn-lg btn-danger"
                                                onclick="handleDelete(${listW.registration_Id})">
                                            <i class="glyphicon glyphicon-remove"></i> Hủy đặt
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
    <jsp:include page="/WEB-INF/views/jsp/home_footer.jsp"/>
</div>
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #fa9e1b">
                <h5 class="modal-title" id="exampleModalLongTitle"
                    style="margin-top: 10px; color: white; font-weight: bold; font-size: large">Thông tin đặt tour</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color: navajowhite">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row clearfix">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="body">
                            <form>
                                <center><textarea rows="3" cols="10"
                                                  style="border: none; background-color: white; width: 100%; text-align: center; font-weight: bold; font-size: large"
                                                  id="book_tourName" name="book_tourName" disabled="true"></textarea>
                                </center><br/>
                                <table border="0">
                                    <tr>
                                        <td colspan="2">
                                            <label>Tên người đặt:</label> <input
                                                style="border: none; background-color: white; width: 100%; margin-left: 10px"
                                                type="text" id="book_name" name="book_name"
                                                disabled="true"></input><br/><br/><br/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Số điện thoại:</label> <input
                                                style="border: none; background-color: white; width: 100%; margin-left: 10px"
                                                type="text" id="book_phone" name="book_phone" disabled="true"></input><br/><br/><br/>
                                        </td>
                                        <td>
                                            <label>Email:</label> <input
                                                style="border: none; background-color: white; width: 100%; margin-left: 10px"
                                                type="text" id="book_email" name="book_email" disabled="true"></input><br/><br/><br/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Số người lớn đăng ký:</label> <input
                                                style="border: none; background-color: white; width: 100%; margin-left: 10px"
                                                type="text" id="book_numAdult" name="book_numAdult"
                                                disabled="true"></input><br/><br/><br/>
                                        </td>
                                        <td>
                                            <label>Số trẻ em đăng ký:</label> <input
                                                style="border: none; background-color: white; width: 100%; margin-left: 10px"
                                                type="text" id="book_numChild" name="book_numChild"
                                                disabled="true"></input><br/><br/><br/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label>Ghi chú:</label> <textarea
                                                style="border: none; background-color: white; width: 100%; margin-left: 10px"
                                                id="book_notes" name="book_notes" disabled="true"></textarea><br/><br/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <label>Tổng tiền:</label> <input
                                                style="border: none; background-color: white; width: 100%; margin-left: 10px"
                                                type="text" id="book_price" name="book_price" disabled="true"></input><br/><br/>
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success">Thông tin tour</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
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

        var pay = document.getElementById("payStatus").value;
        var payF = document.getElementById("payStatusF");

        if (pay == 0) {
            payF.innerHTML = "Chưa thanh toán";
        }
        if (pay == 1) {
            payF.innerHTML = "Đã thanh toán";
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

    function showBookTour(bookId) {
        let book_tourName = $('#book_tourName');
        let book_name = $('#book_name');
        let book_phone = $('#book_phone');
        let book_email = $('#book_email');
        let book_numAdult = $('#book_numAdult');
        let book_numChild = $('#book_numChild');
        let book_note = $('#book_notes');
        let book_price = $('#book_price');
        $.ajax({
            url: '/home/user_info/book/' + bookId,
            type: 'GET',
            dataType: 'json',
            contentType: 'application/json; charset=utf-8',
            data: '',
            success: function (data) {
                setDataForInputText(book_tourName, data.tourName);
                setDataForInputText(book_name, data.name);
                setDataForInputText(book_phone, data.phone);
                setDataForInputText(book_email, data.email);
                setDataForInputText(book_numAdult, data.numAdult);
                setDataForInputText(book_numChild, data.numChild);
                setDataForInputText(book_note, data.notes);
                setDataForInputText(book_price, (data.priceFormat).replace(/\B(?=(\d{3})+(?!\d))/g, ',') + " vnđ");
                $('#exampleModalCenter').modal('toggle');
            },
            error: function (error) {
                console.log(error);
            }
        })
    }

    function setDataForInputText(field, data) {
        field.closest('div').addClass('focused');
        field.val(data);
    }
</script>

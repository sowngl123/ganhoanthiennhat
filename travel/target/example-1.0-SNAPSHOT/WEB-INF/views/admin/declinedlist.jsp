<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>TRANG QUẢN LÝ | DANH SÁCH TOUR TỪ CHỐI</title>
    <!-- Favicon-->
    <link rel="icon" href="<c:url value="/resources/admin/favicon.ico"/>" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet"
          type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="<c:url value="/resources/admin/plugins/bootstrap/css/bootstrap.css"/>" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="<c:url value="/resources/admin/plugins/node-waves/waves.css"/>" rel="stylesheet"/>

    <!-- Animation Css -->
    <link href="<c:url value="/resources/admin/plugins/animate-css/animate.css"/>" rel="stylesheet"/>

    <!-- JQuery DataTable Css -->
    <link href="<c:url value="/resources/admin/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css"/>"
          rel="stylesheet">

    <!-- Bootstrap Select Css -->
    <link href="<c:url value="/resources/admin/plugins/bootstrap-select/css/bootstrap-select.css"/>" rel="stylesheet"/>

    <!-- Custom Css -->
    <link href="<c:url value="/resources/admin/css/style.css"/>" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="<c:url value="/resources/admin/css/themes/all-themes.css"/>" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .modal {
            text-align: center;
            padding: 0 !important;
        }

        .modal:before {
            content: '';
            display: inline-block;
            height: 100%;
            vertical-align: middle;
            margin-right: -4px;
        }

        .modal-dialog {
            display: inline-block;
            text-align: left;
            vertical-align: middle;
        }

        .button-style {
            margin-right: 10px;
        }
    </style>
</head>

<body class="theme-red">
<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="preloader">
            <div class="spinner-layer pl-red">
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div>
                <div class="circle-clipper right">
                    <div class="circle"></div>
                </div>
            </div>
        </div>
        <p>Please wait...</p>
    </div>
</div>
<!-- #END# Page Loader -->
<!-- Overlay For Sidebars -->
<div class="overlay"></div>
<!-- #END# Overlay For Sidebars -->
<!-- Search Bar -->
<div class="search-bar">
    <div class="search-icon">
        <i class="material-icons">search</i>
    </div>
    <input type="text" placeholder="START TYPING...">
    <div class="close-search">
        <i class="material-icons">close</i>
    </div>
</div>
<!-- #END# Search Bar -->
<!-- Top Bar -->
<nav class="navbar">
    <div class="container-fluid">
        <div class="navbar-header">
            <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse"
               data-target="#navbar-collapse" aria-expanded="false"></a>
            <a href="javascript:void(0);" class="bars"></a>
            <a class="navbar-brand" href="#">TRANG QUẢN LÝ </a>
        </div>
    </div>
</nav>
<!-- #Top Bar -->
<section>
    <!-- Left Sidebar -->
    <aside id="leftsidebar" class="sidebar">
        <!-- User Info -->
        <div class="user-info">
            <div class="image">
                <img src="<c:url value="/resources/admin/images/user.png"/>" width="48" height="48" alt="User"/>
            </div>
            <div class="info-container">
                <c:if test="${not empty dto}">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true"
                         aria-expanded="false">${dto.user_Name}</div>
                    <div class="email">${dto.user_Email}</div>
                </c:if>
                <div class="btn-group user-helper-dropdown">
                    <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                    <ul class="dropdown-menu pull-right">
                        <li><a href="javascript:void(0);"><i class="material-icons">person</i>Hồ sơ</a></li>
                        <li role="separator" class="divider"></li>
                        <%--                        <li><a href="javascript:void(0);"><i class="material-icons">group</i>Followers</a></li>--%>
                        <%--                        <li><a href="javascript:void(0);"><i class="material-icons">shopping_cart</i>Sales</a></li>--%>
                        <%--                        <li><a href="javascript:void(0);"><i class="material-icons">favorite</i>Likes</a></li>--%>
                        <%--                        <li role="separator" class="divider"></li>--%>
                        <li><a href="/logout"><i class="material-icons">input</i>Đăng xuất</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- #User Info -->
        <!-- Menu -->
        <c:choose>
            <c:when test="${dto.user_Role == 2}">
                <div class="menu">
                    <ul class="list">
                        <li class="header"> Quản lý tài khoản </li>
                        <li>
                            <a href="/admin/home">
                                <i class="material-icons">list</i>
                                <span>Quản lý tài khoản</span>
                            </a>
                        </li>
                        <li class="header">Quản lý đăng ký tour</li>
                        <li>
                            <a href="/admin/ordertour">
                                <i class="material-icons">list</i>
                                <span>Các tour mới được đăng ký</span>
                            </a>
                        </li>
                        <li class="header">Quản lý tour</li>
                        <li>
                            <a href="/admin/tours">
                                <i class="material-icons">list</i>
                                <span>Quản lý tour</span>
                            </a>
                        </li>
                        <li>
                            <a href="/admin/topic">
                                <i class="material-icons">list</i>
                                <span>Quản lý chủ đề</span>
                            </a>
                        </li>
                        <li>
                            <a href="/admin/accommodation">
                                <i class="material-icons">list</i>
                                <span>Quản lý khách sạn</span>
                            </a>
                        </li>
                        <li>
                            <a href="/admin/restaurant">
                                <i class="material-icons">list</i>
                                <span>Quản lý nhà hàng</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </c:when>
            <c:otherwise>
                <div class="menu">
                    <ul class="list">
                        <li class="header">Quản lý đăng ký tour</li>
                        <li>
                            <a href="/admin/ordertour">
                                <i class="material-icons">list</i>
                                <span>Các tour mới được đăng ký</span>
                            </a>
                        </li>
                        <li class="header">Quản lý tour</li>
                        <li>
                            <a href="/admin/tours">
                                <i class="material-icons">list</i>
                                <span>Quản lý tour</span>
                            </a>
                        </li>
                        <li>
                            <a href="/admin/topic">
                                <i class="material-icons">list</i>
                                <span>Quản lý chủ đề</span>
                            </a>
                        </li>
                        <li>
                            <a href="/admin/accommodation">
                                <i class="material-icons">list</i>
                                <span>Quản lý khách sạn</span>
                            </a>
                        </li>
                        <li>
                            <a href="/admin/restaurant">
                                <i class="material-icons">list</i>
                                <span>Quản lý nhà hàng</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </c:otherwise>
        </c:choose>
        <!-- #Menu -->
        <!-- Footer -->
        <div class="legal">
            <div class="copyright">
                &copy; 2020 - 2021 <a href="javascript:void(0);">Trang quản lý</a>.
            </div>
            <div class="version">
                <b>Version: </b> 1.0.5
            </div>
        </div>
        <!-- #Footer -->
    </aside>
    <!-- #END# Left Sidebar -->
</section>

<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <h2>
                QUẢN LÝ ĐĂNG KÝ TOUR
            </h2>
            <c:if test="${not empty status}">
                <div class="alert alert-success alert-dismissible" style="margin-top: 20px" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <strong>Thành công!</strong> Bạn nên kiểm tra lại dữ liệu bên dưới.
                </div>
            </c:if>
        </div>
        <!-- Basic Examples -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <button><a href="/admin/ordertour">Danh sách tour đang chờ</a> </button>
                        <button><a href="/admin/listaccepted">Danh sách tour đã chấp nhận</a> </button>
                        <button><a href="/admin/declinedlist">Danh sách tour đã từ chối</a></button>
                    </div>
                    <div class="body">

                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                                <thead>
                                <tr>
                                    <th>Tên tour</th>
                                    <th>Họ tên</th>
                                    <th>Số điện thoại</th>
                                    <th>Email</th>
                                    <th>Tổng tiền</th>
                                    <th>Số người lớn</th>
                                    <th>Số trẻ nhỏ</th>
                                    <th>Ngày đăng ký</th>
                                    <th>Thanh toán</th>
                                    <th>Trạng thái</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                </tfoot>
                                <tbody>
                                <c:forEach var="order" items="${orders}">
                                    <tr>
                                        <td>${order.tourName}
                                        </td>
                                        <td>${order.name}</td>
                                        <td>${order.phone}</td>
                                        <td>${order.email}</td>
                                        <td><f:setLocale value="vi-VN"/> <f:formatNumber type="number" value="${order.price}" />VNĐ</td>
                                        <td>${order.numAdult}</td>
                                        <td>${order.numChild}</td>
                                        <td><f:formatDate value="${order.createDate}" pattern="dd/MM/yyyy" /></td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${order.payStatus == 1}">
                                                    <p>Đã thanh toán</p>
                                                </c:when>
                                                <c:when test="${order.payStatus == 0}">
                                                    <p>Chưa thanh toán</p>
                                                    <%-- Làm gì đó ở đây khi điều kiện 2 đúng  --%>
                                                </c:when>
                                                <c:otherwise>
                                                    <p>Chưa thanh toán</p>
                                                    <%-- Câu lệnh sẽ được thực thi khi tất cả các điều kiện tại <c:when> ở trên sai.  --%>
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${order.status == 1}">
                                                    <p>Chấp nhận</p>
                                                </c:when>
                                                <c:when test="${order.status == 0}">
                                                    <p>Đang chờ duyệt</p>
                                                    <%-- Làm gì đó ở đây khi điều kiện 2 đúng  --%>
                                                </c:when>
                                                <c:when test="${order.status == 2}">
                                                    <p>Từ chối</p>
                                                    <%-- Làm gì đó ở đây khi điều kiện 2 đúng  --%>
                                                </c:when>
                                                <c:otherwise>
                                                    <p>Đang chờ duyệt</p>
                                                    <%-- Câu lệnh sẽ được thực thi khi tất cả các điều kiện tại <c:when> ở trên sai.  --%>
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>


                    </div>
                </div>
            </div>
        </div>
        <!-- #END# Basic Examples -->
    </div>
</section>

<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Cập nhật thông tin đăng ký tour</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row clearfix">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="body">
                            <form id="form_validation" method="POST">
                                <div class="form-group form-float">
                                    <div class="form-inline">
                                        <select class="form-control show-tick" id="IDpayStatus" name="payStatus" required>
                                            <option value="">-- Trạng thái thanh toán --</option>
                                            <option value="0">Chưa thanh toán</option>
                                            <option value="1">Đã thanh toán</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group form-float">
                                    <div class="form-inline">
                                        <select class="form-control show-tick" id="IDstatus" name="status" required>
                                            <option value="">-- Trạng thái tài khoản --</option>
                                            <option value="0">Đang chờ duyệt</option>
                                            <option value="1">Chấp nhận</option>
                                            <option value="2">Từ chối</option>
                                        </select>
                                    </div>
                                </div>


                                <input type="hidden" name="name" id="name" value="">
                                <input type="hidden" name="email" id="email" value="">
                                <input type="hidden" name="phone" id="phone" value="">
                                <input type="hidden" name="note" id="note" value="">
                                <input type="hidden" name="tourId" id="tourId" value="">
                                <input type="hidden" name="userId" id="userId" value="">
                                <input type="hidden" name="createDate" id="createDate" value="">
                                <input type="hidden" name="numAdult" id="numAdult" value="">
                                <input type="hidden" name="numChild" id="numChild" value="">
                                <input type="hidden" name="price" id="price" value="">
                                <input type="hidden" name="registration_Id" id="registration_Id" value="">
                                <button type="button" id="btn-save" class="btn btn-primary pull-right">Lưu thay đổi
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>

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

<!-- Custom Js -->
<script src="<c:url value="/resources/admin/js/admin.js"/>"></script>
<script src="<c:url value="/resources/admin/js/pages/tables/jquery-datatable.js"/>"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<!-- Demo Js -->
<script src="<c:url value="/resources/admin/js/demo.js"/>"></script>
<script src="<c:url value="/resources/admin/js/pages/forms/form-validation.js"/>"></script>
<script>

    $(document).ready(function () {
        let form_validation = $('#form_validation');
        $('#btn-save').on('click', function () {
            let registration_Id = $('#registration_Id').val();
            if (registration_Id !== "") {
                form_validation.attr('action', '/admin/ordertour/update');
            } else {
                form_validation.attr('action', '/admin/ordertour/create');
            }
            form_validation.submit();
        });
        $('#button-save').on('click', function () {
            clearDataForInputText($('#name'), "");
            clearDataForInputText($('#email'), "");
            clearDataForInputText($('#phone'), "");
            clearDataForInputText($('#note'), "");
            clearDataForInputText($('#tourId'), "");
            clearDataForInputText($('#userId'), "");
            clearDataForInputText($('#numAdult'), "");
            clearDataForInputText($('#numChild'), "");
            clearDataForInputText($('#price'), "");
            clearDataForInputText($('#createDate'), "");

            clearDataForInputText($('#registration_Id'), "");
            $('#IDpayStatus').val("");
            $('#IDpayStatus').selectpicker('refresh');
            $('#IDstatus').val("");
            $('#IDstatus').selectpicker('refresh');
            $('#exampleModalCenter').modal('toggle');
        });
    });

    function updateRestaurant(id) {
        let name = $('#name');
        let email = $('#email');
        let phone = $('#phone');
        let note = $('#note');
        let tourId = $('#tourId');
        let userId = $('#userId');
        let numAdult = $('#numAdult');
        let numChild = $('#numChild');
        let price = $('#price');
        let createDate = $('#createDate');
        let status = $('#IDstatus');
        let payStatus = $('#IDpayStatus');
        let registration_Id = $('#registration_Id');
        $.ajax({
            url: '/admin/ordertour/' + id,
            type: 'GET',
            dataType: 'json',
            contentType: 'application/json; charset=utf-8',
            data: '',
            success: function (data) {
                setDataForInputText(name, data.name);
                setDataForInputText(email, data.email);
                setDataForInputText(phone, data.phone);
                setDataForInputText(note, data.note);
                setDataForInputText(tourId, data.tourId);
                setDataForInputText(userId, data.userId);
                setDataForInputText(numAdult, data.numAdult);
                setDataForInputText(numChild, data.numChild);
                setDataForInputText(price, data.price);
                setDataForInputText(createDate, data.createDate);

                setDataForInputText(registration_Id, data.registration_Id);
                payStatus.val(data.payStatus);
                payStatus.selectpicker('refresh');
                status.val(data.status);
                status.selectpicker('refresh');
                $('#exampleModalCenter').modal('toggle');
            },
            error: function (error) {
                console.log(error);
            }
        });
    }

    function setDataForInputText(field, data) {
        field.closest('div').addClass('focused');
        field.val(data);
    }

    function clearDataForInputText(field, data) {
        field.closest('div').removeClass('focused');
        field.val(data);
    }


</script>
</body>

</html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url value="/login" var="loginUrl"/>
<c:url value="/logout" var="logoutUrl"/>

<script src="<c:url value="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="<c:url value="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>"></script>
<!------ Include the above in your HEAD tag ---------->
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

    .profile-edit-btn {
        border: none;
        border-radius: 1.5rem;
        width: 50%;
        padding: 2%;
        font-weight: 600;
        color: #6c757d;
        cursor: pointer;
    }
</style>

<head>
    <title>Cập nhật thông tin tài khoản</title>
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
    <script>
        $(document).ready(function () {
            (function (document) {
                var input = document.getElementById("files"),
                    output = document.getElementById("result"),
                    fileData; // We need fileData to be visible to getBuffer.

                // Eventhandler for file input.
                function openfile(evt) {
                    var files = input.files;
                    // Pass the file to the blob, not the input[0].
                    fileData = new Blob([files[0]]);
                    // Pass getBuffer to promise.
                    var promise = new Promise(getBuffer);
                    // Wait for promise to be resolved, or log error.
                    promise.then(function (data) {
                        // Here you can pass the bytes to another function.
                        output.value = data.toString();
                        console.log(data);
                    }).catch(function (err) {
                        console.log('Error: ', err);
                    });
                }

                /*
                  Create a function which will be passed to the promise
                  and resolve it when FileReader has finished loading the file.
                */
                function getBuffer(resolve) {
                    var reader = new FileReader();
                    reader.readAsArrayBuffer(fileData);
                    reader.onload = function () {
                        var arrayBuffer = reader.result
                        var bytes = new Uint8Array(arrayBuffer);
                        resolve(bytes);
                    }
                }

                // Eventlistener for file input.
                input.addEventListener('change', openfile, false);
            }(document));
        })
    </script>
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
    <center><h2>ĐỔI THÔNG TIN TÀI KHOẢN</h2></center>
    <hr>
    <form:form method="POST" modelAttribute="dto" enctype="multipart/form-data">
        <div class="container bootstrap snippet">
            <div class="row">
                <div class="col-sm-3">
                    <!--left col-->

                    <div class="text-center">
                        <div class="profile-img">
                            <img src="data:image;base64,${dto.base64Image}"
                                 class="avatar img-circle img-thumbnail"
                                 alt="avatar">
                            <div class="file btn btn-lg btn-primary">
                                Đổi ảnh đại diện
                                <input type="file" name="file" id="file"
                                       class="in text-center center-block file-upload"/>
                            </div>
                        </div>
                    </div>
                    <br>

                </div>
                <!--/col-3-->
                <div class="col-sm-9">

                    <div class="tab-content">
                        <div class="tab-pane active" id="home">
                            <form class="form" action="##" method="post" id="registrationForm">
                                <div class="form-group">

                                    <div class="col-xs-12">
                                        <label>
                                            <h4>Họ và tên</h4>
                                        </label>
                                        <form:input type="text" class="form-control" path="user_Fullname"
                                                    placeholder="*" id="uFullName" oninput="validateFullName()"/><br/>
                                        <form:input type="hidden" class="form-control" path="user_Id" placeholder="*"/>
                                        <form:input type="hidden" class="form-control" path="image" placeholder="*"/>
                                        <form:input type="hidden" class="form-control" path="user_Createdate"
                                                    placeholder="*"/>
                                        <form:input type="hidden" class="form-control" path="user_Role"
                                                    placeholder="*"/>
                                        <form:input type="hidden" class="form-control" path="user_Name"
                                                    placeholder="*"/>
                                        <form:input type="hidden" class="form-control" path="user_Password"
                                                    placeholder="*"/>
                                        <form:input type="hidden" class="form-control" path="user_Status"
                                                    placeholder="*"/>
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-12">
                                        <label>
                                            <h4>Giới tính</h4>
                                        </label>
                                        <form:select path="user_Gender" class="form-control" style="height: 34px;">
                                            <option value="1">Nam</option>
                                            <option value="2">Nữ</option>
                                            <option value="3">Khác</option>
                                        </form:select><br/>
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-12">
                                        <label>
                                            <h4>Số điện thoại</h4>
                                        </label>
                                        <form:input type="text" class="form-control" path="user_Phone" placeholder="*"
                                                    id="uPhone" oninput="validatePhone()"/><br/>
                                        <p id="pBlank" style="color: red; display: none">Không được để trống số điện thoại</p>
                                        <p id="pFormat" style="color: red; display: none">Không đúng định dạng số điện thoại</p>
                                        <p id="pUnique" style="color: red; display: none">Số điện thoại đã được đăng ký ở tài khoản khác</p>
                                        <c:forEach var="list" items="${listPhone}">
                                            <input type="hidden" name="arrayP[]" value="${list}"/>
                                        </c:forEach>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <label>
                                            <h4>Email</h4>
                                        </label>
                                        <form:input type="text" class="form-control" path="user_Email" placeholder="*"
                                                    id="uEmail" oninput="validateEmail()"/><br/>
                                        <p id="eBlank" style="color: red; display: none">Không được để trống email</p>
                                        <p id="eFormat" style="color: red; display: none">Không đúng định dạng email</p>
                                        <p id="eUnique" style="color: red; display: none">Email đã được đăng ký ở tài khoản khác</p>
                                        <c:forEach var="list" items="${listEmail}">
                                            <input type="hidden" name="arrayE[]" value="${list}"/>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <br>
                                        <table border="0">
                                            <tr>
                                                <td>
                                                    <button class="btn btn-lg btn-success" type="submit" id="btnSub"><i
                                                            class="glyphicon glyphicon-ok-sign"></i> Save
                                                    </button>&nbsp&nbsp
                                                </td>
                                                <td>
                                                    <a href="/home/user_info" class="btn btn-lg btn-danger"><i
                                                            class="glyphicon glyphicon-remove"></i>Cancel</a>
                                                </td>
                                            </tr>
                                        </table>

                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/col-9-->
    </form:form>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
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

    function validateFullName() {
        var uFullName = document.getElementById("uFullName").value;

        if (uFullName.length == 0) {
            document.getElementById("btnSub").disabled = true;
        } else {
            document.getElementById("btnSub").disabled = false;
        }
    }

    function validatePhone() {
        var uPhone = document.getElementById("uPhone").value;
        const re = /((09|03|07|08|05)+([0-9]{8})\b)/g;
        var aa = document.getElementsByName("arrayP[]");
        var kt = false;

        if (uPhone.length == 0) {
            document.getElementById("btnSub").disabled = true;
            document.getElementById("pBlank").style.display = "block";
        } else {
            document.getElementById("pBlank").style.display = "none";
            if (re.test(uPhone) == false) {
                document.getElementById("btnSub").disabled = true;
                document.getElementById("pFormat").style.display = "block";
            } else {
                document.getElementById("pFormat").style.display = "none";
                for (var i = 0; i < aa.length; i++) {
                    var a = aa[i];
                    if (!(String(uPhone)).localeCompare(String(a.value))) {
                        kt = true;
                    }
                }
                if (kt == true) {
                    document.getElementById("btnSub").disabled = true;
                    document.getElementById("pUnique").style.display = "block";
                }
                else {
                    document.getElementById("btnSub").disabled = false;
                    document.getElementById("pUnique").style.display = "none";
                }
            }
        }
    }

    function validateEmail() {
        var uEmail = document.getElementById("uEmail").value;
        const re = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
        var aa = document.getElementsByName("arrayE[]");
        var kt = false;

        if (uEmail.length == 0) {
            document.getElementById("btnSub").disabled = true;
            document.getElementById("eBlank").style.display = "block";
        } else {
            document.getElementById("eBlank").style.display = "none";
            if (re.test(String(uEmail).toLowerCase()) == false) {
                document.getElementById("btnSub").disabled = true;
                document.getElementById("eFormat").style.display = "block";
            } else {
                document.getElementById("eFormat").style.display = "none";
                for (var i = 0; i < aa.length; i++) {
                    var a = aa[i];
                    if (!(String(uEmail)).localeCompare(String(a.value))) {
                        kt = true;
                    }
                }
                if (kt == true) {
                    document.getElementById("btnSub").disabled = true;
                    document.getElementById("eUnique").style.display = "block";
                }
                else {
                    document.getElementById("btnSub").disabled = false;
                    document.getElementById("eUnique").style.display = "none";
                }
            }
        }
    }
</script>
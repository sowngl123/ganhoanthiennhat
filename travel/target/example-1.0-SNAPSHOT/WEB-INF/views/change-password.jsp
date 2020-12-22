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
    <title>Đổi mật khẩu</title>
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
    <br/><br/>
    <!--Main-->
    <center><h2>ĐỔI MẬT KHẨU</h2></center>
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
                                            <h4>Mật khẩu hiện tại:</h4>
                                        </label>
                                        <input type="password" class="form-control" name="password" id="user-password" oninput="checkPass()"/><br/>
                                        <p style="display: none; color: red" id="error-pass">Không đúng mật khẩu hiện tại!</p>
                                        <form:input type="hidden" path="user_Fullname"/>
                                        <form:input type="hidden" path="user_Id"/>
                                        <form:input type="hidden" path="image"/>
                                        <form:input type="hidden" path="user_Createdate"/>
                                        <form:input type="hidden" path="user_Role"/>
                                        <form:input type="hidden" path="user_Name"/>
                                        <input type="hidden" value="${dto.user_Password}" id="current-password"/>
                                        <form:input type="hidden" path="user_Gender"/>
                                        <form:input type="hidden" path="user_Phone"/>
                                        <form:input type="hidden" path="user_Email"/>
                                        <form:input type="hidden" path="user_Status"/>
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-12">
                                        <label>
                                            <h4>Mật khẩu mới:</h4>
                                        </label>
                                        <input type="password" class="form-control" name="newPass" id="new-pass" oninput="checkPass1()"><br/>
                                        <p style="color: red; display: none" id="errorInUse">Mật khẩu này bạn đang sử dụng</p>
                                        <p style="color: red; display: none" id="errorLength">Mật khẩu phải có 6 ký tự trở lên</p>
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-12">
                                        <label>
                                            <h4>Xác nhận mật khẩu:</h4>
                                        </label>
                                        <input type="password" class="form-control" id="new-pass-confirm" oninput="checkNewPass()"><br/>
                                        <p style="display: none; color: red" id="error-newPass">Xác nhận mật khẩu không đúng!</p>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <br>
                                        <table border="0">
                                            <tr>
                                                <td>
                                                    <button class="btn btn-lg btn-success" type="submit" disabled="true" id="change-pass">
                                                        <i class="glyphicon glyphicon-ok-sign"></i> Thay đổi mật khẩu
                                                    </button>&nbsp&nbsp
                                                </td>
                                                <td>
                                                    <a href="/home/user_info" class="btn btn-lg btn-danger"><i
                                                            class="glyphicon glyphicon-remove"></i>Hủy</a>
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

    function checkPass() {
        var pass = document.getElementById("user-password").value;
        var currentPass = document.getElementById("current-password").value;
        if (pass != currentPass) {
            document.getElementById("error-pass").style.display = "block";
        }
        else {
            document.getElementById("error-pass").style.display = "none";
        }
    }

    function checkPass1() {
        var pass = document.getElementById("user-password").value;
        var newPass = document.getElementById("new-pass").value;
        if (newPass.length < 6) {
            document.getElementById("errorLength").style.display = "block";
        }
        else {
            document.getElementById("errorLength").style.display = "none";
            if (newPass == pass) {
                document.getElementById("errorInUse").style.display = "block";
            }
            else {
                document.getElementById("errorInUse").style.display = "none";
            }
        }
    }

    function checkNewPass() {
        var newPass = document.getElementById("new-pass").value;
        var confirmPass = document.getElementById("new-pass-confirm").value;
        var pass = document.getElementById("user-password").value;
        var currentPass = document.getElementById("current-password").value;
        if(newPass != confirmPass) {
            document.getElementById("error-newPass").style.display = "block";
        }
        else {
            document.getElementById("error-newPass").style.display = "none";
        }
        if (newPass == confirmPass && pass == currentPass) {
            document.getElementById("change-pass").disabled = false;
        }
        else {
            document.getElementById("change-pass").disabled = true;
        }

    }
</script>
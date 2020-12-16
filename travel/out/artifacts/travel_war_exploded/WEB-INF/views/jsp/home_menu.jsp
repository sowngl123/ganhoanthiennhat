<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 08/12/2020
  Time: 9:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<div class="menu trans_500">
    <div class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
        <div class="menu_close_container">
            <div class="menu_close"></div>
        </div>
        <div class="logo menu_logo"><a href="#"><img src="<c:url value="/resources/home/images/logo.png"/>" alt=""></a>
        </div>
        <ul>
            <li class="menu_item"><a href="/home">Trang chủ</a></li>
            <li class="menu_item"><a href="#">Giới thiệu</a></li>
            <li class="menu_item"><a href="#">Tour du lịch</a></li>
          <%--  <li class="menu_item"><a href="#"></a></li>--%>
            <li class="menu_item"><a href="#">Liên hệ</a></li>
        </ul>
    </div>
</div>
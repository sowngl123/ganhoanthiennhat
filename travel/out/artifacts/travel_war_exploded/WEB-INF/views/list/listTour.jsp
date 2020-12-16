<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url value="/login" var="loginUrl"/>
<c:url value="/logout" var="logoutUrl" />
<!DOCTYPE html>
<html lang="en">

<jsp:include page="/WEB-INF/views/jsp/list_head.jsp"/>
<body>

<div class="super_container">

    <!-- Header -->
    <jsp:include page="/WEB-INF/views/jsp/list_header.jsp"/>


    <!-- Home -->

    <div class="home">
        <div class="home_background parallax-window" data-parallax="scroll" ><a href="#"><img src="<c:url value="/resources/home/images/about_background.jpg"/>" alt=""></a></div>
        <div class="home_content">
            <div class="home_title">Cùng polytravel khám phá vẻ đẹp</div>
        </div>
    </div>

    <!-- Offers -->

    <div class="offers">

        <!-- Search -->

        <jsp:include page="/WEB-INF/views/jsp/list_search.jsp"/>

        <!-- Offers -->

        <div class="container">
            <div class="row">
                <div class="col-lg-1 temp_col"></div>
                <jsp:include page="/WEB-INF/views/jsp/list_orderBy.jsp"/>
                <div class="col-lg-9">
                    <!-- Offers Grid -->

                    <div class="offers_grid">

                        <!-- Offers Item -->
                        <tbody>
                        <c:forEach var="tour" items="${tours}">
                            <div class="offers_item rating_4">
                                <div class="row">
                                    <div class="col-lg-1 temp_col"></div>
                                    <div class="col-lg-3 col-1680-4">
                                        <div class="offers_image_container">
                                            <!-- Image by https://unsplash.com/@kensuarez -->
                                            <div class="offers_image_background" >
                                                <div class="slidershow middle">
                                                <div class="slides">
                                                    <input type="radio" name="r" id="r1" checked>
                                                    <input type="radio" name="r" id="r2">
                                                    <input type="radio" name="r" id="r3">
                                                    <input type="radio" name="r" id="r4">
                                                    <input type="radio" name="r" id="r5">
                                                    <div class="slide s1">
                                                        <img src="<c:url value="/resources/home/images/offer_1.jpg"/>" alt="">
                                                    </div>
                                                    <div class="slide">
                                                        <img src="<c:url value="/resources/home/images/offer_2.jpg"/>" alt="">
                                                    </div>
                                                    <div class="slide">
                                                        <img src="<c:url value="/resources/home/images/offer_3.jpg"/>" alt="">
                                                    </div>
                                                    <div class="slide">
                                                        <img src="<c:url value="/resources/home/images/offer_4.jpg"/>" alt="">
                                                    </div>
                                                    <div class="slide">
                                                        <img src="<c:url value="/resources/home/images/offer_5.jpg"/>" alt="">
                                                    </div>
                                                </div>

                                                <div class="navigation">
                                                    <label for="r1" class="bar"></label>
                                                    <label for="r2" class="bar"></label>
                                                    <label for="r3" class="bar"></label>
                                                    <label for="r4" class="bar"></label>
                                                    <label for="r5" class="bar"></label>
                                                </div>
                                                </div>
                                            </div>
                                            <div style="width: 255px" class="offer_name"><a href="single_listing.html">grand castle</a></div>
                                        </div>
                                    </div>
                                    <div class="col-lg-8">
                                        <div class="offers_content">
                                            <div class="offers_price">${tour.tour_Name}</div>


                                            <p class="offers_text" style="font-weight: bold;font-size: 25px; color: red"><f:formatNumber value="${tour.tour_Price}" pattern="#,###đ" /><span>/ người</span></p>

                                            <p class="offers_text">Suspendisse potenti. In faucibus massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eu convallis tortor. Lorem ipsum dolor sit amet.</p>
                                            <div class="offers_icons" data-id = "${tour.tour_Id}">
                                                <ul class="offers_icons_list">
                                                    <li class="offers_icons_item"><img src="<c:url value="/resources/home/images/post.png"/>" alt=""></li>
                                                    <li class="offers_icons_item"><img src="<c:url value="/resources/home/images/compass.png"/>" alt=""></li>
                                                    <li class="offers_icons_item"><img src="<c:url value="/resources/home/images/bicycle.png"/>" alt=""></li>
                                                    <li class="offers_icons_item"><img src="<c:url value="/resources/home/images/sailboat.png"/>" alt=""></li>

                                                    <li class="offers_icons_item"><button class="btn btn-sm btn-danger btn-star"><i class="fa fa-heart"></i></button></li>
                                                    <li class="offers_icons_item"><button class="btn btn-sm btn-danger btn-open-dialog" data-toggle="modal" data-target="#myModal"><i class="fa fa-envelope"></i></button></li>


                                                </ul>

                                            </div>

                                            <div class="button book_button"><a onclick="showDetailTour(${tour.tour_Id})">Đặt tour<span></span><span></span><span></span></a></div>
                                            <div class="offer_reviews">
                                                <div class="offer_reviews_content">
                                                    <div class="offer_reviews_title">100 lượt xem</div>
                                                </div>
                                                <div class="offer_reviews_rating text-center">Mới</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        </tbody>
                        <!-- Offers Item -->
                    </div>
                    <ul class="pagination" id="pagination" style="margin-left: 700px">
                        <c:url value="/list" var="prev">
                            <c:param name="page" value="${page-1}"/>
                        </c:url>
                        <c:if test="${page > 1}">
                            <li> <a href="<c:out value="${prev}" />" class="pn prev">Prev</a></li>
                        </c:if>

                        <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
                            <c:choose>
                                <c:when test="${page == i.index}">
                                    <li><span>${i.index}</span></li>
                                </c:when>
                                <c:otherwise>
                                    <c:url value="/list" var="url">
                                        <c:param name="page" value="${i.index}"/>
                                    </c:url>
                                    <li><a href='<c:out value="${url}" />'>${i.index}</a></li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                        <c:url value="/list" var="next">
                            <c:param name="page" value="${page + 1}"/>
                        </c:url>
                        <c:if test="${page + 1 <= maxPages}">

                            <li> <a href='<c:out value="${next}" />' class="pn next">Next</a></li>
                        </c:if>
                    </ul>
                </div>

                <jsp:include page="/WEB-INF/views/jsp/list_slidebar.jsp"/>
            </div>
        </div>
    </div>

    <!-- Footer -->
     <jsp:include page="/WEB-INF/views/jsp/home_footer.jsp"/>
    <!-- Copyright -->
</div>
<jsp:include page="/WEB-INF/views/jsp/dialog.jsp"/>
<script src="<c:url value="/resources/home/js/jquery-3.2.1.min.js"/>"></script>
<script src="<c:url value="/resources/home/styles/bootstrap4/popper.js"/>"></script>
<script src="<c:url value="/resources/home/styles/bootstrap4/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/home/plugins/OwlCarousel2-2.2.1/owl.carousel.js"/>"></script>
<script src="<c:url value="/resources/home/plugins/easing/easing.js"/>"></script>
<script src="<c:url value="/resources/home/js/custom.js"/>"></script>

<script>


    function showDetailTour(id) {
        window.location.href = "/tour/tourDetail/" + id;
    }
</script>
<script>
    $(document).ready(function() {
        $(".btn-open-dialog").click(function () {
            var id =  $(this).closest("div").attr("data-id");
            $("#myModal #id").val(id);
        });
        $(".btn-send").click(function () {
            var form = {
                id: $("#myModal #id").val(),
                to:  $("#myModal #email").val(),
                body:  $("#myModal #comments").val(),
                from:  $("#myModal #sender").val()
            }
            $.ajax({
                url:"/list/send-to-friend",
                data:form,
                success: function(response){
                    console.log(response)
                    if(response){
                        alert("Đã gửi thành công!")
                    }
                    else {
                        alert("Lỗi gửi mail")
                    }
                }
            })
        });
        $(".btn-star").click(function () {
            var id =  $(this).closest("div").attr("data-id");
            $.ajax({
                url:"/list/add-tofavo/"+id,
                success: function(response)
                {
                    console.log(response)
                    if(response){
                        alert("Đã thêm vào thành công!")
                    }
                    else {
                        alert("Bạn đã tích chọn sản phầm này ")
                    }
                }
            })
        })
    });
</script>
<script>
    $(function () {
        var pageNo = 0;
        var pageCount = 0;
        var pageSize = 3;

        $.ajax({
            url:'/list/page-count',
            success:function (response) {
                pageCount = response;
            }
        })
        $(".pager a:eq(0)").click(function () {
            pageNo =0;
        $.ajax({
            url:'/list/page-count/page/'+pageNo,
            success:function (response) {
                $(response).each(function (index,user) {

                    console.log(index,user);
                })
            }
        })
            return false;
        });
        $(".pager a:eq(1)").click(function () {
            pageNo--;
            return false;
        });
        $(".pager a:eq(3)").click(function () {
            pageNo++;
            return false;
        });
        $(".pager a:eq(4)").click(function () {
            pageNo = pageCount-1;
            return false;
        });

    })
</script>


</body>

</html>
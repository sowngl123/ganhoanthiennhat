<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 03/12/2020
  Time: 9:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<footer class="footer">
    <div class="container">
        <div class="row">

            <!-- Footer Column -->
            <div class="col-lg-3 footer_column">
                <div class="footer_col">
                    <div class="footer_content footer_about">
                        <div class="logo_container footer_logo">
                            <div class="logo"><a href="#"><img
                                    src="<c:url value="/resources/home/images/logo.png"/>" alt="">polytravel</a></div>
                        </div>
                        <p class="footer_about_text">Hãy cùng chúng tôi trải nghiệm những vẻ đẹp và trải nghiệm tuyêt vời.</p>
                        <ul class="footer_social_list">
                            <li class="footer_social_item"><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            <li class="footer_social_item"><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                            <li class="footer_social_item"><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li class="footer_social_item"><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li class="footer_social_item"><a href="#"><i class="fa fa-behance"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Footer Column -->
            <div class="col-lg-3 footer_column">
                <div class="footer_col">
                    <div class="footer_title">Bài đăng</div>
                    <div class="footer_content footer_blog">

                        <!-- Footer blog item -->
                        <div class="footer_blog_item clearfix">
                            <div class="footer_blog_image"><img
                                    src="<c:url value="/resources/home/images/footer_blog_1.jpg"/>"
                                    alt="https://unsplash.com/@avidenov"></div>
                            <div class="footer_blog_content">
                                <div class="footer_blog_title"><a href="blog.html">Đi cùng Polytravel</a>
                                </div>
                                <div class="footer_blog_date">09/12/2020</div>
                            </div>
                        </div>

                        <!-- Footer blog item -->
                        <div class="footer_blog_item clearfix">
                            <div class="footer_blog_image"><img
                                    src="<c:url value="/resources/home/images/footer_blog_2.jpg"/>"
                                    alt="https://unsplash.com/@deannaritchie"></div>
                            <div class="footer_blog_content">
                                <div class="footer_blog_title"><a href="blog.html">Điểm đến cho bạn</a>
                                </div>
                                <div class="footer_blog_date">01/12/2020</div>
                            </div>
                        </div>

                        <!-- Footer blog item -->
                        <div class="footer_blog_item clearfix">
                            <div class="footer_blog_image"><img
                                    src="<c:url value="/resources/home/images/footer_blog_3.jpg"/>"
                                    alt="https://unsplash.com/@bergeryap87"></div>
                            <div class="footer_blog_content">
                                <div class="footer_blog_title"><a href="blog.html">Trải ngiệm cực đã</a>
                                </div>
                                <div class="footer_blog_date">05/12/2020</div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!-- Footer Column -->
            <div class="col-lg-3 footer_column">
                <div class="footer_col">
                    <div class="footer_title">Chủ để</div>
                    <div class="footer_content footer_tags">
                        <ul class="tags_list clearfix">
                            <li class="tag_item"><a href="#">Tour trong nước</a></li>
                            <li class="tag_item"><a href="#">Tour khám phá</a></li>
                            <li class="tag_item"><a href="#">Tour trải nghiệm</a></li>
                            <li class="tag_item"><a href="#">Tour biển</a></li>
                            <li class="tag_item"><a href="#">Tour nước ngoài</a></li>
                            <li class="tag_item"><a href="#">Du lịch</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Footer Column -->
            <div class="col-lg-3 footer_column">
                <div class="footer_col">
                    <div class="footer_title">Liên hệ</div>
                    <div class="footer_content footer_contact">
                        <ul class="contact_info_list">
                            <li class="contact_info_item d-flex flex-row">
                                <div>
                                    <div class="contact_info_icon"><img
                                            src="<c:url value="/resources/home/images/placeholder.svg"/>" alt="">
                                    </div>
                                </div>
                                <div class="contact_info_text">FPT Polytechnic</div>
                            </li>
                            <li class="contact_info_item d-flex flex-row">
                                <div>
                                    <div class="contact_info_icon"><img
                                            src="<c:url value="/resources/home/images/phone-call.svg"/>" alt="">
                                    </div>
                                </div>
                                <div class="contact_info_text">0981112311</div>
                            </li>
                            <li class="contact_info_item d-flex flex-row">
                                <div>
                                    <div class="contact_info_icon"><img
                                            src="<c:url value="/resources/home/images/message.svg"/>" alt=""></div>
                                </div>
                                <div class="contact_info_text"><a href="mailto:contactme@gmail.com?Subject=Hello"
                                                                  target="_top">dinhnam140820@gmail.com</a></div>
                            </li>
                            <li class="contact_info_item d-flex flex-row">
                                <div>
                                    <div class="contact_info_icon"><img
                                            src="<c:url value="/resources/home/images/planet-earth.svg"/>" alt="">
                                    </div>
                                </div>
                                <div class="contact_info_text"><a href="https://colorlib.com">www.polytravel.com</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
</footer>

<!-- Copyright -->

<%--
<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 order-lg-1 order-2  ">
                <div class="copyright_content d-flex flex-row align-items-center">
                    <div>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></div>
                </div>
            </div>
            <div class="col-lg-9 order-lg-2 order-1">
                <div class="footer_nav_container d-flex flex-row align-items-center justify-content-lg-end">
                    <div class="footer_nav">
                        <ul class="footer_nav_list">
                            <li class="footer_nav_item"><a href="#">home</a></li>
                            <li class="footer_nav_item"><a href="about.html">about us</a></li>
                            <li class="footer_nav_item"><a href="offers.html">offers</a></li>
                            <li class="footer_nav_item"><a href="blog.html">news</a></li>
                            <li class="footer_nav_item"><a href="contact.html">contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>--%>

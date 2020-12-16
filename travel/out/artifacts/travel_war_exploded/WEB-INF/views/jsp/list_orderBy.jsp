<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 08/12/2020
  Time: 9:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<div class="col-lg-11">

    <!-- Offers Sorting -->
    <div class="offers_sorting_container">
        <ul class="offers_sorting">
            <li class="distance_item">
                <span class="sorting_text">Sắp xếp mức giá</span>
                <i class="fa fa-chevron-down"></i>
                <ul>
                    <li class="sort_btn" data-isotope-option="{ &quot;sortBy&quot;: &quot;original-order&quot; }" data-parent=".price_sorting"><a href="/list/special/4" class="sorting_text">500,000đ - 700,000đ</a></li>
                    <li class="sort_btn" data-isotope-option="{ &quot;sortBy&quot;: &quot;price&quot; }" data-parent=".price_sorting"><span>700,000đ - 1,00,000đ</span></li>
                </ul>
            </li>
            <li>
                <a href="/list/special/1" class="sorting_text">Sắp xếp theo giá</a>
            </li>
            <li>
                <span class="sorting_text">Theo danh mục</span>
                <i class="fa fa-chevron-down"></i>
                <ul>
                    <li class="filter_btn" data-filter="*"> <a href="/list/special/2" class="sorting_text">Yêu thích nhất</a></li>
                    <li class="filter_btn" data-filter=".rating_3"> <a href="/list/special/4" class="sorting_text">Xem nhiều nhất</a></li>
                    <li class="filter_btn" data-filter=".rating_3">  <a href="/list/special/3" class="sorting_text">Đặt nhiều nhất</a></li>
                </ul>
            </li>
            <li class="distance_item">
                <span class="sorting_text">distance from center</span>
                <i class="fa fa-chevron-down"></i>
                <ul>
                    <li class="num_sorting_btn"><span>distance</span></li>
                    <li class="num_sorting_btn"><span>distance</span></li>
                    <li class="num_sorting_btn"><span>distance</span></li>
                </ul>
            </li>
        </ul>
    </div>
</div>

<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 08/12/2020
  Time: 9:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="search">
    <div class="search_inner">
        <!-- Search Contents -->
        <div class="container fill_height no-padding">
            <div class="row fill_height no-margin">
                <div class="col fill_height no-padding">

                    <!-- Search Tabs -->

                    <div class="search_tabs_container">
                        <div class="search_tabs d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
                            <div class="search_tab active d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="<c:url value="/resources/home/images/suitcase.png"/>" alt=""><span>hotels</span></div>
                            <div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img  src="<c:url value="/resources/home/images/bus.png"/>" alt="">car rentals</div>
                            <div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="<c:url value="/resources/home/images/departure.png"/>" alt="">flights</div>
                            <div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="<c:url value="/resources/home/images/island.png"/>" alt="">trips</div>
                            <div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="<c:url value="/resources/home/images/cruise.png"/>" alt="">cruises</div>
                            <div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="<c:url value="/resources/home/images/diving.png"/>" alt="">activities</div>
                        </div>
                    </div>

                    <!-- Search Panel -->

                    <div class="search_panel active">
                        <form action="#" id="search_form_1"
                              class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
                            <div class="search_item">
                                <div>Khởi hành từ</div>
                                <select name="adults" id="" class="dropdown_item_select search_input">
                                    <option>Hà Nội</option>
                                    <option>HCM</option>
                                    <option>Đà Nẵng</option>
                                </select>
                            </div>
                            <div class="search_item">
                                <div>Nơi bạn muốn đến</div>
                                <input type="text" class="check_in search_input" placeholder="Bạn muốn đi đâu?">
                            </div>
                            <div class="search_item">
                                <div>Tìm theo ngày</div>
                                <input type="date" class="check_out search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <%--       <div class="search_item">
                                       <div>adults</div>
                                       <select name="adults" id="adults_1" class="dropdown_item_select search_input">
                                           <option>01</option>
                                           <option>02</option>
                                           <option>03</option>
                                       </select>
                                   </div>
                                   <div class="search_item">
                                       <div>children</div>
                                       <select name="children" id="children_1" class="dropdown_item_select search_input">
                                           <option>0</option>
                                           <option>02</option>
                                           <option>03</option>
                                       </select>
                                   </div>--%>
                            <button class="button search_button">Tìm kiếm<span></span><span></span><span></span></button>
                        </form>
                    </div>

                    <!-- Search Panel -->

            <%--        <div class="search_panel">
                        <form action="#" id="search_form_2" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
                            <div class="search_item">
                                <div>destination</div>
                                <input type="text" class="destination search_input" required="required">
                            </div>
                            <div class="search_item">
                                <div>check in</div>
                                <input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>check out</div>
                                <input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>adults</div>
                                <select name="adults" id="adults_2" class="dropdown_item_select search_input">
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <div class="search_item">
                                <div>children</div>
                                <select name="children" id="children_2" class="dropdown_item_select search_input">
                                    <option>0</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <button class="button search_button">search<span></span><span></span><span></span></button>
                        </form>
                    </div>--%>

                    <!-- Search Panel -->

               <%--     <div class="search_panel">
                        <form action="#" id="search_form_3" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
                            <div class="search_item">
                                <div>destination</div>
                                <input type="text" class="destination search_input" required="required">
                            </div>
                            <div class="search_item">
                                <div>check in</div>
                                <input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>check out</div>
                                <input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>adults</div>
                                <select name="adults" id="adults_3" class="dropdown_item_select search_input">
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <div class="search_item">
                                <div>children</div>
                                <select name="children" id="children_3" class="dropdown_item_select search_input">
                                    <option>0</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <button class="button search_button">search<span></span><span></span><span></span></button>
                        </form>
                    </div>--%>

                    <!-- Search Panel -->

<%--                    <div class="search_panel">
                        <form action="#" id="search_form_4" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
                            <div class="search_item">
                                <div>destination</div>
                                <input type="text" class="destination search_input" required="required">
                            </div>
                            <div class="search_item">
                                <div>check in</div>
                                <input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>check out</div>
                                <input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>adults</div>
                                <select name="adults" id="adults_4" class="dropdown_item_select search_input">
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <div class="search_item">
                                <div>children</div>
                                <select name="children" id="children_4" class="dropdown_item_select search_input">
                                    <option>0</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <button class="button search_button">search<span></span><span></span><span></span></button>
                        </form>
                    </div>--%>

                    <!-- Search Panel -->

                  <%--  <div class="search_panel">
                        <form action="#" id="search_form_5" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
                            <div class="search_item">
                                <div>destination</div>
                                <input type="text" class="destination search_input" required="required">
                            </div>
                            <div class="search_item">
                                <div>check in</div>
                                <input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>check out</div>
                                <input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>adults</div>
                                <select name="adults" id="adults_5" class="dropdown_item_select search_input">
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <div class="search_item">
                                <div>children</div>
                                <select name="children" id="children_5" class="dropdown_item_select search_input">
                                    <option>0</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <button class="button search_button">search<span></span><span></span><span></span></button>
                        </form>
                    </div>--%>

                    <!-- Search Panel -->

                 <%--   <div class="search_panel">
                        <form action="#" id="search_form_6" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
                            <div class="search_item">
                                <div>destination</div>
                                <input type="text" class="destination search_input" required="required">
                            </div>
                            <div class="search_item">
                                <div>check in</div>
                                <input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>check out</div>
                                <input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="search_item">
                                <div>adults</div>
                                <select name="adults" id="adults_6" class="dropdown_item_select search_input">
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <div class="search_item">
                                <div>children</div>
                                <select name="children" id="children_6" class="dropdown_item_select search_input">
                                    <option>0</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select>
                            </div>
                            <button class="button search_button">search<span></span><span></span><span></span></button>
                        </form>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</div>
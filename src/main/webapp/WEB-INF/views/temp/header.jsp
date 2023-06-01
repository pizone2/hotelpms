<!-- Offcanvas Menu Section Begin -->
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>
<div class="offcanvas-menu-overlay"></div>
<div class="canvas-open">
    <i class="icon_menu"></i>
</div>
<div class="offcanvas-menu-wrapper">
    <div class="canvas-close">
        <i class="icon_close"></i>
    </div>
<%--    <div class="search-icon  search-switch">--%>
<%--        <i class="icon_search"></i>--%>
<%--    </div>--%>
    <div class="header-configure-area">
        <div class="language-option">
            <img src="/img/korea.png" alt="">
            <span>KO <i class="fa fa-angle-down"></i></span>
            <div class="flag-dropdown">
                <ul>
                    <li class="nav-item"><a class="nav-link" href="/?lang_opt=ko">KO</a></li>
                    <li class="nav-item"><a class="nav-link" href="/?lang_opt=en">EN</a></li>
                </ul>
            </div>
        </div>
        <a href="/booking/reservation" class="bk-btn">Booking Now</a>
    </div>
    <nav class="mainmenu mobile-menu">
        <ul>
            <li class="active"><a href="/">Home</a></li>
            <li><a href="/booking/reservation">Rooms</a></li>
            <li><a href="#">Reservation</a></li>
            <li><a href="/customer/login">Login</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>

</div>
<!-- Offcanvas Menu Section End -->

<header class="header-section">

    <div class="menu-item">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="logo">
                        <a href="/">
                            <img src="/img/MOHOTELLOGO.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-10">
                    <div class="nav-menu">
                        <nav class="mainmenu">
                            <ul>
                                <li class="active"><a href="/">Home</a></li>
                                <li><a href="/booking/reservation">Rooms</a></li>
                                <sec:authorize access="isAuthenticated()">
                                    <li><a href="/pay/paymentList">Reservation</a></li>
                                    <li><a href="/customer/myPage">MyPage</a></li>
                                    <li><a href="/customer/logout">Logout</a></li>
                                </sec:authorize>
                                <sec:authorize access="!isAuthenticated()">
                                  <li><a href="/customer/login">Login</a></li>
                                </sec:authorize>
                                <li class="nav-item"><a class="nav-link" href="/?lang_opt=ko">KO</a></li>
                                <li class="nav-item"><a class="nav-link" href="/?lang_opt=en">EN</a></li>
                            </ul>

                        </nav>
                        <div class="nav-right search-switch">
                            <i class="icon_search"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
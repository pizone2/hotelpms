<!-- Offcanvas Menu Section Begin -->
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div class="offcanvas-menu-overlay"></div>
<div class="canvas-open">
    <i class="icon_menu"></i>
</div>
<div class="offcanvas-menu-wrapper">
    <div class="canvas-close">
        <i class="icon_close"></i>
    </div>
    <div class="search-icon  search-switch">
        <i class="icon_search"></i>
    </div>
    <div class="header-configure-area">
        <div class="language-option">
            <img src="/img/flag.jpg" alt="">
            <span>EN <i class="fa fa-angle-down"></i></span>
            <div class="flag-dropdown">
                <ul>
                    <li><a href="#">Zi</a></li>
                    <li><a href="#">Fr</a></li>
                </ul>
            </div>
        </div>
        <a href="#" class="bk-btn">Booking Now</a>
    </div>
    <nav class="mainmenu mobile-menu">
        <ul>
            <li class="active"><a href="/">Home</a></li>
            <li><a href="/sample/sample">Rooms</a></li>
            <li><a href="#">Reservation</a></li>
            <li><a href="/customer/login">Login</a></li>
        </ul>
    </nav>
</div>
<!-- Offcanvas Menu Section End -->

<header class="header-section">

    <div class="menu-item">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="logo">
                        <a href="/">
                            <img src="/img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-10">
                    <div class="nav-menu">
                        <nav class="mainmenu">
                            <ul>
                                <li class="active"><a href="/">Home</a></li>
                                <li><a href="/sample/sample">Rooms</a></li>
                                <li><a href="#">Reservation</a></li>
                                <sec:authorize access="isAuthenticated()">
                                <li><a href="/customer/myPage">MyPage</a></li>
                                <li><a href="/customer/logout">Logout</a></li>
                                </sec:authorize>
                                <sec:authorize access="!isAuthenticated()">
                                <li><a href="/customer/login">Login</a></li>
                                </sec:authorize>
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
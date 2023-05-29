<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<footer class="footer-section">
    <div class="container">
        <div class="footer-text">
            <div class="row">
                <div class="col-7">
                    <div class="ft-about">
                        <div class="logo">
                            <a href="#">
                                <img src="/img/mohotelfooter.png" alt="">
                            </a>
                        </div>
                        <spring:message code="footer1" var="ft1" text=""/>
                        <spring:message code="footer2" var="ft2" text=""/>
                        <p>${ft1}<br>${ft2}</p>
<%--                        <div class="fa-social">--%>
<%--                            <a href="#"><i class="fa fa-facebook"></i></a>--%>
<%--                            <a href="#"><i class="fa fa-twitter"></i></a>--%>
<%--                            <a href="#"><i class="fa fa-tripadvisor"></i></a>--%>
<%--                            <a href="#"><i class="fa fa-instagram"></i></a>--%>
<%--                            <a href="#"><i class="fa fa-youtube-play"></i></a>--%>
<%--                        </div>--%>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="ft-contact">
                        <h6>Contact Us</h6>
                        <ul>
                            <li>02-123-4567</li>
                            <li>mohotel4567@gmail.com</li>
                            <spring:message code="address" var="addr" text=""/>
                            <li>${addr}</li>
                        </ul>
                    </div>
                </div>
<%--                <div class="col-lg-3 offset-lg-1">--%>
<%--                    <div class="ft-newslatter">--%>
<%--                        <h6>New latest</h6>--%>
<%--                        <p>Get the latest updates and offers.</p>--%>
<%--                        <form action="#" class="fn-form">--%>
<%--                            <input type="text" placeholder="Email">--%>
<%--                            <button type="submit"><i class="fa fa-send"></i></button>--%>
<%--                        </form>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </div>
        </div>
    </div>
    <div class="copyright-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
<%--                    <ul>--%>
<%--                        <li><a href="#">Contact</a></li>--%>
<%--                        <li><a href="#">Terms of use</a></li>--%>
<%--                        <li><a href="#">Privacy</a></li>--%>
<%--                        <li><a href="#">Environmental Policy</a></li>--%>
<%--                    </ul>--%>
                </div>
                <div class="col-lg-5">
                    <div class="co-text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> MOHOTEL All rights reserved
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                </div>
            </div>
        </div>
    </div>
</footer>
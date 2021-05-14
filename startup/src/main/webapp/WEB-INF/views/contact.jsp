<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"%> <!-- 한글 패치 -->

<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="kr">

<head>
  
</head>

<body>
<!-- head를 포함한 위의 요소들 전부 header.jsp에 있음 -->
<%@ include file="include/header.jsp" %>

    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
                    <div class="bg-light pinside30">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h1>Get in touch with us</h1>
                                <p>Please complete the form below. We'll do everything we can to respond to you as quickly as possible.</p>
                                <form>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group has-feedback">
                                                <label class="control-label" for="name">name</label>
                                                <div class="input-group"> <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                                    <input type="text" class="form-control" id="name">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group has-feedback">
                                                <label class="control-label" for="email">email</label>
                                                <div class="input-group"> <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                                    <input type="text" class="form-control" id="email">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group has-feedback">
                                                <label class="control-label" for="subject">Subject</label>
                                                <div class="input-group"> <span class="input-group-addon"><i class="fa fa-globe"></i></span>
                                                    <input type="text" class="form-control" id="subject">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group has-feedback">
                                                <label class="control-label" for="phone">Phone</label>
                                                <div class="input-group"> <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                                                    <input type="text" class="form-control" id="phone">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <label class="control-label" for="textarea">Message</label>
                                                <textarea class="form-control" id="textarea" name="textarea" rows="6" placeholder=""></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <button id="singlebutton" name="singlebutton" class="btn btn-default">send message</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                    <div class="contact-pic mb30"> <img src="resources/images/contact-pic.jpg" class="img-responsive" alt=""> </div>
                    <div class="contact-info">
                        <h2>archone interior- exterior design</h2>
                        <address>
                            1309 Roosevelt Wilson Lane
                            <br> Colton, CA 92324
                        </address>
                        <address>
                            <span class="text-caps">studio:</span> <strong>180-751-3956</strong>
                            <br>
                            <span class="text-caps">Mobile:</span> <strong>180-752-3957</strong>
                        </address>
                        <address>
                            <span class="text-caps">e-mail:</span> <strong>info@yourwebsitedomain.com</strong>
                        </address>
                        <div class="social-circle"> <span class="text-caps">Be social: </span> <a href="#"><i class="fa fa-facebook-square"></i></a> <a href="#"><i class="fa fa-twitter-square"></i></a> <a href="#"><i class="fa fa-google-plus-square"></i></a> <a href="#"><i class="fa fa-youtube-square"></i></a> <a href="#"><i class="fa fa-pinterest-square"></i></a> </div>
                    </div>
                    <!-- /.widget search -->
                </div>
            </div>
        </div>
    </div>
    
<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

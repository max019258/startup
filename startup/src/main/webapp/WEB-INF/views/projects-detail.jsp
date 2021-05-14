<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"%> <!-- 한글 패치 -->

<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="kr">


</head>

<body>
	<!-- head를 포함한 위의 요소들 전부 header.jsp에 있음 -->
	<%@ include file="include/header.jsp"%>
	
    <!-- /.page header -->
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="project-img mb30"> <img src="resources/images/project-single.jpg" class="img-responcive" alt="Interior Design Website Templates Free Download"> </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <h2 class="mb30">Project Detail</h2>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="project-info mb30">
                                <h5 class="project-title">client</h5>
                                <p class="project-content">WDC agency in united states</p>
                            </div>
                            <div class="project-info mb30">
                                <h5 class="project-title">Budjet</h5>
                                <p class="project-content">$ 2500</p>
                            </div>
                            <div class="mb30">
                                <h5 class="project-title">Date</h5>
                                <p class="project-content">March 10 - April 24, 2020</p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="mb30">
                                <h5 class="project-title">designer</h5>
                                <p class="project-content">Alex Missave</p>
                            </div>
                            <div class="mb30">
                                <h5 class="project-title">Location</h5>
                                <p class="project-content">Londaon,united kingdom</p>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="project-socials"> <span>Share this Project</span> <span> <a href="#"><i class="fa fa-facebook-square"></i></a></span> <span><a href="#"><i class="fa fa-twitter-square"></i></a></span> <span> <a href="#"><i class="fa fa-google-plus-square"></i></a></span> <span><a href="#"><i class="fa fa-youtube-square"></i></a></span> <span> <a href="#"><i class="fa fa-pinterest-square"></i></a></span> </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <h2>Interior Design</h2>
                    <p>We strive to create the best solution for clients projects and to ensure high quality and timely project execution Fusce non libero ex. Maecenas auctor dui mi, eget maximus arcu tempus id. Ut tempor ut dolor id accumsan. Sed lacinia metus sem, eget gravida nisl imperdie liquam eu scelerisque ligula.</p>
                    <p>Vestibulum diam arcu, mollis id iaculis nec, aliquam id ante. Etiam conseq uat pulvinar felis, eget tempor eros aliquam faucibur honcus posuere. Pellentesque habitant Tristique senectus et netus et malesuad Fusce non libero ex. Maecenas actylore auctor dui mi, eget maximus arcu tempus id. Ut tempor ut dolor id accumsan. Sed lacinia metus sem, eget imperdie tristique pellentesque. </p>
                </div>
            </div>
        </div>
    </div>
   <!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

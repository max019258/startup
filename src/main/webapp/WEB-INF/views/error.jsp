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
                <div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
                    <div class="error-block">
                        <!-- error block -->
                        <h1 class="error-title">404</h1>
                        <h2>We couldn't find what you're looking for</h2>
                        <p>Aliquam ornare mollis turpis quis porta efficitur augue justo
                            <br> mol mauris volutpat tincidunt fermentum volutpat.</p>
                        <a href="home" class="btn btn-default btn-lg">Go back to the main page</a> </div>
                    <!-- /.error block -->
                </div>
            </div>
        </div>
    </div>
    
<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<!-- 한글 패치 -->

<%@ page import="java.util.*"%>


<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description"
	content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
<meta name="keywords"
	content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
<title>Interior Design Website Templates Free Download</title>
<!-- Bootstrap -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<!-- Style -->
<link href="resources/css/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js "></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js "></script>
<![endif]-->
</head>

<body>
	<div class="header navbar-fixed-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<a href="/"><img src="resources/images/logo.png"
						alt="Interior Design Website Templates Free Download"></a>
				</div>
				
				
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="navigation">
						<div id="navigation">
							<ul>
								<li class="active"><a href="/" title="Home">Home</a></li>
								<li class="has-sub"><a href="parts-list"
									title="Service List">부품설명</a>
									<ul>
										<li><a href="cpu_ex">CPU</a></li>
										<li><a href="gpu_ex">VGA</a></li>
										<li><a href="sub_ex">SSD/HDD</a></li>
										<li><a href="ram_ex">RAM</a></li>
										<li><a href="mainboard_ex">메인보드</a></li>
										<li><a href="power_ex">파워</a></li>
										<li><a href="beside_ex">그외</a></li>
									</ul></li>
								<li class="has-sub"><a href="cpu_bench" title="Portfolio">벤치마크
										정보</a>
									<ul>
										<li><a href="cpu_bench" title="cpu_bench">CPU</a></li>
										<li><a href="gpu_bench" title="gpu_bench">GPU</a></li>
									</ul></li>
								<li><a href="contact" title="Contact Us">추천견적</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="hero-section">
		<!-- 슬라이드쇼 배너  -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
			integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
			integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
			crossorigin="anonymous"></script>
		<script> $('.carousel').carousel({ interval: 2000 //기본 5초 }) </script>
		<div class="container"></div>
		<div id="demo" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<!-- 슬라이드 쇼 -->
				<div class="carousel-item active" align="middle">
					<!--가로-->

					<img align="middle" width="1600px" hieght="300px"
						src="resources/images/comseongbee1.jpg" alt="First slide">
					<div class="carousel-caption d-none d-md-block"></div>

				</div>
				<div class="carousel-item" align="middle">

					<img align="middle" width="1600px" hieght="300px"
						src="resources/images/comseongbee2.jpg" alt="Second slide">

				</div>
				<div class="carousel-item" align="middle">

					<img align="middle" width="1600px" hieght="300px"
						src="resources/images/comseongbee3.jpg" alt="Third slide">

				</div>
				<!-- / 슬라이드 쇼 끝 -->
				<!-- 왼쪽 오른쪽 화살표 버튼 -->
				<a class="carousel-control-prev" href="#demo" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<!-- <span>Previous</span> -->
				</a> <a class="carousel-control-next" href="#demo" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<!-- <span>Next</span> -->
				</a>
				<!-- / 화살표 버튼 끝 -->
				<!-- 인디케이터 -->
				<ul class="carousel-indicators">
					<li data-target="#demo" data-slide-to="0" class="active"></li>
					<!--0번부터시작-->
					<li data-target="#demo" data-slide-to="1"></li>
					<li data-target="#demo" data-slide-to="2"></li>
				</ul>
				<!-- 인디케이터 끝 -->
			</div>
			<!-- search box -->
			<form action="product_page" method="get">
			<div class="form-group has-search" style="width: 40%; margin-left: auto; margin-right: auto;">
				<span class="fa fa-search form-control-feedback"></span>
				<input type="text" name = "searchinfo" class="form-control" placeholder="Search . . ." style="height: 40px; font-size: 20px;">
			</div>
			</form>
			<!-- 슬라이드쇼 배너 끝 -->
		</div>
	</div>
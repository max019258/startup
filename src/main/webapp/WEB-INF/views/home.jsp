<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<!-- 한글 패치 -->

<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="kr">

<head>

</head>

<body>

<!-- head를 포함한 위의 요소들 전부 header.jsp에 있음 -->
<%@ include file="include/header.jsp" %>
	<div class="space-medium">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8
               col-sm-12 col-xs-12">
					<div class="mb60 text-center section-title">
						<!-- section title start-->
						<h1>Our Services</h1>
					</div>
					<!-- /.section title start-->
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="service-block text-center">
						<!-- service block -->
						<div class="service-img ">
							<!-- service img -->
							<a href="parts-list" class="imghover"><img
								src="resources/images/part-description.png" class="img-responsive"
								alt="Interior Design Website Templates Free Download"> </a>
						</div>
						<!-- service img -->
						<div class="service-content">
							<!-- service content -->
							<h2>
								<a href="parts-list" class="title">부품 설명</a>
							</h2>
							
						</div>
						<!-- service content -->
					</div>
					<!-- /.service block -->
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="service-block text-center">
						<!-- service block -->
						<div class="service-img">
							<!-- service img -->
							<a href="cpu_bench" class="imghover"><img
								src="resources/images/bench.PNG" class="img-responsive"
								alt="Interior Design Website Templates Free Download"> </a>
						</div>
						<!-- service img -->
						<div class="service-content">
							<!-- service content -->
							<h2>
								<a href="cpu_bench" class="title">벤치마크</a>
							</h2>
							
						</div>
						<!-- service content -->
					</div>
					<!-- /.service block -->
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="service-block text-center">
						<!-- service block -->
						<div class="service-img">
							<!-- service img -->
							<a href="contact" class="imghover"><img
								src="resources/images/contact-example.PNG" class="img-responsive"
								alt="Interior Design Website Templates Free Download"> </a>
						</div>
						<!-- service img -->
						<div class="service-content">
							<!-- service content -->
							<h2>
								<a href="contact" class="title">추천견적</a>
							</h2>
							
						</div>
						<!-- service content -->
					</div>
					<!-- /.service block -->
				</div>
			</div>
		</div>
	</div>

	<div class="space-medium">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
					<div class="section-title mb40 text-center">
						<!-- section title start-->
						<h1>컴성비팀의 메세지</h1>
					</div>
					<!-- /.section title start-->
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="testimonial-block bg-light pinside30">
						<div class="quote-left">
							<i class="fa fa-quote-left"></i>
						</div>
						<div class="testimonial-content">
							<p style="font-size:1.5em; "> 
							컴퓨터를 사고싶은데, 알고싶은데 그동안 CPU가 뭔지 코어가 뭔지 스레드가 뭔지 모르셨다구요? 걱정하지마세요!<br>  
							컴퓨터를 사서 게임을 돌리려는데 게임이 버벅거리다 꺼진적 있으신가요? 걱정하지 마세요! <br>
							저희 사이트는 부품을 어렵게 느끼시는 당신께 비유적인 표현으로 쉽게 재밌게 접근합니다.  </p>
							<div class="testimonial-info">
								<span class="testimonial-name">- 박중원</span> <span
									class="testimonial-meta">project team leader</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>

</body>

</html>

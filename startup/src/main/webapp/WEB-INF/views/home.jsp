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
							<a href="service-detail" class="imghover"><img
								src="resources/images/service-pic-1.jpg" class="img-responsive"
								alt="Interior Design Website Templates Free Download"> </a>
						</div>
						<!-- service img -->
						<div class="service-content">
							<!-- service content -->
							<h2>
								<a href="service-detail" class="title">Interior</a>
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
							<a href="service-detail" class="imghover"><img
								src="resources/images/service-pic-2.jpg" class="img-responsive"
								alt="Interior Design Website Templates Free Download"> </a>
						</div>
						<!-- service img -->
						<div class="service-content">
							<!-- service content -->
							<h2>
								<a href="service-detail" class="title">Exterior</a>
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
							<a href="service-detail" class="imghover"><img
								src="resources/images/service-pic-3.jpg" class="img-responsive"
								alt="Interior Design Website Templates Free Download"> </a>
						</div>
						<!-- service img -->
						<div class="service-content">
							<!-- service content -->
							<h2>
								<a href="service-detail" class="title">Landscape</a>
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
						<h1>Our Client Says</h1>
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
							<p>"They are talented &amp; creative. I have never seen a
								better designer on the this market. ecommended to all! If you
								need to build powerfully,contact them immediately ARCHONE design
								have worked on two stunning projects at our School, We were
								fortunate to have his vision breathe new life into a small, bare
								and underused courtyard in the centre of our brand new building.
								Within 4weeks and his team had transformed a poor quality space
								into a rich and vibrant courtyard garden, now enjoyed all day,
								every day by staff and pupils. Both projects have been well
								managed, within budget and worth every penny of our
								investment.We greatly look forward to working with him and his
								team again in the future.â</p>
							<div class="testimonial-info">
								<span class="testimonial-name">- Ruby Burns</span> <span
									class="testimonial-meta">Market research analyst</span>
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

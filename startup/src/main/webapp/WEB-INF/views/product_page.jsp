<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="include/header.jsp"%>
	<div class="space-medium">
		<div class="container">
			<div class="row">
				<h2>${searchinfo}</h2>
			</div>
			<div class="row">
				<div class="service-img ">
					<img src="resources/images/service-pic-1.jpg"
						class="img-responsive" alt="" style="width: 250px; height: 250px;">
				</div>
				<div style="margin-left: 20px;">
					<h2>test</h2>
				</div>
			</div>
		</div>
	</div>
	<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp"%>
</body>
</html>
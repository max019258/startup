<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<!-- 한글 패치 -->

<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="kr">

<head>

</head>
<STYLE TYPE="text/css">
table {font-size: 12pt;}
th,td{vertical-align:top;}
</STYLE>
<body>
	<!-- head를 포함한 위의 요소들 전부 header.jsp에 있음 -->
	<%@ include file="include/header.jsp"%>

	<!-- /.page header -->
	<!-- <div class="content"> -->
		<center>
		<h1><b><br><br>GPU:그래픽 카드</b><br><h1>
			<table>
			

				<tr>
					<th><img src="resources/images/gpu.PNG"></th>
					<th><br>그래픽 카드(GPU) :모니터라는 도화지에 그림을 그리기위한 컴퓨터의 그림도구 정도로 생각하면 좋다 .<br><br>
					 자신이 특별히 고사양 게임이나 그래픽 작업을 할 것이라면 별도로 적정 사양의  고사양 그래픽카드를 사용하면 되고 <br><br>
					 그게 아니라면 CPU에 있는 내장 그래픽을 사용하여도 상관이 없다.</th>
				</tr>
				<!-- -------------- -->
			</table>

		</center>


	<!-- </div> -->
	<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<!-- 한글 패치 -->

<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="kr">

<head>

</head>
<STYLE TYPE="text/css">
table {font-size: 12pt;,
border-spacing: 0 40px;}
th,td{vertical-align:top;}
</STYLE>
<body>
	<!-- head를 포함한 위의 요소들 전부 header.jsp에 있음 -->
	<%@ include file="include/header.jsp"%>

	<!-- /.page header -->
	<!-- <div class="content"> -->
		<center>
		<h1><b><br><br>파워 : 심장</b><br><h1>
			<table>
			

				<tr>
					<th><img src="resources/images/power.PNG"></th>
					<th><br>파워: 각 부품에 전력을 공급하는 장치로 컴퓨터의 심장이라 할 수 있다.<br><br>
파워는 전력을 공급하는 장치 정도이므로 전체적인 컴퓨터 사양이 요구하는 정도의 파워만 갖추고 있으면 된다.</th>
				</tr>
				<!-- -------------- -->
			</table>

		</center>


	<!-- </div> -->
	<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

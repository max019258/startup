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
		<h1><b><br><br>메인보드:뼈대</b><br><h1>
			<table>
			

				<tr>
					<th><img src="resources/images/mainboard.PNG"></th>
					<th><br>메인보드 : 컴퓨터의 각종 부품들(CPU,메모리,GPU)를 장착하는 곳으로 사람으로 치면 기본적인 근육 및 뼈대라고 생각하면 편하다.</th>
				</tr>
				<!-- -------------- -->
			</table>

		</center>


	<!-- </div> -->
	<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

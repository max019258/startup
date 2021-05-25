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
	<div class="content">
		<center>
		<h1><b>메인보드:뼈대</b><br><h1>
			<table>
			

				<tr>
					<th><img src="resources/images/mainboard.PNG"></th>
					<th><br>메인보드 : 컴퓨터의 각종 부품들(CPU,메모리,GPU)를 장착하는 곳으로 <br><br>
					사람으로 치면 기본적인 근육 및 뼈대라고 생각하면 편하다.<br><br>
					(사람의 근육이나 뼈대 처럼 컴퓨터의 모든 부품들이 메인보드를 통해 연결되기 때문)<br><br>
					CPU나 그래픽 카드와 같은 부품들은 부품을 업그레이드 하면 성능이 크게 차이가 나는 반면에<br><br>
					메인보드같은 경우는 컴퓨터의 성능에 크게 좌우하는 부품이 아니다. <br><br>
					허나 다른 부품들이 업그레이드가 됨에따라<br><br>
					 메인보드가 다른 부품들이랑 호환되지 않는 경우가 있기 때문에 꼭 호환 여부를 확인해야한다. <br><br>
					</th>
				</tr>
				<!-- -------------- -->
			</table>

		</center>


	 </div> 
	<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

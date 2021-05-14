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
	<%@ include file="include/header.jsp"%>

	<!-- /.page header -->
	<div class="content">
		<center>
			<table style="width: 714px" style="height:714px">

				<tr>
					<td><a href="sub_ex"><img src="resources/images/beeyou1-1.png"
						onmouseover="this.src='resources/images/beeyou1-2.png';"
						onmouseout="this.src='resources/images/beeyou1-1.png';"></a></td>
					<td><a href="cpu_ex"><img src="resources/images/beeyou2-1.png"
						onmouseover="this.src='resources/images/beeyou2-2.png';"
						onmouseout="this.src='resources/images/beeyou2-1.png';"></a></td>
					<td><a href="mainboard_ex"><img src="resources/images/beeyou3-1.png"
						onmouseover="this.src='resources/images/beeyou3-2.png';"
						onmouseout="this.src='resources/images/beeyou3-1.png';"></a></td>
				</tr>
				<!-- -------------- -->
				<tr>
					<td><a href="gpu_ex"><img src="resources/images/beeyou4-1.png"
						onmouseover="this.src='resources/images/beeyou4-2.png';"
						onmouseout="this.src='resources/images/beeyou4-1.png';"></a></td>
					<td><a href="power_ex"><img src="resources/images/beeyou5-1.png"
						onmouseover="this.src='resources/images/beeyou5-2.png';"
						onmouseout="this.src='resources/images/beeyou5-1.png';"></a></td>
					<td><a href="cpu_ex"><img src="resources/images/beeyou6-1.png"
						onmouseover="this.src='resources/images/beeyou6-2.png';"
						onmouseout="this.src='resources/images/beeyou6-1.png';"></a></td>
				</tr>
				<!-- ----------------- -->
				<tr>
					<td colspan="3"><a href="ram_ex"><img src="resources/images/beeyou7-1.png"
						onmouseover="this.src='resources/images/beeyou7-2.png';"
						onmouseout="this.src='resources/images/beeyou7-1.png';"></a></td>

				</tr>
			</table>

		</center>


	</div>
	<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

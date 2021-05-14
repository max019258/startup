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
		<h1><b><br><br>보조기억 장치(HDD/SSD)</b><br><h1>
			<table>
			

				<tr>
					<th><img src="resources/images/submem.PNG"></th>
					<th><br>보조기억장치(SSD,HDD) : 컴퓨터는 전원을 껐다가 키면 전부 까먹는 멍청이라서 따로 필요한 것들을 저장 해주는 메모장을 가지고 있는데 그것이 보조 기억장치이다.<br><br>
					 만약 자신이 많은 양의 파일들을 저장 혹은 다운 해놓을 것이라면 큰 용량을 사용하는 것이 좋을 것이다.<br><br>
					 보조 기억장치 종류에는 HDD와 SSD가 있다.</th>
				</tr>
				<!-- -------------- -->
			</table>

		</center>


	<!-- </div> -->
	<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

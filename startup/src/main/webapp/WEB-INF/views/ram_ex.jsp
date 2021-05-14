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
		<h1><b><br><br>메모리(램) : 책상</b><br><h1>
			<table>
			

				<tr>
					<th><img src="resources/images/ram.PNG"></th>
					<th><br>메모리(RAM) : 컴퓨터가 작업을 한다고 치면 램은 작업을 하는 공간,<br><br>
					 즉 책상이라고 생각하면 편하다 -> 당연하겠지만 책상이 넓으면 당연히 컴퓨터입장에서는 작업하기 편하므로 램은 많으면 많을수록 좋다.</th>
				</tr>
				<!-- -------------- -->
			</table>

		</center>


	<!-- </div> -->
	<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

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
		<h1><b>메모리(램) : 책상</b><br><h1>
			<table>
			

				<tr>
					<th><img src="resources/images/ram.PNG"></th>
					<th><br>메모리(RAM) : 컴퓨터가 작업을 한다고 치면 램은 작업을 하는 공간,<br><br>
					 즉 책상이라고 생각하면 편하다 <br><br>
					 -> 당연하겠지만 책상이 넓으면 당연히 컴퓨터입장에서는 작업하기 편하므로 램은 많으면 많을수록 좋다.<br><br>
					 단) 32비트 운영체제는 제외한다.<br><br>
					 참고로 요즘 나온 컴퓨터의 스펙을 살펴보면 램이 "DDR4 16GB" 이런 식으로 써 있다. <br><br>
					 여기서 DDR4는 DDR4-SDRAM(Double-Data-Rate Synchronous Dynamic Random Access Memory)를 줄여쓴 것이다. <br><br>
					 DDR1 -> DDR2 -> DDR3 -> DDR4 이런 식으로 발전해왔는데 동작 속도 면에서 전 버전의 2배의 성능을 내는 방향으로 업그레이드 되어 왔다. <br><br>
					 DDR1이 데이터 입출력 통로가 각각 하나인 2차선 도로라고 하면, DDR2는 4차선 도로, DDR3는 8차선 도로, DDR4는 16차선 도로라고 볼 수 있다</th>
				</tr>
				<!-- -------------- -->
			</table>

		</center>


	 </div> 
	<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

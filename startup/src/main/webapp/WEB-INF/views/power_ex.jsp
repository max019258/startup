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
	 <div class="content"> 
		<center>
		<h1><b>파워 : 심장</b><br><h1>
			<table>
			

				<tr>
					<th><img src="resources/images/power.PNG"></th>
					<th><br>파워: 각 부품에 전력을 공급하는 장치로 컴퓨터의 심장이라 할 수 있다.<br><br>
파워는 컴퓨터에 전력을 공급해주는 역할을 담당하는 컴퓨터 부품이다. <br><br>
컴퓨터에 공급되는 전력이 안정적이지 못 하면 <br><br>
각종 컴퓨터 부품에 악영향을 미칠 수 있기 때문에 <br><br>
파워를 구입할 때에는 반드시 다른 부품 성능에 맞는 파워를 구입해야 한다. <br><br>
파워에 대한 쉬운 설명을 위하여 인간의 몸을 예로 들자면, <br><br>
혈액이 심장에 의해서 몸 전체를 순환하고 있듯이, <br><br>
컴퓨터에서는 파워서플라이에 의해서 전류가 순환되고 있다고 보면 된다. <br><br>
인간은 고혈압, 저혈압과 같은 질병이 있으면 수명이 짧아지듯이 컴퓨터도 마찬가지이다.
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

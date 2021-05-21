<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<!-- 한글 패치 -->

<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="kr">

<head>

</head>

<STYLE TYPE="text/css">
 table {font-size: 13pt;}
th,td{vertical-align:top;}
body {
  font-size: 13pt; /* font-size 1em = 10px 브라우저의 기본 설정 */
}
span {
  font-size: 13pt; /* 1.6em = 16px */
}
b {
  font-size: 13pt; 
} 
</STYLE>
<body>
	<!-- head를 포함한 위의 요소들 전부 header.jsp에 있음 -->
	<%@ include file="include/header.jsp"%>

	<!-- /.page header -->
	<div class="content">
		<center>
		<h1><b><br><br>그래픽카드:(VGA)</b><br><h1>
			<table>
			

				<tr>
					<th><img src="resources/images/gpu.PNG"></th>
					<td><br>그래픽 카드(VGA) :모니터라는 도화지에 그림을 그리기위한 컴퓨터의 그림도구 정도로 생각하면 좋다 .<br><br>
					 조금더 자세히 설명하자면 다른 기기들이 자체적으로 화면을 출력하는 기능이 없기에 <br><br>
					 생성신호를 영상 신호로 바꿔주고 전달해 주는 장치이다</td>
				</tr>
				
				
			</table>
			

		</center>
		
	<!--  -------------------------------------------------------- -->	
		
		 <hr width=100%>
		<div class="content2">
		<b>[그래픽 카드의 기본구성]</b><br><br>
그래픽카드의 기본 구조는 기판위에 GPU,비디오 모리 장착 슬롯 및 모니터 등이 조합되는 것이다.<br><br>
이 중에서 가장 주목 할것은 GPU와 비디오 메모리이다.<br><br><br>
<img src="resources/images/vga.PNG"><br>

<b> 1)GPU</b> <br><br>

GPU는 모니터로 보낼 신호를 직접 생성하는 역하을 하는 프로세서로  <br><br>

해당 컴퓨터의 그래픽 성능을 가장크게 좌우하는 요소이다. <br><br>


<b> 2)비디오 메모리</b> <br><br>

 비디오 메모리는 그래픽 카드의 내에서 GPU와 보조를 맞추면서<br><br>
 
GPU가 처리하는 그래픽 데이터를 임시 저장하는 역할을 담당한다. <br><br>

따라서 비디오 메모리의 용량이 크면 GPU는 보다 대용량의 고품질 그래픽 데이터를 처리할 수 있다.<br><br>
		</div>
		
		
		 <hr width=100%>
		<!--  -------------------------------------------------------- -->
		<div class="content2">
		<b>[그래픽 카드의 종류]</b><br><br>
그래픽 카드는 먼저 크게 <b> 1)내장 그래픽 , 2)외장 그래픽 </b> 으로 나눌 수 있습니다.<br><br><br>

<b> 1)내장 그래픽</b> <br><br>

cpu 안에 그래픽 연산장치가 붙어서 나오는 제품을 말한다.  <br><br>

보통의 인텔 cpu제품은 이 내장 그래픽이 탑재 되어있고, <br><br>

보통의 라이젠의 제품은 내장 그래픽이 탑재되지 않은 제품이 많다. <br><br>
 
'보통의' 라는 말을 한 이유는, 인텔 제품인데도 내장 그래픽이 없는 제품도 있고, <br><br>

라이젠의 제품인데도 내장 그래픽이 있는 제품이 있다. <br><br>

구입전 확인 하고 구매해야 한다. <br><br><br>

<b> 2)외장 그래픽</b> <br><br>

cpu 안에 있는 그래픽과는 별개의 부품으로, 엔비디아, 라데온과 같은 회사에서 생산하는 제품을 말한다. <br><br>
 
말그대로 cpu안의 그래픽 카드가 아니라 밖에 있다고 붙은 이름이다. <br><br>

위에서 설명했듯 고성능 그래픽 작업을 해야할때, 게임을 할때 이 장치가 필요하다.<br><br>
		</div>
	</div> 
	<!--아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

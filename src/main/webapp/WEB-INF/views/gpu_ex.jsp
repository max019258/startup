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
		<b>[내장 그래픽과 외장 그래픽]</b><br><br>
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
		
		
				
		 <hr width=100%>
		<!--  -------------------------------------------------------- -->
		
		 <div class="content2"> 
		<b>[엔비디아 그래픽카드 읽는 법]</b><br><br>
		</div>
<img src="resources/images/vga2.PNG"><br>
<div class="content2"> 

<div style="overflow:scroll; width: 80%; height:310px;  border:1px solid gold;  padding-left:2%;  padding-right:2%;">
<b><br> 1)제조사</b> <br><br>

엔비디아 그래픽카드를 만드는 회사가 여러개 있는데  <br><br>

어떤 회사에서 만든것인지 알려주는 역할을 한다. <br><br>

제조사 종류 : ASUS, MSI, GIGABYTE, EVGA, ZOTAC 등<br><br><br>

<hr width=100%>
 
<b> <br> 2)제품군</b> <br><br>

이 그래픽 카드가 지포스 제품군이라는 뜻이다(줄여서 GF) <br><br>
 
<b>엔비디아 그래픽 카드의 제품군</b> : 지포스(geforce),쿼드로(quadro),테슬라(tesla) <br><br>

<b>지포스</b> : 개인용 컴퓨터용(가장 대중적으로 일반인이 다른 제품군을 쓰는일은 거의 없다.) <br>
<b>쿼드로 </b>: 워크스테이션용,작업용(3D 모델링,렌더링에 최적화) <br>
<b>테슬라</b> : 워크스테이션,작업용(병렬 연산에 최적화) <br><br>

<hr width=100%>
<b> <br> 3) 그래픽 카드 등급</b> <br><br>

없음 < GT < GTS < GTX < RTX (오룬쪽으로 갈수록 상위 등급)<br><br>

<b>GT</b> : 간단한 엔트리급 그래픽카드 <br>
<b>GTS </b>: 메인스트림급 그래픽카드(요즘은 잘안나오고 GTX로 합쳐져 나옴) <br>
<b>GTX</b> : 중간~고성능 그래픽카드가 모두 묶여있는 등급 <br>
<b>RTX</b> : 고성능 그래픽 카드로 빛반사와 같은 광원효과를 실사적으로 표현해주는 기술(레이트레이싱)을 지니고 있음 <br><br>

<hr width=100%>
<b>  <br>4) 그래픽 카드 세대</b> <br><br>

<b>백의 자리(천의 자리)는 그래픽카드의 세대다. 백의 자리(천의 자리) 숫자가 높을수록 최근에 출시된 제품이다​</b><br><br>
<b>특이사항 :</b><br>

<b>800번대</b> : 800번대는 데스크탑용이 없고 모바일버전(노트북)으로만 출시 됐다. <br>
<b>16시리즈 </b>: 1000번대 다음은 1100번대가 아니고 바로 1600대다. 예) GTX1660TI  <br>
<b>RTX</b> : RTX 등급은 숫자가 3000번대로 시작한다. 예) RTX3060 <br><br>

<hr width=100%>
<b> <br> 5) 그래픽 카드 성능</b> <br><br>

<b>십의 자리는 그래픽카드의 성능을 상징한다. 십의 자리가 높을수록 성능이 좋다.</b><br>

<b>4이하 </b>: 로우엔드급 ~엔트리급(요즘은 잘 안 나온다.)  <br>
<b>5~6</b> : 메인스트림급 그래픽 카드 <br>
<b>7 </b>: 퍼포먼스급 그래픽카드  <br>
<b>8~9</b> : 하이엔드급 그래픽카드<br>
<b>TITAN</b> : 같은 세대 그래픽카드 중 최고성능(전문 작업용)<br><br>

<hr width=100%>
<b> <br> 6) 접미어</b> <br><br>

접미어는 부가 설명같은 존재이다.<br><br>

<b>Ti</b> : Ti는 타이탄이라고 하며 Ti가 붙은 모델은 동 성능(십의 자리가 같은)모델보다 성능이 약간 더 좋다. 예) (GTX 1050 < GTX 1050 Ti < GTX 1060)<br>
<b>Super </b>: Super가 붙은 그래픽카드는 아무것도 붙지 않은 모델과 Ti 모델의 중간정도 성능을 가진다.예) (GTX 1660 < GTX 1660 Super < GTA 1660 Ti)<br>
<b>M</b> : 노트북에 들어가는 그래픽카드 (지포스 10 시리즈부터는 숫자 뒤에 M을 따로 붙이지 않는다.)<br>
<b>FE</b> :'Founders Edition'의 줄임말로 레퍼런스 그래픽카드임을 의미한다. <br><br>

<hr width=100%>
<b>  <br>7) 브랜드</b> <br><br>

그래픽 제조사에서 붙이는 브랜드명이다.<br><br>
그래픽카드 제조사별로 브랜드명은 각각 다르며, 여기에도 나름대로의 등급이 있다고는 하지만<br><br>
<b>같은 GPU면 상위 브랜드와 하위 브랜드 사이의 성능 차이는 미미하다.</b> <br><br>



<hr width=100%>
<b> <br> 8) 오버클럭 여부</b> <br><br>

<b>오버클럭은 부품의 수명을 포기하고 성능을 높이는 기능</b>을 의미하는데 <br><br>
이 기능을 제조사에서 자체적으로 수행해서 판매할 때 붙인다. <br><br>
선호하는 사람도 있고 아닌사람도 있기에 개인 선호도에따라 고르면된다. <br><br>

<hr width=100%>
<b>  <br>9) 그래픽 카드 메모리 규격 </b> <br>

그래픽카드 메모리(VRAM)의 규격이다. <br><br>
<b>메모리 규격 종류</b> <br><br>
-GDDR3(옛날 규격이라 요즘은 안보임), <br>
-GDDR5<br>
-GDDR5X, HBM, HBM2 등이 있다.<br>
(GDDR5X를 DDR5X, D5X로 표기하기도 한다.)
<br><br>

<hr width=100%>
<b> <br> 10) 그래픽 메모리 </b> <br><br>
그래픽카드 메모리(VRAM)의 용량이다.<br><br>
GPU에서는 데이터를 VRAM으로 불러와 처리하기 때문에 <br><br>
VRAM 용량이 높으면 GP가 처리할 데이터의 양이 많은 환경(고해상도, 고주사율)에서의 게이밍에 유리하다.<br><br>
허나 요즘은 동일한 모델 기준으로 드라마틱한 효과는 나오지 않는다는 의견이 많다.

​
<br><br>

</div>
		</div>
	 </div>  
	<!--아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

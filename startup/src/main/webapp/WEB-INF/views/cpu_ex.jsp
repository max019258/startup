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
  font-size: 13pt; /* 1.6em = 16px */
}
</STYLE>
<body>
	<!-- head를 포함한 위의 요소들 전부 header.jsp에 있음 -->
	<%@ include file="include/header.jsp"%>

	<!-- /.page header -->
	<div class="content">
		 <center> 
		
		<h1><b>[CPU란]</b><br><h1>
			<table width=100%>
				<tr>
					<td width=300px><img src="resources/images/cpu.PNG" height="300px" weight="300px"></td>
					<th>
					<br> CPU : 컴퓨터의 가장 중요한 부분중 하나로 컴퓨터의 뇌라고 생각하면 편하다<br><br>
					CPU는 'Central Processing Unit'의 약자로 중앙처리 장치이다'<br><br>
					단어 그대로 컴퓨터의 정중앙에서 모든 데이터를 처리하는 장치라는 뜻이다.<br><br>
					컴퓨터의 두뇌에 해당하는 만큼 사용자로부터 입력받은 명령어를 해석,연산한 후<br><br>
					 그 결과를 출력하는 역할을 한다.<br><br>
					</th>				
				</tr>
				<!-- -------------- -->
			</table width=100%>
			<hr width=100%>
			<h1><b>[코어와 쓰레드]</b><br><h1>
			<table width=100%>
				<tr>
					<td width=300px><img src="resources/images/core_thread.PNG" height="300px" weight="300px"></td>
					<th><br> CPU의 성능을 볼때 제일먼저 보는 것은 코어 갯수와 쓰레드 갯수이다. <br><br>
					코어를 사람의 뇌라고 보면 코어가 많을 수록 동시에 많은 생각을 할 수 있다는 뜻이고<br><br>
					쓰레드를 사람의 손이라고 보면 뇌가 생각하는 것을 손이 움직여서 처리하게 된다.<br><br>
					보통 코어 1개당 쓰레드 1개씩 붙는 것이 기본이지만 <br><br>
					요즘에는 하이퍼 쓰레딩 기술(HT)이라고 해서 코어 1개당 쓰레드 사용을 2개하게 된다.<br><br>
					쉽게 말하자면 뇌 1개당 손이 2개나 생겨서 일을 2배로 한다는 소리이다.<br><br>
					여담으로 CPU클럭이라고 있는데 클럭 값이 높을수록 CPU 동작속도가 빨라진다.<br><br>
					<br>
					</th>				
				</tr>
				<!-- -------------- -->
			</table>
			
			
			
		 </center> 
		 <hr width=100%>
		 <div class="content2">
		<br><br><h1><strong>Intel의 모델명을 보는 방법</strong></h1><br>
			
					<img src="resources/images/intel.PNG" height="200px" weight="300px">
					
					<b><br> <br>
					1. 등급 : 셀러론,팬티엄,I3,I5,I7,I9 (왼쪽부터 오른쪽까지 낮은 등급순으로 나눔)<br><br>
					2. 세대 : 말 그대로 CPU의 세대를 나타내는 것으로 21년도 기준으로 11세대까지 나와있다.(고로 앞 부분 숫자가 11) <br><br>
					3. 모델명 : 세대 다음 숫자는 모델명으로 특별한 의미는 없다.<br><br>
					4. 용도 구분 : CPU를 다양한 용도에 따라 구분한 것이다.<br></b>		
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <b>4-1. X,XE : 인텔 최상위 라인<br></b>	
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <b>4-2. K : K가 붙은 제품은 벌크(컴퓨터 수명을 깎으며 성능향상)이 가능하며 다른모델 보다 좀더 성능이 좋다.<br></b>	
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <b>4-3. F or p : 내장 그래픽이 없는 모델로 이 모델들을 사용시에는 무조건 별도의 그래픽카드를 사야한다.<br></b>		
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <b>4-4. H : 노트북 CPU로 게이밍노트북에 흔히 쓰인다.<br></b>	
					&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b>4-5. U : 저전력 CPU로 가벼운 노트북에 흔히 쓰인다.<br></b>	
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <b>4-6. Y : 초저전력 CPU로 태블릿에 흔히 쓰인다.<br><br></b>		
					</div>				
				<!-- -------------- -->
				 <hr width=100%>
				  <div class="content2">
		<br><br><h1><strong>Ryzen의 모델명을 보는 방법</strong></h1><br>
			
					<img src="resources/images/ryzen.PNG" height="200px" weight="300px">
					
					<b><br> <br>
					1. 세그먼트 : RYZEN 3 : 표준형(보급형) 제품<br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;RYZEN 5 : 하이 퍼포먼스 (주력 라인)<br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;RYZEN 7 : 수프림 퍼포먼스 (고성능, 게이밍용)<br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;RYZEN 9 : 얼티밋 퍼포먼스 (고사양 게이밍, 콘텐츠 제작용)<br><br>
					2. 세대 : 말 그대로 CPU의 세대를 나타내는 것으로 21년도 기준으로 5세대까지 나와있다.(고로 앞 부분 숫자가 5) <br><br>
					3. 성능레벨 : 세대 다음으로 오는 숫자로 레벨별 의미는 다음과 같다.<br>
		&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;2,3 : 메인 스트림<br>
		&emsp;&emsp;&emsp;4,5,6 : 고성능<br>
		&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;7,8 : 초고성능<br><br>
					4. 특성 : CPU를 제품의 특성에 따라 구분한 것이다.<br></b>		
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <b>4-1. 없음 : 일반적이 데스크탑 CPU<br></b>	
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <b>4-2. X : 고성능 CPU<br></b>	
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <b>4-3. G : 그래픽 카드를 포함하고 있는 CPU<br></b>		
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <b>4-4. T : 저전력 데스크탑 CPU<br></b>	
					&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b>4-5. S : 그래픽 카드 포함 저전력 데스크탑 CPU<br></b>	
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <b>4-6. H : 고성능 노트북 CPU<br></b>		
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <b>4-7. U : 일반 노트북 CPU<br></b>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <b>4-8. U : 저전력 노트북 CPU<br></b>					
				<!-- -------------- -->
				</div>
	
	</div>
	
	<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<!-- 한글 패치 -->

<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="kr">

<head>

</head>
<STYLE TYPE="text/css">
table {font-size: 12pt;
border-collapse: separate;
border-spacing: 0 40px;
align:center;}
th,td{vertical-align:top;}


</STYLE>
<body>
	<!-- head를 포함한 위의 요소들 전부 header.jsp에 있음 -->
	<%@ include file="include/header.jsp"%>

	<!-- /.page header -->
	<div class="content">
	<div class="content2">
		
		<h1><b>그 외의 부품들</b><br><br></h1>
			<table width=100%>
				<tr>
					<th><img src="resources/images/odd.PNG" height="300px" weight="300px"></th>
					<th><br>ODD(CDROM): CD ROM이라고도 하는데 단순히 CD를 읽어주는 장비라고 생각하면 된다.<br><br>
하지만 요즘은 CD를 잘 사용하지 않아서 잘 사용하지는 않는다. 

</th>


			
			
			
	</table>
	<br>
	<hr width=100%>
				<table width=100%>
				<tr>
					<th><img src="resources/images/case.PNG" height="300px" weight="300px"></th>
					<th><br>케이스: 컴퓨터의 옷정도로 생각하면 된다 <br><br>
사람의 옷과 같이 신체보호, 열관리 등의 역할을 하긴 하지만 큰 의미는 없다 <br><br>디자인이 맘에 들지 않는게 아닌이상 과소비는 하지 말자
</th>
				</tr>
				</table>
				
				<br>
				<hr width=100%>
				
				
				<table width=100%>
				<tr>
					<th><img src="resources/images/cooler.PNG" height="300px" weight="300px"></th>
					<th><br>쿨러 : 컴퓨터의 발열을 낮추는 역할을 한다 <br><br>
					컴퓨터 수명의 주적인 발열을 덜어주는 역할을 한다.<br><br> 저사양 컴퓨터에는 굳이 필요없지만 고사양 컴퓨터에는 돈을 어느정도 투자해주는 것도 좋다.
</th>
				</tr>
				<!-- -------------- -->
			</table>

		

</div>
	</div> 
	<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

<%@page import="com.inhatc.domain.SeleniumCrawling"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<!-- 한글 패치 -->

<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js">
	
</script>



<%
Class.forName("com.mysql.jdbc.Driver");

String jdbcDriver = "jdbc:mysql://localhost:3306/startup?serverTimezone=UTC";
String dbUser = "root";
String dbPwd = "1234";

Connection conn = null;

PreparedStatement pstmt = null;
PreparedStatement price_pstmt = null;
PreparedStatement priceinput_pstmt = null;

ResultSet rs = null;
ResultSet price_rs = null;
ResultSet priceinput_rs = null;

String[] CPU_name = new String[100];
int[] CPU_bench = new int[100];
int[] CPU_Price = new int[100];
String CPU = "";

SeleniumCrawling seleniumCrawling = new SeleniumCrawling();

int i = 0;
int j = 0;

try{	
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);
	price_pstmt = conn.prepareStatement("select cpu_name from startup.cpu_bench");
	price_rs = price_pstmt.executeQuery();
	
	while (price_rs.next()) {
		CPU_name[j] = price_rs.getString("cpu_name");
		j++;
	}
}catch(SQLException se){
	se.printStackTrace();
}finally{
	if (price_rs != null)
		price_rs.close();
	if (price_pstmt != null)
		price_pstmt.close();
	if (conn != null)
		conn.close();
}

try{
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);
	priceinput_pstmt = conn.prepareStatement("update startup.cpu_bench set price = ? where cpu_num = ?");
	//priceinput_rs = priceinput_pstmt.executeQuery();
	int a = 0;
	
	for(j = 0; j < 50; j++){
		String temp = seleniumCrawling.price_crwaling(CPU_name[j]);
		System.out.println(j+"번째에서 걸림--------------------------"+CPU_name[j]);
		a++;
		if(temp == null || temp == "" || temp == "단종" && !temp.contains("원")){
			continue;
		}else{
			temp = temp.trim();
			System.out.print("temp---------------------------"+temp);
			temp = temp.replace("원", "").replace(",", ""); // 원 하고 , 없애고
			
			int price = Integer.parseInt(temp); // int 형 변환
			
			priceinput_pstmt.setInt(1, price); // price = ? 에 가격 넣고
			priceinput_pstmt.setInt(2, a); // gpu_num = ? 에 j 넣고
			priceinput_pstmt.executeUpdate(); // 업뎃
		}
	}
}catch(SQLException se){
	se.printStackTrace();
}finally{
	if (rs != null)
		rs.close();
	if (priceinput_pstmt != null)
		priceinput_pstmt.close();
	if (conn != null)
		conn.close();
}





try {

	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);
	pstmt = conn.prepareStatement("select * from startup.cpu_bench order by benchi_value desc;");
	rs = pstmt.executeQuery();
	while (rs.next()) {
		CPU_name[i] = rs.getString("CPU_name");
		CPU_bench[i] = rs.getInt("benchi_value");
		CPU_Price[i] = rs.getInt("Price");
		CPU += "['" + CPU_name[i] + "'," + CPU_bench[i] + "," + CPU_Price[i] + "],";
		i++;
	}
} catch (SQLException se) {
	se.printStackTrace();
} finally {
	if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
}
%>

<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});
	google.charts.setOnLoadCallback(drawVisualization);

	function drawVisualization() {
		var data = google.visualization.arrayToDataTable([
				[ 'CPU 제품명', 'CPU_bench', 'CPU_Price' ],
<%=CPU%>
	]);
		var view = new google.visualization.DataView(data);
		view.setColumns([ 0, 1, {
			calc : "stringify",
			sourceColumn : 1,
			type : "string",
			role : "annotation"
		}

		, 2, {
			calc : "stringify",
			sourceColumn : 2,
			type : "string",
			role : "annotation"
		} ]);
		var options = {
			title : '벤치마크 수치 상위 100위까지의 CPU',
			fontSize : 12,
			vAxis : {
				title : 'CPU 제품명'
			},
			hAxis : {
				title : 'bench_value'
			},
			seriesType : 'bars',
			bar : {
				groupWidth : "95%"
			},
			series : {
				5 : {
					type : 'line'
				},
				'chartArea' : {
					'width' : '100%',
					'height' : '100%'
				},
				'legend' : {
					'position' : 'bottom'
				}
			}
		};

		var chart = new google.visualization.BarChart(document
				.getElementById('chart_div'));
		chart.draw(view, options);
	}
</script>




</head>

<body>
	<!-- head를 포함한 위의 요소들 전부 header.jsp에 있음 -->
	<%@ include file="include/header.jsp"%>


	<!-- Main content -->
	<section class="content">

		<div class="row">
			<!-- 차트 그리는 문항 : <div id="chart_div" ></div> -->
			<div id="chart_div" style="width: 900px; height: 4000px;"></div>


			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->

				<div class="box">

					<div class="box-header with-border">


						<h3 class="box-title">LIST ALL PAGE</h3>
					</div>
					<div class="box-body">

						<table class="table table-bordered">
							<tr>
								<th style="width: 10px">CPU_num</th>
								<th>CPU_name</th>
								<th>benchi_value</th>
								<th>price</th>
							</tr>


							<c:forEach items="${list}" var="CpubenchVO">

								<tr>
									<td>${CpubenchVO.CPU_num}</td>
									<td>${CpubenchVO.CPU_name}</td>
									<td>${CpubenchVO.benchi_value}</td>
									<td>${CpubenchVO.price}</td>
								</tr>

							</c:forEach>

						</table>



					</div>
					<!-- /.box-body -->
					<div class="box-footer">Footer</div>
					<!-- /.box-footer-->
				</div>
			</div>
			<!--/.col (left) -->

		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<script>
		var result = '${msg}';

		if (result == 'SUCCESS') {
			alert("처리가 완료되었습니다.");
		}
	</script>


	<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp"%>
</body>

</html>

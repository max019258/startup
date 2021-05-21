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
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js">	</script>



<% 
	 Class.forName("com.mysql.jdbc.Driver");
     Connection conn = null;
     PreparedStatement pstmt = null;
     ResultSet rs = null; 
     String[] GPU_name =new String[100];
     int[] GPU_bench =new int[100];
     int i =0;
     try{
         String jdbcDriver = "jdbc:mysql://localhost:3306/startup?serverTimezone=UTC";
         String dbUser = "root";
         String dbPwd = "1234";            
         conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);             
         pstmt = conn.prepareStatement("select * from startup.gpu_bench order by benchi_value desc;");     
         rs = pstmt.executeQuery();
          while(rs.next()){
        	  GPU_name[i] =rs.getString("GPU_name");
        	  GPU_bench[i] =rs.getInt("benchi_value");
        	  i++;
            }
        }catch(SQLException se){
            se.printStackTrace();
        }finally{
            if(rs != null) rs.close();
            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
        }
    %>
	
	<script type="text/javascript">
		google.charts.load('current', {'packages':['corechart']});
		google.charts.setOnLoadCallback(drawVisualization);
	
		function drawVisualization() { 
			var data = google.visualization.arrayToDataTable([
					['GPU 제품명', 'GPU_bench'],
					['<%= GPU_name[0]%>',  <%= GPU_bench[0]%>],
					['<%= GPU_name[1]%>',  <%= GPU_bench[1]%>],
					['<%= GPU_name[2]%>',  <%= GPU_bench[2]%>],
					['<%= GPU_name[3]%>',  <%= GPU_bench[3]%>],
					['<%= GPU_name[4]%>',  <%= GPU_bench[4]%>]
				]);
			var options = {
					title : '벤치마크 수치 상위 5위까지의 그래픽카드',
					vAxis: {title: 'bench_value'},
					hAxis: {title: '그래픽카드 제품명'}, 
					seriesType: 'bars',
					series: {5: {type: 'line'}}
				};
			
			var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
			chart.draw(data, options);
		}
	</script>
	
	
	


</head>

<body>
	<!-- head를 포함한 위의 요소들 전부 header.jsp에 있음 -->
	<%@ include file="include/header.jsp"%>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->

				<div class="box">
					<div class="box-header with-border">
					<div id="chart_div" style="width:900px; height: 500px;"></div>
						<h3 class="box-title">LIST ALL PAGE</h3>
					</div>
					<div class="box-body">

						<table class="table table-bordered">
							<tr>
								<th style="width: 10px">GPU_num</th>
								<th>GPU_name</th>
								<th>benchi_value</th>
								<th>price</th>
							</tr>


							<c:forEach items="${list}" var="GpubenchVO">

								<tr>
									<td>${GpubenchVO.GPU_num}</td>
									<td>${GpubenchVO.GPU_name}</td>
									<td>${GpubenchVO.benchi_value}</td>
									<td>${GpubenchVO.price}</td>
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

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<!-- 한글 패치 -->
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="kr">

<head>
  
</head>
<style>
			input[id="cb1"] + label {
				display: inline-block;
				width: 20px;
				height: 20px;
				border: 2px solid #bcbcbc;
				cursor: pointer;
			}
			input[id="cb1"]:checked + label {
				background-color: #666666;
			}
			input[id="cb1"] {
				display: none;
			}
		</style>
<body>

<!-- head를 포함한 위의 요소들 전부 header.jsp에 있음 -->
<%@ include file="include/header.jsp" %>
<!-- 프로그램 이름과 종류 따오기 시작-->

<% 
	 Class.forName("com.mysql.jdbc.Driver");
     Connection conn = null;
     PreparedStatement pstmt = null;
     ResultSet rs = null; 
     String[][] program_name =new String[100][2];

     int i =0;
     try{
         String jdbcDriver = "jdbc:mysql://localhost:3306/startup?serverTimezone=UTC";
         String dbUser = "root";
         String dbPwd = "1234";            
         conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);             
         pstmt = conn.prepareStatement("select Program_name,Kind from startup.recommend");     
         rs = pstmt.executeQuery();
          while(rs.next()){
        	  if ("game".equals(rs.getString("Kind")))
        	  {
        		  program_name[i][0] =rs.getString("Program_name");
        		  program_name[i][1] ="game";
        	  }
        	  else if ("work".equals(rs.getString("Kind")))
        	  {
        		  program_name[i][0] =rs.getString("Program_name");
        		  program_name[i][1] ="work";
        	  }
        	  i++;
            }
        }catch(SQLException se){
            se.printStackTrace();
        }finally{
            if(rs != null) rs.close();
            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
        }
    %> <!-- 프로그램 이름과 종류 따오기 끝-->

   
   
   
   
   
    <div class="content">
    <center><h1><b> 프로그램별 추천 견적 </b></h1></center><br>
    <div class="content0">
   
 <form action='contact2'>
  <b>작업</b><br>
  <%
  int j=0;  
  for(j=0;j<i;j++)
  {
	  if("work".equals(program_name[j][1]))
	  {  %>
	   <div class="content4"><input type='checkbox' name='program' value="<%=program_name[j][0]%>"/>&nbsp;<%= program_name[j][0]%></div>
	<%	  
	
		 
	  }
  }  
  %>
   <div class="content3">
 <hr width=100%>
  </div>
  <div class="content3">
  
   <b>게임</b>
   </div>
  <%
 
  for(j=0;j<i;j++)
  {
	  if("game".equals(program_name[j][1]))
	  {  %>
	   <div class="content4"><input type='checkbox' name='program' value="<%=program_name[j][0] %>"/>&nbsp;<%= program_name[j][0]%></div>
	<%	 
	     
	  } 
	
  }  
  %>
   
    <div class="content3"><input class="btn-default" type ='submit' value="submit"> </div><br><br><br><br><br><br>
    
 
  
 
</form>
      


</div>


<%
String[] checked = request.getParameterValues("program"); // 받아온 값
int cnt=checked.length; // 받아온값 개수
String in_value=""; // sql넣을 값
for (i=0;i<cnt;i++)
{
	if (i==0){
		in_value= in_value+"Program_name='"+checked[i]+"'";}
	else{
		in_value= in_value+"or Program_name='"+checked[i]+"'";
	}
}
%>

<% 
	 Class.forName("com.mysql.jdbc.Driver");
     Connection con2 = null;
     PreparedStatement pstmt2 = null;
     ResultSet rs2 = null; 
     String cpu_name="";
     String cpu_value="";
     try{
         String jdbcDriver = "jdbc:mysql://localhost:3306/startup?serverTimezone=UTC";
         String dbUser = "root";
         String dbPwd = "1234";            
         con2 = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);  
         pstmt2 = con2.prepareStatement("select cpu_bench.CPU_name,cpu_bench.benchi_value "+
        		 "from startup.cpu_bench, startup.recommend "+
        		 "where cpu_bench.cpu_num=recommend.cpu_num "+
        		 "and("+in_value+        		 
        		 ") order by benchi_value desc limit 1;");     
         rs2 = pstmt2.executeQuery();
         
          while(rs2.next()){
        	  cpu_value=rs2.getString(2);
        	  cpu_name=rs2.getString(1);
        	 
            }
        }catch(SQLException se){
            se.printStackTrace();
        }finally{
            if(rs2 != null) rs2.close();
            if(pstmt2 != null) pstmt2.close();
            if(con2 != null) con2.close();
        }
     /* cpu_name="select cpu_bench.CPU_name,cpu_bench.benchi_value "+
     		 "from startup.cpu_bench, startup.recommend "+
     		 "where cpu_bench.cpu_num=recommend.cpu_num "+
     		 "and("+in_value+        		 
     		 ") order by benchi_value desc limit 1;";  */

  
 %>





<!-- ------------------------------------------------------------------- -->


<% 
	 Class.forName("com.mysql.jdbc.Driver");
     Connection con3 = null;
     PreparedStatement pstmt3 = null;
     ResultSet rs3 = null; 
     String gpu_name="";
     String gpu_value="";
     try{
         String jdbcDriver = "jdbc:mysql://localhost:3306/startup?serverTimezone=UTC";
         String dbUser = "root";
         String dbPwd = "1234";            
         con3 = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);  
         pstmt3 = con3.prepareStatement("select gpu_bench.gpu_name,max(gpu_bench.benchi_value)"+
        		 "from startup.gpu_bench, startup.recommend "+
        		 "where gpu_bench.gpu_num=recommend.gpu_num "+
        		 "and("+in_value+        		 
        		 ") order by benchi_value desc limit 1;");     
         rs3 = pstmt3.executeQuery();
         
          while(rs3.next()){
        	  gpu_value=rs3.getString(2);
        	  gpu_name=rs3.getString(1);
        	 
            }
        }catch(SQLException se){
            se.printStackTrace();
        }finally{
            if(rs3 != null) rs3.close();
            if(pstmt3 != null) pstmt3.close();
            if(con3 != null) con3.close();
        }
   /*   gpu_name="select gpu_bench.gpu_name,max(gpu_bench.benchi_value)"+
    		 "from startup.gpu_bench, startup.recommend "+
    		 "where gpu_bench.gpu_num=recommend.gpu_num "+
    		 "and("+in_value+        		 
    		 ");"; */

  
 %>



<!-- ------------------------------------------------------------------- -->


<% 
	 Class.forName("com.mysql.jdbc.Driver");
     Connection con4 = null;
     PreparedStatement pstmt4 = null;
     ResultSet rs4 = null; 
     String max_ram="";  
     try{
         String jdbcDriver = "jdbc:mysql://localhost:3306/startup?serverTimezone=UTC";
         String dbUser = "root";
         String dbPwd = "1234";            
         con4 = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);  
         pstmt4 = con4.prepareStatement("select  max(RAM_recomm)"+
        		 "from startup.gpu_bench, startup.recommend "+
        		 "where gpu_bench.gpu_num=recommend.gpu_num "+
        		 "and("+in_value+        		 
        		 ");");     
         rs4 = pstmt4.executeQuery();
         
          while(rs4.next()){
        	
        	  max_ram=rs4.getString(1);
        	 
            }
        }catch(SQLException se){
            se.printStackTrace();
        }finally{
            if(rs4 != null) rs4.close();
            if(pstmt4 != null) pstmt4.close();
            if(con4 != null) con4.close();
        }
   /*   gpu_name="select gpu_bench.gpu_name,max(gpu_bench.benchi_value)"+
    		 "from startup.gpu_bench, startup.recommend "+
    		 "where gpu_bench.gpu_num=recommend.gpu_num "+
    		 "and("+in_value+        		 
    		 ");"; */

  
 %>

 <br>


<!-- ------------------------------------------------------------------- -->


<% 
	 Class.forName("com.mysql.jdbc.Driver");
     Connection con5 = null;
     PreparedStatement pstmt5 = null;
     ResultSet rs5 = null; 
     String sum_storage="";  
     try{
         String jdbcDriver = "jdbc:mysql://localhost:3306/startup?serverTimezone=UTC";
         String dbUser = "root";
         String dbPwd = "1234";            
         con5 = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);  
         pstmt5 = con5.prepareStatement("select  sum(Storage)+256 "+
        		 "from startup.gpu_bench, startup.recommend "+
        		 "where gpu_bench.gpu_num=recommend.gpu_num "+
        		 "and("+in_value+        		 
        		 ");");     
         rs5 = pstmt5.executeQuery();
         
          while(rs5.next()){
        	
        	  sum_storage=rs5.getString(1);
        	 
            }
        }catch(SQLException se){
            se.printStackTrace();
        }finally{
            if(rs5 != null) rs5.close();
            if(pstmt5 != null) pstmt5.close();
            if(con5 != null) con5.close();
        }
  /*     sum_storage="select  sum(Storage)+256"+
     		 "from startup.gpu_bench, startup.recommend "+
     		 "where gpu_bench.gpu_num=recommend.gpu_num "+
     		 "and("+in_value+        		 
     		 ");"; 
 */
  
 %>
 <br>
 <div class="content2">
 <div class="content6">
 <b>
 [제품 추천 목록 입니다.]</b> <br><br>
<b> 1. 추천 CPU : </b> <b><span style="color:red"><%=cpu_name %></span></b> 이되 &nbsp&nbsp&nbsp&nbsp 
benchmark 점수는 <b><span style="color:red"><%=cpu_value %></span></b>이상인 제품을 사용을 권합니다. <br><br>

<b>2. 추천 그래픽카드(VGA) :</b> <b><span style="color:red"><%=gpu_name %></span></b> 이되 &nbsp&nbsp&nbsp&nbsp
benchmark 점수는<b><span style="color:red"> <%=gpu_value %></span></b> 이상인 제품을 사용을 권합니다.<br><br>

<b>3. 권장하는 램 값 :</b><b><span style="color:red"> <%=max_ram %> GB </span></b>입니다 .&nbsp&nbsp&nbsp&nbsp <br><br>

<b>4. 필요한 저장공간 :</b> <b><span style="color:red"><%=sum_storage %> GB </span></b> 입니다. (필요 용량 + 256gb) &nbsp&nbsp&nbsp&nbsp

<!-- <table class="type07">
  <thead>
  <tr>
    <th scope="cols">타이틀</th>
    <th scope="cols">내용</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <th scope="row">항목명</th>
    <td>내용이 들어갑니다.</td>
  </tr>
  <tr>
    <th scope="row">항목명</th>
    <td>내용이 들어갑니다.</td>
  </tr>
  <tr>
    <th scope="row">항목명</th>
    <td>내용이 들어갑니다.</td>
  </tr>
  </tbody>
</table> -->

</div>
 
 </div>
</div>
    
<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>

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
				background-color: #333333;
			}
			input[id="cb1"] {
				display: none;
			}
	</style>
	<script type="text/javascript">
	function selectAll(selectAll)  {
		  const checkboxes 
		       = document.getElementsByName('program');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		  })
		}
	</script>
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
     <div class="contenth"><h1><b> 프로그램별 추천 견적 </b></h1> </div>
   
   
   <div class="content0">
   <div class="content3">
    <input type='checkbox'
       name='all' 
       value='selectall'
       onclick='selectAll(this)'/> 전체 선택(두번 클릭시 체크박스 해제)      
   </div>
   <div class="content3"><hr width=100%></div>
   
 <form action='contact2'>
  <div class="content3"><b>[작업]</b></div>
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
  
   <b>[게임]</b>
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
  
    <div class="content3"><input class="btn-default" type ='submit' value="submit"> &nbsp;    </div>
   
 </form>
 
 

      
&nbsp;

</div>


</div>
    
<!-- 아래 요소들 전부 footer.jsp에 있음 -->
	<%@ include file="include/footer.jsp" %>
</body>

</html>
